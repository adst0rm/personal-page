// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/widgets/logo.dart';

class LidMobile extends StatelessWidget {
  const LidMobile({super.key, this.onLogoTap, this.onMenuTap});
  final VoidCallback? onLogoTap;
  final VoidCallback? onMenuTap;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 90,
        decoration: BoxDecoration(color: CustomColor.mainBlack),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: onLogoTap,
              child: LogoWidget(
                fontSize: 36,
              ),
            ),
            IconButton(
              onPressed: onMenuTap,
              icon: Icon(Icons.menu),
              color: CustomColor.whiteText,
              iconSize: 36,
            )
          ],
        ));
  }
}
