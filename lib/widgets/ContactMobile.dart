// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactMobile extends StatelessWidget {
  const ContactMobile({super.key, this.onArrowTap});
  final Function(int)? onArrowTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,
      color: CustomColor.mainBlack,
      padding: EdgeInsets.symmetric(vertical: 50),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        InkWell(
          onTap: () => launchUrl(Uri.parse(
              'https://mail.google.com/mail/u/0/?tab=rm&ogbl#inbox?compose=GTvVlcSHxTkWVvZxlrHcCJsBbGKLvQwCTHmccvzSknJjRHjvjtJkhSRgkrszgmxXLDMfXNwrDKpDz')),
          child: Text(
            'ergenadil280308@gmail.com',
            style: TextStyle(
                color: CustomColor.whiteBlue,
                fontSize: 20,
                fontFamily: 'consolas'),
          ),
        ),
        IconButton(
            onPressed: () {
              onArrowTap!(0);
            },
            icon: Icon(
              Icons.arrow_upward,
              color: CustomColor.whiteText,
              size: 30,
            ))
      ]),
    );
  }
}
