// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

class BlogMobile extends StatelessWidget {
  const BlogMobile({super.key, this.keyOne});

  final Key? keyOne;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      key: keyOne,
      height: 700,
      color: CustomColor.mainBlack,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 45),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  "My Toolbox:",
                  style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'consolas',
                      color: CustomColor.whiteText),
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  "Flutter | Visual Studio",
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'consolas',
                      color: CustomColor.whiteText),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Robotics | ev3dev2 - Python",
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'consolas',
                      color: CustomColor.whiteText),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Design | Figma - Adobe Illus.",
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'consolas',
                      color: CustomColor.whiteText),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "3D Design | Fusion 360",
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'consolas',
                      color: CustomColor.whiteText),
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  "Favorite Books:",
                  style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'consolas',
                      color: CustomColor.whiteText),
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  "The Lean Startup",
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'consolas',
                      color: CustomColor.whiteText),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "The Swordless Samurai",
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'consolas',
                      color: CustomColor.whiteText),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Brief Answers to the Big Questions",
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'consolas',
                      color: CustomColor.whiteText),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Fahrenheit 451",
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'consolas',
                      color: CustomColor.whiteText),
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
