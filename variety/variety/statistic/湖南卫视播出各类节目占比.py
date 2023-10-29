import pymysql
import pandas as pd
# 导入pyecharts模块
from pyecharts.charts import Bar,Pie
from pyecharts import options as opts

#连接MySQL数据库
conn = pymysql.connect(host = "localhost",user = 'root',passwd = 'andy123456',db ='spider',charset="utf8")
# 八卦类
df1=pd.read_sql('select * from spider.eight_trigrams where broadcast="湖南卫视"',con=conn)  #读取MySQL数据
# 搞笑类
df2= pd.read_sql('SELECT * FROM spider.funny_show where broadcast="湖南卫视"',con=conn)   #读取MySQL数据
# 访谈类
df3=pd.read_sql('SELECT * FROM spider.interview where broadcast="湖南卫视"',con=conn)   #读取MySQL数据
# 真人秀类
df4=pd.read_sql('SELECT * FROM spider.reality_show where broadcast="湖南卫视"',con=conn)   #读取MySQL数据
# 选秀类
df5=pd.read_sql('SELECT * FROM spider.talent_show where broadcast="湖南卫视"',con=conn)   #读取MySQL数据
# 脱口秀类
df6=pd.read_sql('SELECT * FROM spider.talk_show where broadcast="湖南卫视"',con=conn)   #读取MySQL数据
# 情感类
df7=pd.read_sql('SELECT * FROM spider.emotion where broadcast="湖南卫视"',con=conn)   #读取MySQL数据
conn.close()         # 关闭数据库连接
# 数据合并
dfs=pd.concat([df1,df2,df3,df4,df5,df6,df7])
# 所有平台播出节目数量占比
df_groupby=dfs.groupby('name').size().reset_index()
print(df_groupby)
x_data=df_groupby['name']
y_data=df_groupby[0]
# 饼形图用的数据格式是[(key1,value1),(key2,value2)]，所以先使用zip函数将二者进行组合
data=[list(z) for z in zip(x_data, y_data)]

# 绘制饼形图
pie=Pie()   #创建饼形图
# 为饼形图添加数据
pie.add(series_name='类别',    # 序列名称
        data_pair=data)        # 数据
pie.set_global_opts(title_opts=opts.TitleOpts(title="MRTV2播出各类节目数量占比",
                                              pos_left="center"), # 饼形图标题居中
                    # 不显示图例
                    legend_opts=opts.LegendOpts(is_show=False))
# 序列标签
pie.set_series_opts(label_opts=opts.LabelOpts(),tooltip_opts=opts.TooltipOpts(
    trigger="item", formatter="{a} <br/>{b}: {c} ({d}%)"))

# 渲染图表到HTML文件，存放在程序所在目录下
pie.render("../templates/湖南卫视播出各类节目占比.html")

