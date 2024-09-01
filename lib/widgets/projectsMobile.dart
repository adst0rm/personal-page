// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsMobile extends StatelessWidget {
  const ProjectsMobile({super.key, this.keyOne});

  final Key? keyOne;

  @override
  Widget build(BuildContext context) {
    return Container(
      key: keyOne,
      color: CustomColor.whiteText,
      height: 1500,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 55),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              color: CustomColor.whiteText,
              child: Column(
                children: [
                  InkWell(
                    onTap: () => launchUrl(Uri.parse(
                        'https://jade-teacher-e43.notion.site/FAQ-Tazalyq-QR-75c37e5766da46e7b1922cfe4005238a?pvs=4')),
                    child: Text(
                      'Tazalyq - make money from garbage!',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.green,
                          fontSize: 30,
                          fontFamily: 'consolas'),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Image.asset("assets/tazalyq-preview.jpg")
                ],
              ),
            ),
            Container(
              color: CustomColor.whiteText,
              child: Column(
                children: [
                  InkWell(
                    onTap: () => launchUrl(Uri.parse(
                        'https://github.com/adst0rm/To-Do-App-Flutter')),
                    child: Text(
                      'ToDo - plan your day properly!',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.yellow,
                          fontSize: 30,
                          fontFamily: 'consolas'),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Image.asset('assets/to-do.jpg')
                ],
              ),
            ),
            Container(
              color: CustomColor.whiteText,
              child: Column(
                children: [
                  InkWell(
                    onTap: () => launchUrl(
                        Uri.parse('https://github.com/adst0rm/MedicineApp')),
                    child: Text(
                      'WeatherGo - find your weather!',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.grey,
                          fontSize: 30,
                          fontFamily: 'consolas'),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Image.asset('assets/weather-app.jpg')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
