#app1/models.py 
from django.db import models  
from django.contrib.auth.models import User

class Article(models.Model): 
    title = models.CharField(max_length=100) 
    slug = models.SlugField() 
    body = models.TextField() 
    date = models.DateTimeField(auto_now_add=True) 
    thumb = models.ImageField(default='default.png' ,blank=True)
    #Below we are associating author field to 'User'model which is imported above
    #on_delete=models.CASCADE is added because we are getting error
    #TypeError: __init__() missing 1 required positional argument: 'on_delete'
    author = models.ForeignKey(User,on_delete=models.CASCADE, default=None)

    #Below function is used to return real title name on page 
    #Without it we get Articleobject(1),Articleobject(2) and so on 
    def __str__(self): 
        return self.title 
    
    #Below function is to show snippet of the body column
    def snippet(self):
        return self.body[:50]+'...'