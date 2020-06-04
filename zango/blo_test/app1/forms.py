from django import forms
from . import models

#CreateArticle class inheriting its properties 
#from inbuilt class forms.ModelForm
class CreateArticle(forms.ModelForm):
    class Meta:
        #To create fields in form import
        #class Article from models.py 
        model = models.Article
        fields = ['title','slug','body','thumb']
        #And thats it, we created our model form
        #Now we can use it in views.py file
