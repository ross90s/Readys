from django.conf.urls import url 
#from . import views 
from .views import art_list,article_detail,test,art_create

app_name = 'app1'

urlpatterns = [ 
    #path('', views.button, name='button'), 
    url(r'^$', art_list, name="art_list"),
    #It is vry imp to add 'create' before slug url,otherwise django will search 
    # slug naming 'create' which is useless
    url(r'^create/$', art_create, name='create'),
    url(r'^(?P<slug>[\w-]+)/$' , article_detail, name="article_detail"),
    url(r'^test$', test, name='test'),
] 
#Regex info
#^ is start
#$ is end
#(?P) is name cpturing group
#<> is string we want to capture
#What can be this slug in this url
#\w is for it can be any kind of letter
#-  dash/hyphen can be included in url
#+ is for ,[\w-] can be of any length
#/ will be added at the end


