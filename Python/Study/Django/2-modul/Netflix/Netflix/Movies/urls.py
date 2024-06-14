from django.urls import path, include
from rest_framework.routers import DefaultRouter
from Movies.views import MovieViewSet, ActorViewSet, MovieActorAPIView, CommentViewSet, terms
from rest_framework.authtoken.views import obtain_auth_token

router = DefaultRouter()
# prefix is a path to given ViewSet
router.register('movies', MovieViewSet, basename='movies')
router.register('actors', ActorViewSet, basename='actors')
router.register('comments', CommentViewSet, basename='comments')

urlpatterns = [
    #path("hello-world/", HelloWorldView.as_view(), name='hello-word'),
    #path('actor/', ActorAPIView.as_view(), name='actor'),

    path('', include(router.urls), name='api-root'),
    path('movies/<int:id>/actors/', MovieActorAPIView.as_view({'get': 'list'}), name='movie--actors'),
    path('auth/token/', obtain_auth_token, name='auth-token'),
    path('terms/', terms, name='terms'),
    # path('comments/', CommentApiView.as_view(), name='comment-create'),
]
