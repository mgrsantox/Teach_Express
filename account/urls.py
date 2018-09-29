from os import name

from django.contrib.auth import views as auth_views
from django.urls import path

from .views import view_all_post_list, dashboard, new_user_register, user_login, view_all_user, add_new_post


app_name = 'account'

urlpatterns = [
    # path('login/', user_login, name='login')
    path('login/', auth_views.LoginView.as_view(), name='login'),
    path('logout/', auth_views.LogoutView.as_view(), name='logout'),
    path('admin/dashboard/', dashboard, name='dashboard'),
    path('password_change/', auth_views.PasswordChangeView.as_view(),name='password_change'),
    path('password_change/done/', auth_views.PasswordChangeDoneView.as_view(), name='password_change_done'),
    path('account/user', view_all_user, name='all_user'),
    path('account/new/user/', new_user_register, name='new_user_register'),
    path('dashboard/post', view_all_post_list, name='all_post_list'),
    path('dashboard/new/post', add_new_post, name='new_post'),
]
