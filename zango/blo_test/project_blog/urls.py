from django.contrib import admin 
from django.urls import include, path 
from .views import homepage
from django.contrib.staticfiles.urls import staticfiles_urlpatterns
from django.conf import settings
from django.conf.urls.static import static
#Below from app1 dir views.py is imported and name given as app1_views
#as not to confuse betn multiple views.py files.
from app1 import views as  app1_views

urlpatterns = [
    path('', app1_views.art_list, name="home"),
    path('app2_account/', include('app2_account.urls')),
    path('app1/', include('app1.urls')),
    path('admin/', admin.site.urls),
] 

urlpatterns += staticfiles_urlpatterns()
#Below we need 2 properties(MEDIA_URL&MEDIA_ROOT) what we added in settings.py
urlpatterns += static(settings.MEDIA_URL,document_root=settings.MEDIA_ROOT)
