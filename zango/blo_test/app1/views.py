#app1/view.py
from django.shortcuts import render, redirect
from .models import Article  
from django.http import HttpResponse
from django.contrib.auth.decorators import login_required
from . import forms

def art_list(request): 
    art=Article.objects.all().order_by('date') 
    #art variable represent to all objects in class Article or Article table in db, 
    #order_by will sort list by date variable 
    #date is columnname defined in models.py 
    return render(request,'app1/app1.html',{'var1':art})
    #{'var1':art} in this dictionary, var1 can be any variable name.But be careful
    # that we need to use var1 in app1.html to get every element of the db table
    #'art' is above defined var, This dictionary will return the db table to app1.html 

#Below slug is captued from article_detail urls.py
def article_detail(request,slug):
    #return HttpResponse(slug)
    art=Article.objects.get(slug=slug)
    return render(request,'app1/detail.html',{'j':art})

def test(request):
    return render(request,'app1/test.html')

#Below is decorator, if user is not logged in then art_create() ie url http://127.0.0.1:8000/app1/create
#will redirect to login page ie "/app2_account/login/" 
#If you are looged in same url will redirect to 'app1/article_create.html'
#so that, only logged in user can see 'article_create.html'
@login_required(login_url="/app2_account/login/")
def art_create(request):
    #For POST request ie submitting form we have 'if' part & 'else' part is for GET request
    #submitting all fields(ie POST request) of form we came here from article_create.html
    if request.method == 'POST':
        #Below 'request.FILES' is uploaded files in form
        form = forms.CreateArticle(request.POST, request.FILES)
        #check if inserted info in form is valid
        if form.is_valid():
            #return article to db
            instance = form.save(commit=False) #False is for Dont commit 
            instance.author = request.user
            instance.save()
            return redirect('app1:art_list')
    else:        
        #Below 'form' var contain each new entry in articles ie all fields in forms.py 
        form = forms.CreateArticle()
    return render(request,'app1/article_create.html',{'form':form})