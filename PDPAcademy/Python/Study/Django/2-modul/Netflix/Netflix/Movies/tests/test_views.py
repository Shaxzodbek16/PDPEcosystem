from django.test import TestCase, Client
from Movies.models import Movie
from Movies.serializers import MovieSerializer


class TestMoviesViews(TestCase):

	def setUp(self) -> None:
		self.client = Client()
		self.movie1 = Movie.objects.create(name="Test Movie 1",  year=2020, imdb=8.5, genre="Action")
		self.movie2 = Movie.objects.create(name="Test Movie 2",  year=2021, imdb=8, genre="Comedy")
		self.movie1 = MovieSerializer(self.movie1)
		self.movie2 = MovieSerializer(self.movie2)

	def test_get_movies(self):
		response = self.client.get('/movies/')
		self.assertEqual(response.status_code, 200)
		self.assertEqual(len(response.data), 2)
		self.assertEqual(response.data[0], self.movie1.data)

	def test_search_movies(self):
		response = self.client.get('/movies/?search=Test Movie 1')
		self.assertEqual(response.status_code, 200)
		self.assertEqual(len(response.data), 2)
		self.assertEqual(response.data[1]['name'], "Test Movie 1")

	def test_order_movies_by_imdb(self):
		response = self.client.get('/movies/?ordering=imdb_score')
		self.assertEqual(response.status_code, 200)
		self.assertEqual(len(response.data), 2)
		self.assertEqual(response.data[0]['name'], "Test Movie 1")
		self.assertEqual(response.data[1]['name'], "Test Movie 2")
