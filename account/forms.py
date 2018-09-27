from django import forms


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
        label = '',
        required=True,
        max_length=100,
        widget=forms.PasswordInput(
            attrs={'class': 'form-control',
            'placeholder': 'Password'}))
