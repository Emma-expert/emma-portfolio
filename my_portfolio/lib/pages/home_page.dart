import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/nav_icons.dart';
import 'package:my_portfolio/constants/size.dart';
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
              height: 500,
              width: double.maxFinite,
              color: Colors.blueGrey,
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
