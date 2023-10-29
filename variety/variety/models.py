from django.db import models

# 地区
Region = [
    (0,'内地'),
    (1,'香港'),
    (2,'台湾'),
    (3,'欧美'),
    (4,'韩国'),
    (5,'日本'),
    (6,'其他')
]
# 综艺类型
Type = [
    (0,'脱口秀'),
    (1,'真人秀'),
    (2,'搞笑'),
    (3,'选秀'),
    (4,'情感'),
    (5,'访谈'),
    (6,'音乐'),
    (7,'职场'),
    (8,'体育'),
    (9,'其他')
]
# 年份
Year = [
    ('2010','2010'),
    ('2011','2011'),
    ('2012','2012'),
    ('2013','2013'),
    ('2014','2014'),
    ('2015','2015'),
    ('2016','2016'),
    ('2017','2017'),
    ('2018','2018'),
    ('2019','2019'),
    ('2020','2020'),
    ('2021','2021')
]
Hot = [
    (False,'否'),
    (True,'是')
]
Recommend = [
    (False,'否'),
    (True,'是')
]

class Variety(models.Model):
    # 综艺表信息
    id = models.AutoField(primary_key=True)
    variety_name = models.CharField(max_length=100,verbose_name='综艺名')
    type = models.SmallIntegerField(choices=Type,blank=False,verbose_name='类型')
    year = models.CharField(choices=Year,max_length=4,verbose_name='年代')
    region = models.SmallIntegerField(choices=Region,blank=False,verbose_name='地区')
    ranking = models.IntegerField(verbose_name='全网排名')
    platform = models.CharField(max_length=100,default='',verbose_name='播出平台')
    star = models.CharField(max_length=200,verbose_name='明星')
    review = models.TextField(max_length=500,null=True,verbose_name='简介')
    is_hot = models.BooleanField(choices=Hot,default=False,verbose_name='是否热门')
    is_recommended = models.BooleanField(choices=Recommend,default=False,verbose_name='是否推荐')
    image = models.ImageField(upload_to='variety', verbose_name='图片', null=True)

    class Meta:
        db_table = 'variety'
        verbose_name = '综艺管理'
        verbose_name_plural = '综艺管理'

    def __str__(self):
        return self.variety_name

class Video(models.Model):
    # 视频信息
    id = models.AutoField(primary_key=True)
    title = models.CharField(max_length=100,verbose_name='标题')
    desc = models.CharField(max_length=255,verbose_name='描述',default='')
    image = models.ImageField(upload_to='video', verbose_name='图片', null=True)
    video_url = models.CharField(max_length=300,verbose_name='视频链接')
    release_date = models.DateField(verbose_name='上映日期')
    # 关联Variety表
    variety = models.ForeignKey(Variety,on_delete=models.CASCADE,related_name='video',verbose_name='所属综艺')

    class Meta:
        db_table = 'video'
        verbose_name = '视频管理'
        verbose_name_plural = '视频管理'

    def __str__(self):
        return self.title

class Slide(models.Model):
    # 幻灯片
    id = models.AutoField(primary_key=True)
    title = models.CharField(max_length=100,verbose_name='名称')
    desc = models.CharField(max_length=100,verbose_name='描述',default='')
    ranking = models.IntegerField(verbose_name='排序')
    image = models.ImageField(upload_to='slide', verbose_name='图片', null=True)
    jump_url = models.CharField(max_length=255,verbose_name='链接地址',default='')
    created_date = models.DateTimeField(auto_now_add=True, verbose_name='创建时间')
    modified_date = models.DateTimeField(auto_now=True, null=True, blank=True, verbose_name='更新时间')

    class Meta:
        db_table = 'slide'
        verbose_name = '幻灯片管理'
        verbose_name_plural = '幻灯片管理'

    def __str__(self):
        return self.title

class Star(models.Model):
    # 明星
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=100,verbose_name='名称')
    ranking = models.IntegerField(verbose_name='排序')
    image = models.ImageField(upload_to='star', verbose_name='图片', null=True)
    jump_url = models.CharField(max_length=255,verbose_name='链接地址',default='')
    created_date = models.DateTimeField(auto_now_add=True, verbose_name='创建时间')
    modified_date = models.DateTimeField(auto_now=True, null=True, blank=True, verbose_name='更新时间')

    class Meta:
        db_table = 'star'
        verbose_name = '明星管理'
        verbose_name_plural = '明星管理'

    def __str__(self):
        return self.name

class HotWord(models.Model):
    # 热词
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=100,verbose_name='名字')
    ranking = models.IntegerField(verbose_name='排序')
    jump_url = models.CharField(max_length=255,verbose_name='链接地址',default='')
    created_date = models.DateTimeField(auto_now_add=True, verbose_name='创建时间')
    modified_date = models.DateTimeField(auto_now=True, null=True, blank=True, verbose_name='更新时间')

    class Meta:
        db_table = 'hot_word'
        verbose_name = '热词管理'
        verbose_name_plural = '热词管理'

    def __str__(self):
        return self.name