from django.shortcuts import render,redirect
from django.contrib.auth.forms import UserCreationForm,AuthenticationForm
from django.contrib.auth import login,logout


def signup_view(request):
    if request.method == 'POST':
        form = UserCreationForm(request.POST)
        #if form is valid ie pswd&login is ok then form.is_valid() return true
        if form.is_valid():
            user = form.save()
            #form.save will save the new user data into db
            #Now we can signup as new user
            #Now logged in user will return to article_list defined in urls.py of app1
            #form.save() gives the user_name to var user
            login(request, user)
            return redirect('app1:art_list')
    else:
        form = UserCreationForm()
    return render(request,'app2_account/signup.html',{'form':form})
    #return is not else loop as if user enter wrong info then it 
    #will come here ie fresh signup page.

def login_view(request):
    if request.method == 'POST':
        form = AuthenticationForm(data=request.POST)
        #In above we passed 'data' in bracket because data is not the  
        # 1st expected parameter here
        if form.is_valid():
            user = form.get_user()
            #When we login we get user in AuthenticationForm through get_user(), 
            # store it in var user
            login(request, user)
            #login() is inbuilt function which let us login the user
            #if 'next' exist in request.POST from login.html then go to 
            #create article page as 'next' parmtr contain '/app1/create/'
            if 'next' in request.POST:
                return redirect(request.POST.get('next')) 
            else:
                return redirect('app1:art_list')
    else:
        form = AuthenticationForm()
    return render(request,'app2_account/login.html',{'form':form})

def logout_view(request):
    if request.method == 'POST':
            logout(request)
            return redirect('app1:art_list')
            #Now to get POST request we need it to create the button
            #To see button on evry page add it on base_layout.
            
     