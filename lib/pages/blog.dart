// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

class MyBlog extends StatelessWidget {
  const MyBlog({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'consolas',
        primaryColor: CustomColor.whiteText,
        backgroundColor: CustomColor.mainBlack,
      ),
      home: Scaffold(
        body: Container(
          color: CustomColor.mainBlack,
          padding: EdgeInsets.all(50),
          child: Column(children: [
            Row(children: [
              RichText(
                  text: TextSpan(
                      style: TextStyle(
                        fontFamily: 'consolas',
                        color: CustomColor.whiteText,
                        fontSize: 40,
                        height: 1.5,
                      ),
                      children: [TextSpan(text: "26 september, 2024")])),
            ]),
            Center(
              child: RichText(
                  text: TextSpan(
                      style: TextStyle(
                        fontFamily: 'consolas',
                        color: CustomColor.whiteText,
                        fontSize: 40,
                        height: 1.5,
                      ),
                      children: [
                    TextSpan(
                        text:
                            "Today I made blog section! In Flutter, you can set default properties like text size, color, and font family using the ThemeData class, which allows you to define a custom theme for your entire app. The theme can be specified in the MaterialApp widget or CupertinoApp, and you can customize properties like textTheme, primaryColor, and fontFamily."),
                  ])),
            ),
          ]),
          // child: Center(
          //     child: Text(
          //   "something.....",
          //   style: TextStyle(
          //     fontSize: 50,
          //     fontFamily: 'consolas',
          //   ),
          // )),
        ),
      ),
    );
  }
}
