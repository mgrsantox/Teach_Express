from django.http import HttpResponse
from blog.models import Post
from django.conf import settings
from django.contrib.auth import authenticate, login
from django.contrib.auth.decorators import login_required
from django.contrib.auth.password_validation import password_changed
from django.shortcuts import redirect, render

from .forms import LoginForm, UserRegistrationForm


def user_login(request):
    if request.method == 'POST':
        form = LoginForm(request.POST)
        if form.is_valid():
            cd = form.cleaned_data
            user = authenticate(request,
                                username=cd['username'],
                                password=cd['password'])
            if user is not None:
                if user.is_active:
                    login(request, user)
                    return HttpResponse('Authenticated successfully')
                    # return render(request, 'account/index.html', {})
                else:
                    return HttpResponse('Disabled account')
            else:
                return HttpResponse('Invalid login')
    else:
        form = LoginForm()
    return render(request, 'account/login.html', {'form': form})


@login_required
def dashboard(request):
    if request.user.is_superuser:
        return render(request, 'account/index.html', {'section': 'dashboard'})
    else:
        return redirect('/')


@login_required
def new_user_register(request):
    if request.user.is_superuser:
        if request.method == 'POST':
            user_form = UserRegistrationForm(request.POST)
            if user_form.is_valid():
                new_user = user_form.save(commit=False)
                new_user.set_password(
                    user_form.cleaned_data['password']
                )
                new_user.save()

                return render(request,
                            'account/register_done.html',
                            {
                                'new_user': new_user
                            })
        else:
            user_form = UserRegistrationForm()

        return render(request,
                    'account/register.html',
                    {'user_form': user_form}
                    )

    else:
        return redirect('/')


@login_required
def view_all_user(request):
    if request.user.is_superuser:
        return render(request, 'account/all_user.html', {})
    else:
        return redirect('/')


@login_required
def add_new_post(request):
    if request.user.is_superuser:
        return render(request, 'account/add_new_post.html', {})
    else:
        return redirect('/')


@login_required
def view_all_post_list(request):
    if request.user.is_superuser:
        posts = Post.objects.all()
        return render(request, 'account/all_post.html', {'posts': posts})
    else:
        return redirect('/')
