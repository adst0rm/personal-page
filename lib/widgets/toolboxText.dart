// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import '../constants/colors.dart';

class ToolboxText extends StatelessWidget {
  const ToolboxText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "My Toolbox:",
          style: TextStyle(
              fontSize: 40,
              fontFamily: 'consolas',
              color: CustomColor.whiteText),
        ),
        SizedBox(
          height: 90,
        ),
        Text(
          "Flutter | Visual Studio",
          style: TextStyle(
              fontSize: 40,
              fontFamily: 'consolas',
              color: CustomColor.whiteText),
        ),
        SizedBox(
          height: 25,
        ),
        Text(
          "Robotics | ev3dev2 - Python",
          style: TextStyle(
              fontSize: 40,
              fontFamily: 'consolas',
              color: CustomColor.whiteText),
        ),
        SizedBox(
          height: 25,
        ),
        Text(
          "Design | Figma - Adobe Illus.",
          style: TextStyle(
              fontSize: 40,
              fontFamily: 'consolas',
              color: CustomColor.whiteText),
        ),
        SizedBox(
          height: 25,
        ),
        Text(
          "3D Design | Fusion 360",
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
