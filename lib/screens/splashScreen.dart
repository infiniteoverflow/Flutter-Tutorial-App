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
