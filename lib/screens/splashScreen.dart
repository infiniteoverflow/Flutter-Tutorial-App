import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/screens/homeScreen.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    homePageTimer();
  }

  homePageTimer() async {
    Timer(Duration(seconds: 3), () async {
      Navigator.pushReplacement(
          context, PageRouteBuilder(
        pageBuilder: (c, a1, a2) => HomeScreen(),
        transitionsBuilder: (c, anim, a2, child) =>
            FadeTransition(opacity: anim, child: child),
        transitionDuration: Duration(milliseconds: 1500),
      ));  // pushing HomePage()
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(
              "assets/images/flutter_logo.png",
              height: 260,
              width: 260,
            ),
        ),
      );
  }
}
