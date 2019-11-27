from django.shortcuts import render
import requests
import sys
from subprocess import run,PIPE

def button(request):
    return render(request,'home.html')

def output(request):
    data=requests.get("https://www.google.com/")
    data=data.text
    #print(data)
    return render(request,'home.html',{'data':data})

def external(request):
    inp = request.POST.get('param')
    out = run([sys.executable,'test.py',inp],shell=False,stdout=PIPE)
    #print(out)
    return render(request,'home.html',{'data1':out.stdout.decode('utf-8')})
