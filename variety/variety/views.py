from django.shortcuts import render
from django.core.paginator import Paginator
from django.contrib.auth.decorators import login_required
from django.http import JsonResponse

from variety.models import Variety, Slide,Region,Year,Type,Star,HotWord
from django.db import connection

def index(request):
    """
    首页
    """
    # 获取幻灯片
    slide = Slide.objects.order_by('ranking')[:10]
    # 热门综艺
    hot_variety = Variety.objects.filter(is_hot=True).order_by("-year")[:12]
    hot = []
    for item in hot_variety:
        last = item.video.all().last()
        if last:
            hot.append(last)
    # 推荐综艺
    recommend_variety = Variety.objects.filter(is_recommended=True).order_by("-year")[:12]
    recommend = []
    for item in recommend_variety:
        last = item.video.all().last()
        if last:
            recommend.append(last)
    return render(request, 'index.html',{'slide':slide,'hot':hot,'recommend':recommend,'type':Type[:8],'region': Region, })


def detail(request, id):
    """
    详情页
    :param request:
    :param id: 综艺id
    :return:
    """
    try:
        variety = Variety.objects.get(pk=id) # 根据id获取对象
        # 实现浏览记录功能
        cookies = request.COOKIES.get('variety_cookies','')
        if cookies == '':
            # 第一次浏览综艺详情，本地还没有生成综艺的cookie信息,那么直接将这个综艺的id存到cookie。
            cookies = str(id)+';'       # '1;2;3;'
        elif cookies != '':
            # 说明不是第一次浏览综艺详情，本地已经存在综艺的cookie信息；
            # 从'1;2;3;'这个cookie字符串中，取出每一个综艺的id
            variety_id_list = cookies.split(';')  # ['1','2','3']
            if str(id) in variety_id_list:
                # 说明当前这个商品记录已经存在了，将这个记录从cookie中删除
                variety_id_list.remove(str(id))

            variety_id_list.insert(0,str(id))
            if len(variety_id_list) >= 6:
                variety_id_list = variety_id_list[:5]
            cookies = ';'.join(variety_id_list)
    except Variety.DoesNotExist:             # 如果不存在，返回404页面
        return render(request, '404.html')
    response = render(request,'detail.html',{'variety': variety,'region':Region,'year':Year,'type':Type})
    response.set_cookie('variety_cookies', cookies)
    return response

def lists(request):
    # 获取参数
    tag = request.GET.get('tag', '全部')
    region = request.GET.get('region', '全部')
    ranking = request.GET.get('ranking', '最近热映')
    condition_dict = {}         # 筛选条件字典
    if tag != '全部':           # 筛选类型
        condition_dict['type'] = tag
    if region != '全部':        # 筛选地区
        condition_dict['region'] = region
    if ranking == 'rank_hot':  # 筛选热门综艺，后台设置是否热门
        condition_dict['is_hot'] = True
        variety_list = Variety.objects.filter(**condition_dict)
    else:  # 根据排名进行排序
        variety_list = Variety.objects.filter(**condition_dict).order_by('ranking')
    # 分页功能实现
    paginator = Paginator(variety_list, 18)     # 设置每页显示条数
    page_number = request.GET.get('page')       # 获取当前页面
    page_obj = paginator.get_page(page_number)  # 获取分页对象
    page_range = paginator.page_range           # 分页迭代对象

    return render(request, 'lists.html', {'type':Type,'region': Region, 'page_obj': page_obj, 'page_range': page_range})

def search(request):
    keyword = request.GET.get('keyword', '')
    variety_list = Variety.objects.filter(variety_name__contains=keyword)
    # 分页效果
    paginator = Paginator(variety_list, 8)
    page_number = request.GET.get('page')
    page_obj = paginator.get_page(page_number)
    page_range = paginator.page_range
    return render(request, 'search.html',
                  {'keyword': keyword, 'page_obj': page_obj, 'page_range': page_range,'region':Region,'type':Type})

def history(request):
    cookies = request.COOKIES.get('variety_cookies','')
    variety_list = []
    if cookies != '':
        variety_id_list = cookies.split(';')
        for variety_id in variety_id_list:
            if variety_id:
                variety = Variety.objects.get(id=int(variety_id))
                variety_list.append(variety)
            else:
                continue
    return render(request,'history.html',{'variety_list':variety_list})

@login_required
def collect(request):
    return render(request,'collect.html')

def statistics(request):
    # 统计
    # 获取明星
    stars = Star.objects.all().order_by('ranking')[:5]
    # 获取热词
    hot_words = HotWord.objects.all().order_by('ranking')[:5]
    return render(
        request,
        'statistics.html',
        context={
            'stars': stars,
            'hot_words': hot_words
        })

def dictfetchall(cursor):
    "将获取到的行数据以字典方式展示"
    desc = cursor.description
    return [
        dict(zip([col[0] for col in desc], row))
        for row in cursor.fetchall()
    ]

def transfor_type(data):
    "将类型由数字转化为名称"
    l = []
    for i in data:
        for j in Type:
            if i['name'] == j[0]:
                l.append({'name':j[1],'value':i['value']})
    return l

def chart(request,type):
    "生成图表数据"
    data = {}
    # 示例数据
    # data['data'] = [
    #     {'value':235, 'name':'视频广告'},
    #     {'value':274, 'name':'联盟广告'},
    #     {'value':310, 'name':'邮件营销'},
    #     {'value':335, 'name':'直接访问'},
    #     {'value':400, 'name':'搜索引擎'}
    # ]
    cursor = connection.cursor()

    if type == 'all-platforms':  # 所有平台综艺占比
        cursor.execute("select platform as name,count(*) as value from variety where platform != '' group by platform")
        variety = dictfetchall(cursor)
        data['data'] = variety
    elif type == 'all-categories':  # 所有类型综艺占比
        cursor.execute("select type as name,count(*) as value from variety group by type")
        variety = dictfetchall(cursor)
        data['data'] = transfor_type(variety)
    elif type == 'MRTV2':  # 湖南卫视各类型综艺占比
        cursor.execute("select type as name,count(*) as value from variety where platform = 'MRTV2' GROUP BY type;")
        variety = dictfetchall(cursor)
        data['data'] = transfor_type(variety)
    # 返回json格式数据
    return JsonResponse(data)