import 'package:flutter/material.dart';
import 'package:travel_app/components/theme.dart';

class Intro_page1 extends StatelessWidget {
  const Intro_page1({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Template(
        screenWidth: screenWidth,
        screenHeight: screenHeight,
        theChild: Column(
          crossAxisAlignment: CrossAxisAlignment
              .start, // Align children to the start (left) of the column
          children: [
            Center(
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/intro_1.png',
                    width: screenWidth,
                    height: screenHeight * 0.5,
                    fit: BoxFit.fill,
                  ),
                ],
              ),
            ),
            SizedBox(height: screenHeight * 0.01),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Life is short and the world is wide",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 26,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "At Friends tours and travel, we customize reliable and trutworthy educational tours to destinations all over the world",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 17,
                ),
              ),
            ),
          ],
        ));
  }
}
