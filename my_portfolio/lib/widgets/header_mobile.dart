import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/widgets/site_logo.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({super.key, required this.onLogoTap, required this.onMenuTap});
  final VoidCallback onLogoTap;
  final VoidCallback onMenuTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.fromLTRB(40, 5, 20, 5),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Colors.transparent, CustomColor.bgLight1],
        ),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Row(children: [
        SiteLogo(
          onTap: onLogoTap,
        ),
        const Spacer(),
        IconButton(
          onPressed: onMenuTap,
          icon: const Icon(Icons.menu),
        ),
        SizedBox(
          width: 15,
        ),
      ]),
    );
  }
}