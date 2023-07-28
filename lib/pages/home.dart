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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text('Movies',
                style: TextStyle(color: Colors.white, fontSize: 30))),
      ),
      body: const Column(children: [
        SizedBox(
          height: 20,
        ),
        CustomSearchBar(),
        SizedBox(
          height: 5,
        ),
        CustomFilter(),
        SizedBox(
          height: 5,
        ),
        Divider(),
        MovieCard(
            bgColor: Colors.amber,
            image: "assets/images/hc.png",
            title: 'They Cloed Tyrone',
            genres: 'Action',
            runtime: '2H 2M',
            year: 2022,
            imdb: 6.7),
        SizedBox(
          height: 10,
        ),
        MovieCard(
            bgColor: Colors.redAccent,
            image: "assets/images/flood.png",
            title: 'The Flood',
            genres: 'Sci-Fi',
            runtime: '2H 20M',
            year: 2023,
            imdb: 8.5),
        SizedBox(
          height: 10,
        ),
      ]),
    );
  }
}
