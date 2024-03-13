import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/nav_icons.dart';
import 'package:my_portfolio/constants/size.dart';
import 'package:my_portfolio/constants/skill_items.dart';
import 'package:my_portfolio/widgets/drawer-mobile.dart';
import 'package:my_portfolio/widgets/header_desktop.dart';
import 'package:my_portfolio/widgets/header_mobile.dart';
import 'package:my_portfolio/widgets/main_desktop.dart';
import 'package:my_portfolio/widgets/main_mobile.dart';
import 'package:my_portfolio/widgets/site_logo.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return LayoutBuilder(builder: (context, constraint) {
      return Scaffold(
        key: scaffoldKey,
        backgroundColor: CustomColor.scaffoldBg,
        endDrawer: constraint.maxWidth >= kMinDesktopWidth
            ? null
            : const DrawerMobile(),
        body: ListView(
          children: [
            // MAIN widget
            if (constraint.maxWidth >= kMinDesktopWidth)
              const HeaderDesktop()
            else
              HeaderMobile(
                onLogoTap: () {},
                onMenuTap: () {
                  scaffoldKey.currentState?.openEndDrawer();
                },
              ),
            if (constraint.maxWidth >= kMinDesktopWidth)
              const MainDesktop()
            else
              const MainMobile(),

            // Skills widget
            Container(
              padding: EdgeInsets.fromLTRB(25, 20, 25, 60),
              width: screenWidth,
              color: CustomColor.bgLight1,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  //title
                  Text(
                    "What I can do!",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: CustomColor.whitePrimary,
                    ),
                  ),
                  //platforms & Skills
                  Row(
                    children: [
                      //platforms
                      ConstrainedBox(
                        constraints: BoxConstraints(
                          maxWidth: 450,
                        ),
                        child: Wrap(
                          children: [
                            for (int i = 0; i < platformItems.length; i++)
                              Container(
                                width: 200,
                                decoration: BoxDecoration(
                                  color: CustomColor.bgLight2,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: ListTile(
                                  contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 20,
                                    vertical: 10,
                                  ),
                                  leading: Image.asset(platformItems[i]["img"],),
                                  title: Text(platformItems[i]["title"]),
                                ),
                              )
                          ],
                        ),
                      )

                      //skills
                    ],
                  )
                ],
              ),
            ),
            // Projects widget
            Container(
              height: 500,
              width: double.maxFinite,
              //color: Colors.blueGrey,
            ),
            // Contact widget
            Container(
              height: 500,
              width: double.maxFinite,
              color: Colors.blueGrey,
            ),

            // Footer widget
            Container(
              height: 500,
              width: double.maxFinite,
              //color: Colors.blueGrey,
            ),
          ],
        ),
      );
    });
  }
}
