// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactDesktop extends StatelessWidget {
  const ContactDesktop({super.key, this.onArrowDestopTap});

  final Function(int)? onArrowDestopTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 570,
      color: CustomColor.mainBlack,
      padding: EdgeInsets.symmetric(horizontal: 300, vertical: 120),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        InkWell(
          onTap: () => launchUrl(Uri.parse('google.com')),
          child: Text(
            'ergenadil280308@gmail.com',
            style: TextStyle(
                color: CustomColor.whiteBlue,
                fontSize: 60,
                fontFamily: 'consolas'),
          ),
        ),
        IconButton(
            onPressed: () {
              onArrowDestopTap!(0);
            },
            icon: Icon(
              Icons.arrow_upward,
              color: CustomColor.whiteText,
              size: 80,
            ))
      ]),
    );
  }
}
