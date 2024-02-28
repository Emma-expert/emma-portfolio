import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

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
            Container(
              height: 500,
              width: double.maxFinite,
              child: Row(
                children: [
                  Text('Prinse_Emm'),
                  Spacer(),
                  for (int i = 0; i < 5; i++)
                    TextButton(
                      onPressed: () {},
                      child: Text('button'),
                    ),
                ],
              ),
              // color: Colors.blueGrey,
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
