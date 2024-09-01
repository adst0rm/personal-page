// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

class GreetingMobile extends StatelessWidget {
  const GreetingMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 600,
        color: CustomColor.mainBlack,
        child: Center(
            child: Padding(
          padding: const EdgeInsets.all(30),
          child: RichText(
              text: TextSpan(
                  style: TextStyle(
                      fontFamily: 'consolas',
                      color: CustomColor.whiteText,
                      fontSize: 35,
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
                        ', a full-stack developer and aspiring CS major student. I build bridges between human and machine.'),
              ])),
        )));
  }
}
