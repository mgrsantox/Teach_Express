from django import forms
from .models import Comment


class EmailPostForm(forms.Form):
    name = forms.CharField(max_length=25)
    email = forms.EmailField()
    to = forms.EmailField()
    comments = forms.CharField(required=False,
                               widget=forms.Textarea(
                                   attrs={
                'style': 'border-color: blue;',
                'placeholder': 'Write your messages here'
            }
                               ))


class CommentForm(forms.ModelForm):
    class Meta():
        model = Comment
        fields = ('name', 'email', 'body')
