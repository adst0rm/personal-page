// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

class AboutMeMobile extends StatelessWidget {
  const AboutMeMobile({super.key, this.keyOne});

  final Key? keyOne;

  @override
  Widget build(BuildContext context) {
    return Container(
      key: keyOne,
      height: 400,
      decoration: BoxDecoration(color: CustomColor.whiteText),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 70),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "My full name is Adil Ergen. I study at NIS PhMD Uralsk.",
              style: TextStyle(
                  fontSize: 20,
                  color: CustomColor.mainBlack,
                  fontFamily: 'consolas',
                  height: 1.5),
            ),
            Text(
              "I have passion in robotics, start-ups, science projects. I code since 7th grade and my first language was Python.",
              style: TextStyle(
                  fontSize: 20,
                  color: CustomColor.mainBlack,
                  fontFamily: 'consolas',
                  height: 1.5),
            ),
          ],
        ),
      ),
    );
  }
}
