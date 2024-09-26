// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/pages/blog.dart';

class GreetingDesktop extends StatelessWidget {
  const GreetingDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 700,
        color: CustomColor.mainBlack,
        child: Center(
            child: Padding(
          padding: const EdgeInsets.all(100),
          child: RichText(
              text: TextSpan(
                  style: TextStyle(
                      fontFamily: 'consolas',
                      color: CustomColor.whiteText,
                      fontSize: 80,
                      height: 1.5),
                  children: <TextSpan>[
                TextSpan(text: 'I’m '),
                TextSpan(
                  text: 'Adil',
                  style: TextStyle(
                      color: CustomColor
                          .whiteBlue), // Change this to the specific color
                ),
                TextSpan(
                    text:
                        ', a Full-Stack developer and aspiring CS major student. I build bridges between human and machine.'),
                TextSpan(
                    text: " Go to my blog!",
                    style: TextStyle(
                        color: CustomColor.whiteBlue,
                        decoration: TextDecoration.underline),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => MyBlog()));
                      }),
              ])),
        )));
  }
}
