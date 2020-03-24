from django.shortcuts import render
import requests
import sys
from subprocess import run,PIPE


def button(request):
    return render(request,'home.html')

'''def output(request):
    data=requests.get("https://www.google.com/")
    data=data.text
    #print(data)
    return render(request,'home.html',{'data':data})
'''
def external(request):
    inp = request.POST.get('param')
    out = run([sys.executable,'replace_string.py',inp],shell=False,stdout=PIPE)
    #print(out)
    return render(request,'home.html',{'data1':out.stdout.decode('utf-8')})


def start_notif(request):
    inp1 = request.POST.get('site')
    usr1 = request.POST.get('user')
    psw1 = request.POST.get('paswd')
    out1 = run([sys.executable,'enable.py',inp1,usr1,psw1],shell=False,stdout=PIPE)
    #print(out)
    return render(request,'home.html')

def stop_notif(request):
    inp2 = request.POST.get('site')
    usr2 = request.POST.get('user')
    psw2 = request.POST.get('paswd')
    out2 = run([sys.executable,'disable.py',inp2,usr2,psw2],shell=False,stdout=PIPE)
    #print(out)
    return render(request,'home.html')
