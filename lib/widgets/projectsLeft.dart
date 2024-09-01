// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsLeft extends StatefulWidget {
  final String image;
  final String projectName;
  final String link;
  final Color color;

  const ProjectsLeft(
      {super.key,
      required this.image,
      required this.projectName,
      required this.link,
      required this.color});

  @override
  State<ProjectsLeft> createState() => _ProjectsLeftState();
}

class _ProjectsLeftState extends State<ProjectsLeft> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 600,
        decoration: BoxDecoration(color: CustomColor.whiteText),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 120),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(widget.image),
              InkWell(
                onTap: () => launchUrl(Uri.parse(widget.link)),
                child: Text(
                  widget.projectName,
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: widget.color,
                      fontSize: 30,
                      fontFamily: 'consolas'),
                ),
              )
            ],
          ),
        ));
  }
}
