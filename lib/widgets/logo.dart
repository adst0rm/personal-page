// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key, this.onTap, required this.fontSize});

  final VoidCallback? onTap;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        'Æ',
        style: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
            color: CustomColor.whiteText),
      ),
    );
  }
}
