import 'package:flutter/material.dart';
import 'package:movie_catlog_app/widgets/customfilter.dart';
import 'package:movie_catlog_app/widgets/moviecart.dart';
import 'package:movie_catlog_app/widgets/searchbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Map<String, Map<String, dynamic>> movieDetails = {
    'movie1': {
      'title': 'Inception',
      'runtime': '148 min',
      'year': 2010,
      'imdb': 8.8,
      'genre': ['Action', 'Adventure', 'Sci-Fi'],
      'posterUrl': 'https://www.example.com/posters/inception.jpg',
    },
    'movie2': {
      'title': 'The Dark Knight',
      'runtime': '152 min',
      'year': 2008,
      'imdb': 9.0,
      'genre': ['Action', 'Crime', 'Drama'],
      'posterUrl': 'https://www.example.com/posters/the_dark_knight.jpg',
    },
    'movie3': {
      'title': 'The Shawshank Redemption',
      'runtime': '142 min',
      'year': 1994,
      'imdb': 9.3,
      'genre': ['Drama'],
      'posterUrl':
          'https://www.example.com/posters/the_shawshank_redemption.jpg',
    },
    'movie4': {
      'title': 'Interstellar',
      'runtime': '169 min',
      'year': 2014,
      'imdb': 8.6,
      'genre': ['Adventure', 'Drama', 'Sci-Fi'],
      'posterUrl': 'https://www.example.com/posters/interstellar.jpg',
    },
    // Add more movie details here
    'movie5': {
      'title': 'Movie 5',
      'runtime': '120 min',
      'year': 2022,
      'imdb': 7.5,
      'genre': ['Comedy', 'Romance'],
      'posterUrl': 'https://www.example.com/posters/movie5.jpg',
    },
    // Continue adding movies up to movie20
  };

// You can access the details of each movie using the movie name as the key
// For example:
// Map<String, dynamic> movie1Details = movieDetails['movie1'];
// String title = movie1Details['title'];
// String runtime = movie1Details['runtime'];
// int year = movie1Details['year'];
// double imdb = movie1Details['imdb'];
// List<String> genres = List.castFrom(movie1Details['genre']);
// String posterUrl = movie1Details['posterUrl'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text('Movies',
                style: TextStyle(color: Colors.white, fontSize: 30))),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          const SizedBox(
            height: 20,
          ),
          const CustomSearchBar(),
          const SizedBox(
            height: 5,
          ),
          const CustomFilter(),
          const SizedBox(
            height: 5,
          ),
          const Divider(),
          ListView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              MovieCard(
                bgColor: Colors.purple,
                image: "assets/images/flood.png",
                title: movieDetails['movie1']?['title'],
                genres: 'Action',
                runtime: '2H 2M',
                year: 2022,
                imdb: 6.7,
              ),
              const MovieCard(
                bgColor: Colors.blue,
                image: "assets/images/hc.png",
                title: 'Avengers',
                genres: 'Action',
                runtime: '2H 2M',
                year: 2022,
                imdb: 6.7,
              ),
              const MovieCard(
                bgColor: Colors.green,
                image: "assets/images/hc.png",
                title: 'Avengers',
                genres: 'Action',
                runtime: '2H 2M',
                year: 2022,
                imdb: 6.7,
              ),
              const MovieCard(
                bgColor: Colors.amber,
                image: "assets/images/flood.png",
                title: 'Avengers',
                genres: 'Action',
                runtime: '2H 2M',
                year: 2022,
                imdb: 6.7,
              ),
            ],
          )
        ]),
      ),
    );
  }
}
