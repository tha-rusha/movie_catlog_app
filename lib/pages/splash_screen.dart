import 'package:flutter/material.dart';
import 'package:movie_catlog_app/pages/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // ignore: avoid_void_async
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  const HomePage())); //page linked with MainScreen
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/images/logo.png'),
          Text(
            'MovieDB',
            style: TextStyle(
              fontSize: 40,
              color: Theme.of(context).highlightColor,
            ),
          )
        ],
      ),
    );
  }
}
