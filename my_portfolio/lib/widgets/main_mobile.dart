import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return  Container(
              margin: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
              height: screenHeight,
              constraints: const BoxConstraints(minHeight: 560),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //avatar image
                    ShaderMask(
                      shaderCallback: ((bounds) {
                        return LinearGradient(colors: [
                          CustomColor.scaffoldBg.withOpacity(0.6),
                          CustomColor.scaffoldBg.withOpacity(
                            0.6,
                          )
                        ]).createShader(bounds);
                      }),
                      blendMode: BlendMode.srcATop,
                      child: Image.asset(
                        "assets/flutter_dash1.png",
                        width: screenWidth,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    // Intro TExt
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Hello,\nI am Emmanuel Enwere\nA Flutter Developer",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 23,
                            height: 1.5,
                            color: CustomColor.whitePrimary,
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        SizedBox(
                          width: 230,
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
                  ]),
            );
  }
}