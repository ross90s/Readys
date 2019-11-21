from django.shortcuts import render
from django.http import HttpResponse,HttpResponseRedirect
from .models import TodoItem
# Create your views here.

#whatviews function is to get the values from db and show on the todo.html 
def whatviews(request):
    all_todo_items = TodoItem.objects.all()
    return render(request, 'todo.html',{'all_items':all_todo_items})

# below function is to add new content 
# POST is used to POST it on the web page
# save() function save it 
# Last line of function is for redirecting back to the views page which is our home page for this app 
def addTodo(request):
    new_item = TodoItem(content = request.POST['content'])
    new_item.save()
    return HttpResponseRedirect('/views/')

# Below function is used to delete the content 
# todo_id is 1 or 2 but any case send this info to deleteTodo function
# delete() function to delete the content
# Like previous function redirect back to home page 
def deleteTodo(request, todo_id):
    delete_item = TodoItem.objects.get(id=todo_id)
    delete_item.delete()
    return HttpResponseRedirect('/views/')
