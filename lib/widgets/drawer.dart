// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/nav_items.dart';

class DrawerMobile extends StatelessWidget {
  // ignore: non_constant_identifier_names
  const DrawerMobile({super.key, required this.OnNavItemTap});

  // ignore: non_constant_identifier_names
  final Function(int) OnNavItemTap;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: CustomColor.mainBlack,
      child: ListView(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, bottom: 20),
              child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: CustomColor.whiteText,
                  )),
            ),
          ),
          for (int i = 0; i < navTiles.length; i++)
            ListTile(
              leading: Icon(navicons[i]),
              title: Text(navTiles[i]),
              iconColor: CustomColor.whiteText,
              textColor: CustomColor.whiteText,
              contentPadding: EdgeInsets.symmetric(horizontal: 30),
              titleTextStyle:
                  TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              onTap: () {
                OnNavItemTap(i);
              },
            )
        ],
      ),
    );
  }
}
