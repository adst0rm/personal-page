// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

class MyBlog extends StatelessWidget {
  const MyBlog({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: CustomColor.mainBlack,
          padding: EdgeInsets.all(50),
          child: ListView(
            children: [
              Column(children: [
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
                                "Today I made blog section! I guess, I will launch Kelbet-til app soon. Like gimme 30-40 days. It is always hard to find out where you really should to startm but sometimes you must just start without any distracting thoughts. It is part of every action in your life. Just start - then you will see what it can result in."),
                      ])),
                ),
              ]),
              SizedBox(
                height: 100,
              ),
              Column(children: [
                Row(children: [
                  RichText(
                      text: TextSpan(
                          style: TextStyle(
                            fontFamily: 'consolas',
                            color: CustomColor.whiteText,
                            fontSize: 40,
                            height: 1.5,
                          ),
                          children: [TextSpan(text: "7 october, 2024")])),
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
                                "Today is my sister's bd, happy birthday here btw! Hackathon was awful as fuck, kinda shitty judgement, but I've learned how to use webview properly and some plugins for AR demostration."),
                      ])),
                ),
              ]),
            ],
          ),
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
