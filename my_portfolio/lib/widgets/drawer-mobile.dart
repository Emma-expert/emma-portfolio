import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/nav_icons.dart';

class DrawerMobile extends StatelessWidget {
  const DrawerMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: CustomColor.scaffoldBg,
      child: ListView(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 30, top: 20, bottom: 20),
              child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.close)),
            ),
          ),
          for (int i = 0; i < navIcons.length; i++)
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 20),
              titleTextStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: CustomColor.whitePrimary),
              leading: Icon(navIcons[i]),
              title: Text(navTitles[i]),
            )
        ],
      ),
    );
  }
}
