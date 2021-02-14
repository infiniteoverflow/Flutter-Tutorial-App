import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Learn Flutter",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Text(
              "Lets Learn the Mobile Development",
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            Text(
              "Framework of the Future!!",
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            SizedBox(
              height: 75,
            ),
            Image.asset(
              "assets/images/flutter_logo.png",
              height: 260,
              width: 260,
            ),
            SizedBox(
              height: 155,
            ),
            // RaisedButton(
            //   child: Text(
            //     "Get Started",
            //     style: TextStyle(
            //       fontSize: 18,
            //     ),
            //   ),
            //   textColor: Colors.white,
            //   onPressed: () {},
            //   color: Color(0xff055999),
            //   shape: RoundedRectangleBorder(
            //     borderRadius: BorderRadius.circular(20),
            //   ),
            // )
            Material(
              color: Color(0xff055999),
              clipBehavior: Clip.antiAlias,
              borderRadius: BorderRadius.all(
                Radius.circular(40),
              ),
              child: InkWell(
                onTap: () {},
                child: Container(
                  width: 300,
                  height: 55,
                  child: Center(
                      child: Text(
                    "Get Started",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
