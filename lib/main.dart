import 'package:flutter/material.dart';
import 'package:movie_catlog_app/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movie Catlog App',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        highlightColor: const Color.fromRGBO(90, 78, 156, 1.000),
      ),
      //home: const SplashScreen(),
      home: const HomePage(),
    );
  }
}
