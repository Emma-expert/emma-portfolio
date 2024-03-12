import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      height: screenHeight / 1.2,
      constraints: const BoxConstraints(minHeight: 350),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Hello,\nI am Emmanuel Enwere\nA Flutter Developer",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  height: 1.5,
                  color: CustomColor.whitePrimary,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                width: 300,
                child: ElevatedButton(
                  style: const ButtonStyle(
                      //backgroundColor: MaterialStatePropertyAll.new,
                      ),
                  onPressed: () {},
                  child: const Text(
                    "Get In Touch",
                  ),
                ),
              ),
            ],
          ),
          const Spacer(),
          Image.asset(
            "assets/flutter_dash1.png",
            width: screenWidth / 2,
          ),
        ],
      ),
    );
  }
}
