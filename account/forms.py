from django import forms
from django.contrib.auth.models import User

# This is for creating custom login form


class LoginForm(forms.Form):
    username = forms.CharField(
        required=True,
        max_length=100,
        label='',
        widget=forms.TextInput(
            attrs={'class': 'form-control',
                   'placeholder': 'Username'
                   }))
    password = forms.CharField(
        label='',
        required=True,
        max_length=100,
        widget=forms.PasswordInput(
            attrs={'class': 'form-control',
                   'placeholder': 'Password'}))


# For register new user
class UserRegistrationForm(forms.ModelForm):
    password = forms.CharField(label='Password',
                               widget=forms.PasswordInput)
    password2 = forms.CharField(label='Confirm Password',
                                widget=forms.PasswordInput)

    class Meta(object):
        model = User
        fields = ['username', 'first_name', 'email']

    def clean_password2(self):
        cd = self.cleaned_data
        if cd['password'] != cd['password2']:
            raise forms.ValidationError('Password Doesn\'t match')
        return cd['password2']