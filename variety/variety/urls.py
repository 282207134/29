from variety import views
from django.urls import path


urlpatterns = [
    # 首页
    path('', views.index, name='index'),
    path('variety/<int:id>', views.detail, name='detail'),
    path('lists/', views.lists, name='lists'),
    path('search/', views.search, name='search'),
    path('history/',views.history,name='history'),
    path('collect/',views.collect,name='collect'),
    path('statistics/',views.statistics,name='statistics'),
    path('chart/<type>',views.chart,name='chart'),
]