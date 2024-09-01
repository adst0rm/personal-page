// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

class FooterDesktop extends StatelessWidget {
  const FooterDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      color: CustomColor.mainBlack,
      child: Align(
        alignment: Alignment.center,
        child: Text(
          'Copyright © 2024. Adil Ergen production. All rights reserved.',
          style: TextStyle(
              color: CustomColor.whiteText,
              fontSize: 20,
              fontFamily: 'consolas'),
        ),
      ),
    );
  }
}
