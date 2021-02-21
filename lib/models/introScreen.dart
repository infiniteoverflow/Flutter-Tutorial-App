import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IntroScreenModel extends StatelessWidget {

  final String image, text;

  const IntroScreenModel({Key key, this.image, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            "assets/images/$image",
            height: 200,
          ),
          const SizedBox(height: 50),
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 15.0, color: Colors.black),
          ),
        ],
      ),
    );
  }
}