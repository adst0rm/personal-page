// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/widgets/booksText.dart';
import 'package:my_portfolio/widgets/toolboxText.dart';

class BlogDesktop extends StatelessWidget {
  const BlogDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      color: CustomColor.mainBlack,
      padding: EdgeInsets.symmetric(horizontal: 80, vertical: 120),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ToolboxText(),
          BookText(),
        ],
      ),
    );
  }
}
