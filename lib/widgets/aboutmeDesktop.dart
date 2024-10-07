// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

class AboutMeDesktop extends StatelessWidget {
  const AboutMeDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          decoration: BoxDecoration(color: CustomColor.whiteText),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                SizedBox(
                  width: 100,
                ),
                Text(
                  "My full name is Adil Ergen. \n I study at NIS PhMD Uralsk.",
                  style: TextStyle(
                      fontSize: 30,
                      color: CustomColor.mainBlack,
                      fontFamily: 'consolas',
                      height: 1.5),
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 200,
          decoration: BoxDecoration(color: CustomColor.whiteText),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 120),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(),
                Text(
                  "I have passion in robotics, start-ups, science projects. \n I code since 7th grade and my first language was Python.",
                  style: TextStyle(
                      fontSize: 30,
                      color: CustomColor.mainBlack,
                      fontFamily: 'consolas',
                      height: 1.5),
                ),
                // Lottie.asset('assets/imho.json', height: 400),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
