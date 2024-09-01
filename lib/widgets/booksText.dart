// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import '../constants/colors.dart';

class BookText extends StatelessWidget {
  const BookText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Favorite Books:",
          style: TextStyle(
              fontSize: 40,
              fontFamily: 'consolas',
              color: CustomColor.whiteText),
        ),
        SizedBox(
          height: 90,
        ),
        Text(
          "The Lean Startup",
          style: TextStyle(
              fontSize: 40,
              fontFamily: 'consolas',
              color: CustomColor.whiteText),
        ),
        SizedBox(
          height: 25,
        ),
        Text(
          "The Swordless Samurai",
          style: TextStyle(
              fontSize: 40,
              fontFamily: 'consolas',
              color: CustomColor.whiteText),
        ),
        SizedBox(
          height: 25,
        ),
        Text(
          "Green Mile",
          style: TextStyle(
              fontSize: 40,
              fontFamily: 'consolas',
              color: CustomColor.whiteText),
        ),
        SizedBox(
          height: 25,
        ),
        Text(
          "Fahrenheit 451",
          style: TextStyle(
              fontSize: 40,
              fontFamily: 'consolas',
              color: CustomColor.whiteText),
        ),
        SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
