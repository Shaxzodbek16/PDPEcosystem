from django.http import Http404, HttpResponse
from rest_framework.authentication import TokenAuthentication
from rest_framework.response import Response
from rest_framework import filters, status, viewsets
from rest_framework.viewsets import ModelViewSet
from Movies.models import Movie, Actor, Comment
from Movies.serializers import MovieSerializer, ActorSerializer, CommentSerializer
from rest_framework.decorators import action
from rest_framework.permissions import IsAuthenticated
from django_filters.rest_framework import DjangoFilterBackend


# class HelloWorldView(APIView):
#
#     def get(self, request):
#         return Response({'message': 'Hello, World!'})
#
#     def post(self, request):
#         massage = f"Hi, {request.data['name']}. Welcome to API"
#         return Response({'SayHello': massage})

# class MovieAPIView(APIView):
#
#     def get(self, request):
#         movies = Movie.objects.all()
#         serializer = MovieSerializer(movies, many=True)
#         return Response(serializer.data)
#
#     def post(self, request):
#         serializer = MovieSerializer(data=request.data)
#         serializer.is_valid(raise_exception=True)
#         serializer.save()
#         return Response(serializer.data)
#
#
# class ActorAPIView(APIView):
#
#     def get(self, request):
#         actors = Actor.objects.all()
#         serializer = ActorSerializer(actors, many=True)
#         return Response(serializer.data)
#
#     def post(self, request):
#         serializers = ActorSerializer(data=request.data)
#         serializers.is_valid(raise_exception=True)
#         serializers.save()
#         return Response(serializers.data)


class MovieViewSet(ModelViewSet):
    queryset = Movie.objects.all()
    serializer_class = MovieSerializer
    filter_backends = (
        DjangoFilterBackend,
        filters.SearchFilter,
        filters.OrderingFilter,
    )
    filterset_fields = ("genre",)
    search_fields = ("name", "year", "actors__name")
    ordering_fields = ("imdb",)

    @action(detail=True, methods=["POST"], url_path="add-actor")
    def add_actors(self, request, *args, **kwargs):
        movie = self.get_object()
        actor_id = request.data.get("id")
        if not actor_id:
            return Response({"error": "Actor id berilmagan"})
        try:
            actor = Actor.objects.get(id=actor_id)
        except Actor.DoesNotExist:
            return Response({"error": "Bunday actor mavjud emas"})
        movie.actors.add(actor)
        movie.save()
        serializer = ActorSerializer(movie.actors.all(), many=True)
        return Response(serializer.data)

    @action(detail=True, methods=["DELETE"], url_path="remove-actor")
    def remove_actors(self, request, *args, **kwargs):
        movie = self.get_object()
        actor_id = request.data.get("id")
        if not actor_id:
            return Response({"error": "Actor id berilmagan"})
        try:
            actor = Actor.objects.get(id=actor_id)
        except Actor.DoesNotExist:
            return Response({"error": "Bunday actor mavjud emas"})
        movie.actors.remove(actor)
        movie.save()
        serializer = ActorSerializer(movie.actors.all(), many=True)
        return Response(serializer.data)


class ActorViewSet(ModelViewSet):
    queryset = Actor.objects.all()
    serializer_class = ActorSerializer


class MovieActorAPIView(ModelViewSet):
    def get_queryset(self):
        movie_id = self.kwargs["id"]
        movie = Movie.objects.get(id=movie_id)
        return movie.actors.all()

    serializer_class = ActorSerializer


#
# class CommentViewSet(ModelViewSet):
#     serializer_class = CommentSerializer
#     authentication_classes = (TokenAuthentication,)
#     permission_classes = (IsAuthenticated,)
#
#     def get_queryset(self):
#         return Comment.objects.all()
#
#     # def perform_create(self, serializer):
#     #     serializer.valited_date['user'] = self.request.user
#     #     serializer.save()
#
#     def post(self, request):
#         print("-----------------------------------------------------")
#         print(request.user)
#         serializer = CommentSerializer(data=request.data)
#         if serializer.is_valid():
#             serializer.validated_data['user'] = request.user
#             serializer.save()
#             return Response(serializer.data, status=201)
#         return Response(serializer.errors, status=400)


class CommentViewSet(viewsets.ViewSet):
    authentication_classes = (TokenAuthentication,)
    permission_classes = (IsAuthenticated,)

    def create(self, request):
        serializer = CommentSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save(user=request.user)
            return Response(serializer.data, status=201)
        return Response(serializer.errors, status=400)

    def list(self, request):
        comments = Comment.objects.all()
        serializer = CommentSerializer(comments, many=True)
        return Response(serializer.data)

    def destroy(self, request, pk=None):
        try:
            comment = Comment.objects.get(pk=pk, user=request.user)
            comment.delete()
            return Response(status=status.HTTP_204_NO_CONTENT)
        except Comment.DoesNotExist:
            raise Http404("Comment does not exist")

    def retrieve(self, request, pk=None):
        try:
            comment = Comment.objects.get(pk=pk, user=request.user)
            serializer = CommentSerializer(comment)
            return Response(serializer.data)
        except Comment.DoesNotExist:
            raise Http404("Comment does not exist")


def terms(request):
    return HttpResponse("<h1>Welcome to Movies terms</h1>")
