from django.shortcuts import render
from .models import Article, Comment
from django.db.models import Count

# Create your views here.
def index_1(request):
    # articles = Article.objects.order_by('-pk')
    #article을 가져올 때 결과에 댓글의 개수를 같이 가져옴 
    articles = Article.objects.annotate(Count('comment')).order_by('-pk')
    context = {
        'articles': articles,
    }
    return render(request, 'articles/index_1.html', context)


def index_2(request):
    #article을 가져올 때 user까지 결과에 추가한다. 
    articles = Article.objects.select_related('user').order_by('-pk')
    context = {
        'articles': articles,
    }
    return render(request, 'articles/index_2.html', context)


def index_3(request):
    # articles = Article.objects.order_by('-pk')
    #article을 조회할 때 comment_set 역참조를 동시에 진행 
    articles= Article.objects.prefetch_related('comment_set')
    context = {
        'articles': articles,
    }
    return render(request, 'articles/index_3.html', context)

from django.db.models import Prefetch
def index_4(request):
    #처음에 comment_set 참조하고, user역참조 같이진행 
    articles = Article.objects.prefetch_related(Prefetch('comment_set',
    queryset=Comment.objects.select_related('user'))).order_by('-pk')
    context = {
        'articles': articles,
    }
    return render(request, 'articles/index_4.html', context)
