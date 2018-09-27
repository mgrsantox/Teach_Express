from django.shortcuts import render, get_object_or_404
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
from django.views.generic import ListView, TemplateView
from django.core.mail import send_mail
from django.db.models import Count
from taggit.models import Tag
from .models import Post, Comment
from .forms import EmailPostForm, CommentForm
from django.db.models import Q
from django.http import HttpResponseRedirect

# for deleting unused tag from the list of the tags


def remove_all_tags_without_objects():
    for tag in Tag.objects.all():
        if tag.taggit_taggeditem_items.count() == 0:
            tag.delete()
        else:
            pass


def post_list(request, tag_slug=None):
    remove_all_tags_without_objects()
    latest_post = Post.published.all().order_by(
        "-publish")[:5]  # This is also use less
    tag_names = Tag.objects.all().order_by('name')
    object_list = Post.published.all()

    # This code is for the search query
    query = request.GET.get("q")
    if query:
        object_list = object_list.filter(Q(title__icontains=query) |
                                         Q(body__icontains=query)
                                         )

    tag = None
    if tag_slug:
        tag = get_object_or_404(Tag, slug=tag_slug)
        object_list = object_list.filter(tags__in=[tag])

    paginator = Paginator(object_list, 3)  # 3 posts in each page
    page = request.GET.get('page')
    try:
        posts = paginator.page(page)
    except PageNotAnInteger:
        # If page is not an integer deliver the first page
        posts = paginator.page(1)
    except EmptyPage:
        # If page is out of range deliver last page of results
        posts = paginator.page(paginator.num_pages)

    # print(request.GET)
    # search = Post.objects.all()

    return render(request,
                  'blog/index.html',
                  {'page': page,
                   'posts': posts,
                   'tag': tag,
                   'tag_name': tag_names,
                   'latest_post': latest_post,  # This line is useless
                   })


def post_detail(request, year, month, day, post):    
    tag_names = Tag.objects.all().order_by('name')
    latest_post = Post.published.all().order_by(
        "-publish")[:5]  # This is also use less
    post = get_object_or_404(Post, slug=post,
                             status='published',
                             publish__year=year,
                             publish__month=month,
                             publish__day=day)

    # List of active comments for this post
    comments = post.comments.filter(active=True)

    new_comment = None

    if request.method == 'POST':
        # A comment was posted
        comment_form = CommentForm(data=request.POST)
        if comment_form.is_valid():
            # Create Comment object but don't save to database yet
            new_comment = comment_form.save(commit=False)
            # Assign the current post to the comment
            new_comment.post = post
            # Save the comment to the database
            new_comment.save()
            return HttpResponseRedirect('')
    else:
        comment_form = CommentForm()

    # List of similar posts
    post_tags_ids = post.tags.values_list('id', flat=True)
    similar_posts = Post.published.filter(tags__in=post_tags_ids)\
                                  .exclude(id=post.id)
    similar_posts = similar_posts.annotate(same_tags=Count('tags'))\
        .order_by('-same_tags', '-publish')[:4]

    return render(request,
                  'blog/post_detail.html',
                  {'post': post,
                   'comments': comments,
                   'new_comment': new_comment,
                   'comment_form': comment_form,
                   'similar_posts': similar_posts,
                   # This line is useless because i didn't use it for the latest post
                   'latest_post': latest_post,
                   'tag_name': tag_names})


class PostListView(ListView):
    queryset = Post.published.all()
    context_object_name = 'posts'
    paginate_by = 3
    template_name = 'blog/index.html'


def post_share(request, post_id):
    # Retrieve post by id
    post = get_object_or_404(Post, id=post_id, status='published')
    sent = False

    if request.method == 'POST':
        # Form was submitted
        form = EmailPostForm(request.POST)
        if form.is_valid():
            # Form fields passed validation
            cd = form.cleaned_data
            post_url = request.build_absolute_uri(
                post.get_absolute_url())
            subject = '{} ({}) recommends you reading "{}"'.format(
                cd['name'], cd['email'], post.title)
            message = 'Read "{}" at {}\n\n{}\'s comments: {}'.format(
                post.title, post_url, cd['name'], cd['comments'])
            send_mail(subject, message, 'admin@myblog.com',
                      [cd['to']])
            sent = True
    else:
        form = EmailPostForm()
    return render(request, 'blog/share.html', {'post': post,
                                               'form': form,
                                               'sent': sent})


