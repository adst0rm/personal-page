// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/size.dart';
import 'package:my_portfolio/widgets/BlogDesktop.dart';
import 'package:my_portfolio/widgets/BlogMobile.dart';
import 'package:my_portfolio/widgets/ContactMobile.dart';
import 'package:my_portfolio/widgets/FooterMobile.dart';
import 'package:my_portfolio/widgets/GreetingMobile.dart';
import 'package:my_portfolio/widgets/aboutmeDesktop.dart';
import 'package:my_portfolio/widgets/aboutmeMobile.dart';
import 'package:my_portfolio/widgets/booksText.dart';
import 'package:my_portfolio/widgets/contactDesktop.dart';
import 'package:my_portfolio/widgets/drawer.dart';
import 'package:my_portfolio/widgets/footerDesktop.dart';
import 'package:my_portfolio/widgets/greetingDesktop.dart';
import 'package:my_portfolio/widgets/lid.dart';
import 'package:my_portfolio/widgets/lid_mobile.dart';
import 'package:my_portfolio/widgets/projectsDesktop.dart';
import 'package:my_portfolio/widgets/projectsMobile.dart';
import 'package:my_portfolio/widgets/toolboxText.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> scaffoldkey = GlobalKey<ScaffoldState>();
  final scrollcontroller = ScrollController(); // to get access to sections
  final List<GlobalKey> navbarkeys = List.generate(5, (index) => GlobalKey());
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        key: scaffoldkey,
        endDrawerEnableOpenDragGesture: false,
        endDrawer: constraints.maxWidth >= MinDesktopWidth
            ? null
            : DrawerMobile(
                OnNavItemTap: (int navIndex) {
                  //call func
                  scaffoldkey.currentState?.closeEndDrawer();
                  scrollToSection(navIndex);
                },
              ),
        body: SingleChildScrollView(
          controller: scrollcontroller,
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                key: navbarkeys[0],
              ),
              //MAIN
              if (constraints.maxWidth >= MinDesktopWidth)
                Lidwidget(
                  onNavMenuTap: (int navIndex) {
                    scrollToSection(navIndex);
                  },
                )
              else
                LidMobile(
                  onLogoTap: () {},
                  onMenuTap: () {
                    scaffoldkey.currentState?.openEndDrawer();
                  },
                ),

              // GREETING
              if (constraints.maxWidth >= MinDesktopWidth)
                GreetingDesktop()
              else
                GreetingMobile(),

              // ABOUT ME

              if (constraints.maxWidth >= MinDesktopWidth)
                AboutMeDesktop(
                  key: navbarkeys[1],
                )
              else
                AboutMeMobile(
                  key: navbarkeys[1],
                ),

              // PROJECTS
              if (constraints.maxWidth >= MinDesktopWidth)
                Container(
                    key: navbarkeys[2],
                    height: 200,
                    decoration: BoxDecoration(color: CustomColor.whiteText),
                    child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(children: [
                          SizedBox(
                            width: 100,
                          ),
                          Text(
                            "Selected Projects",
                            style: TextStyle(
                                fontSize: 45,
                                color: CustomColor.mainBlack,
                                fontFamily: 'consolas',
                                height: 1.5),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Icon(
                            Icons.arrow_downward,
                            size: 100,
                          )
                        ]))),

              if (constraints.maxWidth >= MinDesktopWidth)
                ProjectsDesktop()
              else
                ProjectsMobile(
                  key: navbarkeys[2],
                ),

              // BLOG

              if (constraints.maxWidth >= MinDesktopWidth)
                BlogDesktop(
                  key: navbarkeys[3],
                )
              else
                BlogMobile(
                  key: navbarkeys[3],
                ),
              //FOOTER
              Container(
                height: 10,
                color: CustomColor.whiteBlue,
              ),

              if (constraints.maxWidth >= MinDesktopWidth)
                ContactDesktop(
                  key: navbarkeys[4],
                  onArrowDestopTap: (int navIndex) {
                    scrollToSection(navIndex);
                  },
                )
              else
                ContactMobile(
                  key: navbarkeys[4],
                  onArrowTap: (int navIndex) {
                    scrollToSection(navIndex);
                  },
                ),

              if (constraints.maxWidth >= MinDesktopWidth)
                FooterDesktop()
              else
                FooterMobile()
            ],
          ),
        ),
      );
    });
  }

  void scrollToSection(int navIndex) {
    if (navIndex == 0) {
      final key = navbarkeys[0];
      Scrollable.ensureVisible(key.currentContext!,
          duration: Duration(milliseconds: 500));
    }

    final key = navbarkeys[navIndex];
    Scrollable.ensureVisible(key.currentContext!,
        duration: Duration(milliseconds: 500));
  }
}
