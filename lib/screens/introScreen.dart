import 'package:flutter/material.dart';
import 'package:flutter_tutorial/models/introScreen.dart';
import 'package:flutter_tutorial/screens/homeScreen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


var introSlider = [
  IntroScreenModel(
    text:
    "Are you looking to learn something new?",
    image: "coding.svg",
  ),
  IntroScreenModel(
    text: "But you don't know where to start?",
    image: "learn.svg",
  ),
  IntroScreenModel(
    text: "You came to the right place!\nWe will help you learn flutter from absolute scratch!!",
    image: "mobile.svg",
  ),
];

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key key}) : super(key: key);

  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  PageController _pageController;

  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _pageController.addListener(() {
      if (_currentPage != _pageController.page.round()) {
        setState(() {
          _currentPage = _pageController.page.round();
        });
      }
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: Colors.white,
        child: Stack(
          children: <Widget>[
            Positioned.fill(
              top: 40,
              bottom: 49,
              child: SizedBox(
                height: 200,
                child: PageView(
                  pageSnapping: true,
                  controller: _pageController,
                  children: introSlider,
                ),
              ),
            ),
            bottomNavigation(context)
          ],
        ),
      ),
    );
  }

  Align bottomNavigation(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Row(
        children: [
          const SizedBox(width: 15.0),
          SmoothPageIndicator(
            controller: _pageController,
            count: 3,
            effect: WormEffect(
              activeDotColor: Colors.blue,
              dotHeight: 12.0,
              dotWidth: 12.0,
            ),
          ),
          Spacer(),
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 200),
            child: _currentPage != 2
                ? SizedBox(
              width: 90,
              height: 49,
              child: IconButton(
                splashColor: Colors.transparent,
                padding: const EdgeInsets.all(0.0),
                onPressed: () {
                  _pageController.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.linear,
                  );
                },
                icon: Icon(Icons.arrow_forward_ios_rounded),
              ),
            )
                : InkWell(
              onTap: () =>
                  Navigator.pushReplacement(context, PageRouteBuilder(
                    pageBuilder: (c, a1, a2) => HomeScreen(),
                    transitionsBuilder: (c, anim, a2, child) => FadeTransition(opacity: anim, child: child),
                    transitionDuration: Duration(milliseconds: 1000),
                  ),),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15.0)),
                ),
                width: 90,
                height: 49,
                child: Center(
                  child: Text(
                    "START",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}