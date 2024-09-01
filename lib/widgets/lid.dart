// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/nav_items.dart';
import 'package:my_portfolio/widgets/logo.dart';

class Lidwidget extends StatelessWidget {
  const Lidwidget({super.key, required this.onNavMenuTap});
  final Function(int) onNavMenuTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      padding: EdgeInsets.symmetric(horizontal: 20),
      // padding: EdgeInsets.all(10),
      width: double.maxFinite,
      decoration: BoxDecoration(color: CustomColor.mainBlack),
      // margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),

      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: LogoWidget(
              onTap: () {},
              fontSize: 100,
            ),
          ),
          Spacer(),
          for (int i = 0; i < navTiles.length; i++)
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: TextButton(
                  onPressed: () {
                    onNavMenuTap(i);
                  },
                  child: Text(
                    navTiles[i],
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: CustomColor.whiteText),
                  )),
            )
        ],
      ),
    );
  }
}
