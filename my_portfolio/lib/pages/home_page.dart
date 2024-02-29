import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/nav_icons.dart';
import 'package:my_portfolio/widgets/header_desktop.dart';
import 'package:my_portfolio/widgets/header_mobile.dart';
import 'package:my_portfolio/widgets/site_logo.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CustomColor.scaffoldBg,
        body: ListView(
          children: [
            // MAIN widget
            //HeaderDesktop(),
            HeaderMobile(
              onLogoTap: () {},
              onMenuTap: () {},
            ),
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
        ));
  }
}
