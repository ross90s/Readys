from django.shortcuts import render
import requests

def button(request):
    return render(request,'home.html')

def output(request):
    data=requests.get("https://www.loksatta.com/")
    data=data.text
    print(data)
    return render(request,'home.html',{'data':data})
