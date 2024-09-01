// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/projectsLeft.dart';
import 'package:my_portfolio/widgets/projectsRight.dart';

class ProjectsDesktop extends StatelessWidget {
  const ProjectsDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProjectsLeft(
          image: 'assets/tazalyq-preview.jpg',
          projectName: 'Tazalyq - make money from garbage!',
          link:
              'https://jade-teacher-e43.notion.site/FAQ-Tazalyq-QR-75c37e5766da46e7b1922cfe4005238a?pvs=4',
          color: Colors.green,
        ),
        ProjectsRight(
            image: 'assets/to-do.jpg',
            projectName: 'ToDo - plan your day properly!',
            link: 'https://github.com/adst0rm/To-Do-App-Flutter',
            color: Colors.yellow),
        ProjectsLeft(
            image: 'assets/weather-app.jpg',
            projectName: 'WeatherGo - find your weather!',
            link: 'https://github.com/adst0rm/MedicineApp',
            color: Colors.grey),
      ],
    );
  }
}
