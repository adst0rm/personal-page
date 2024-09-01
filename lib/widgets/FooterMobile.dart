// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class FooterMobile extends StatelessWidget {
  const FooterMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
      color: CustomColor.mainBlack,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Copyright © 2024. Adil Ergen production. All rights reserved.',
            style: TextStyle(
                color: CustomColor.whiteText,
                fontSize: 14,
                fontFamily: 'consolas'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () =>
                    launchUrl(Uri.parse('https://www.instagram.com/_adstorm/')),
                child: Text(
                  'Instagram',
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: CustomColor.whiteText,
                      fontSize: 12,
                      fontFamily: 'consolas'),
                ),
              ),
              InkWell(
                onTap: () => launchUrl(Uri.parse('https://www.t.me/adstormm/')),
                child: Text(
                  'Telegram',
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: CustomColor.whiteText,
                      fontSize: 12,
                      fontFamily: 'consolas'),
                ),
              ),
              InkWell(
                onTap: () => launchUrl(Uri.parse('https://github.com/adst0rm')),
                child: Text(
                  'GitHub',
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: CustomColor.whiteText,
                      fontSize: 12,
                      fontFamily: 'consolas'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
