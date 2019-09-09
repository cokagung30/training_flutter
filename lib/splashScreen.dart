import 'package:animated_splash/animated_splash.dart';
import 'package:flutter/material.dart';
import 'package:training_flutter/main.dart';

void main() {
  runApp(new MaterialApp(
    home: SplashScreen(),
    debugShowCheckedModeBanner: false,
  ));
}

class SplashScreen extends StatefulWidget {
  @override
  SplashScreenState createState() => new SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {

  Map<int, Widget> op = {1: MyApp()};

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: Container(
            margin: EdgeInsets.all(20),
            child: AnimatedSplash(
              imagePath: 'assets/baliWork.png',
              home: MyApp(),
              duration: 2500,
              type: AnimatedSplashType.BackgroundProcess,
              outputAndHome: op,
            )
        )
    );
  }
}
