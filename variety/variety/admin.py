from django.contrib import admin
from variety.models import Variety,Video,Slide,Star,HotWord


class VarietyAdmin(admin.ModelAdmin):
    # 显示列表
    list_display = ('variety_name','type','region','year')
    # 右侧筛选条件
    list_filter = ('region','type')
    # 查询字段
    search_fields = ('variety_name', 'type')


class VideoAdmin(admin.ModelAdmin):
    # 显示列表
    list_display = ('get_variety_name','title','release_date')
    # 查询字段
    search_fields = ('title',)
    # 获取视频所属的综艺名
    def get_variety_name(self, obj):
        return obj.variety.variety_name
    # 列名的描述信息
    get_variety_name.short_description = '综艺名'

class SlideAdmin(admin.ModelAdmin):
    # 显示列表
    list_display = ('title','ranking','desc')
    # 查询字段
    search_fields = ('title',)

class StarAdmin(admin.ModelAdmin):
    # 显示列表
    list_display = ('name','ranking')
    # 查询字段
    search_fields = ('name',)

class HotWordAdmin(admin.ModelAdmin):
    # 显示列表
    list_display = ('name','ranking')
    # 查询字段
    search_fields = ('name',)

admin.site.register(Variety,VarietyAdmin)
admin.site.register(Video,VideoAdmin)
admin.site.register(Slide,SlideAdmin)
admin.site.register(Star,StarAdmin)
admin.site.register(HotWord,HotWordAdmin)