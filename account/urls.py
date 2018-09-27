from os import name

from django.contrib.auth import views as auth_views
from django.urls import path

from .views import dashboard, user_login


app_name = 'account'

urlpatterns = [
    # path('login/', user_login, name='login')
    path('login/', auth_views.LoginView.as_view(), name='login'),
    path('logout/', auth_views.LogoutView.as_view(), name='logout'),
    path('admin/dashboard/', dashboard, name='dashboard'),
    path('password_change/', auth_views.PasswordChangeView.as_view(),name='password_change'),
    path('password_change/done/', auth_views.PasswordChangeDoneView.as_view(), name='password_change_done'),
<<<<<<< HEAD
]
=======
]
>>>>>>> fea0e1fa1796ae441ac202399d3cc1153f0244c1
