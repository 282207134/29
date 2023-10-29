import pymysql
import pandas as pd
# 导入pyecharts模块
from pyecharts.charts import Bar,Pie
from pyecharts import options as opts

#连接MySQL数据库
conn = pymysql.connect(host = "localhost",user = 'root',passwd = 'andy123456',db ='spider',charset="utf8")
# 八卦类
df1=pd.read_sql('select * from spider.eight_trigrams',con=conn)  #读取MySQL数据
# 搞笑类
df2= pd.read_sql('SELECT * FROM spider.funny_show',con=conn)   #读取MySQL数据
# 访谈类
df3=pd.read_sql('SELECT * FROM spider.interview',con=conn)   #读取MySQL数据
# 真人秀类
df4=pd.read_sql('SELECT * FROM spider.reality_show',con=conn)   #读取MySQL数据
# 选秀类
df5=pd.read_sql('SELECT * FROM spider.talent_show',con=conn)   #读取MySQL数据
# 脱口秀类
df6=pd.read_sql('SELECT * FROM spider.talk_show',con=conn)   #读取MySQL数据
# 情感类
df7=pd.read_sql('SELECT * FROM spider.emotion',con=conn)   #读取MySQL数据
conn.close()         # 关闭数据库连接
# 节目类型名称
x_data=['八卦类','搞笑类','访谈类','真人秀类','选秀类','脱口秀类','情感类']
# 各类型节目的数量
y_data=[int(df1['name'].count()),int(df2['name'].count()),int(df3['name'].count()),int(df4['name'].count()),
        int(df5['name'].count()),int(df6['name'].count()),int(df7['name'].count())]

# 饼形图用的数据格式是[(key1,value1),(key2,value2)]，所以先使用zip函数将二者进行组合
data=[list(z) for z in zip(x_data, y_data)]
# 绘制饼形图
pie=Pie()   #创建饼形图
# 为饼形图添加数据
pie.add(series_name='类别',    # 序列名称
        data_pair=data)        # 数据
pie.set_global_opts(title_opts=opts.TitleOpts(title="所有类型节目数量占比分析 饼状图",
                                              pos_left="center"), # 饼形图标题居中
                    # 不显示图例
                    legend_opts=opts.LegendOpts(is_show=False))
# 序列标签
pie.set_series_opts(label_opts=opts.LabelOpts(),tooltip_opts=opts.TooltipOpts(
    trigger="item", formatter="{a} <br/>{b}: {c} ({d}%)"))

# 渲染图表到HTML文件，存放在程序所在目录下
pie.render("../templates/所有类型节目数量占比饼状图.html")




