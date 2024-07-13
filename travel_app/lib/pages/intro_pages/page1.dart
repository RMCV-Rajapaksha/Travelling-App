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
        theChild: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment
                  .start, // Align children to the start (left) of the column
              children: [
                SizedBox(height: screenHeight * 0.1),
                Center(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/intro_1.png',
                        width: screenWidth * 0.8,
                        height: screenHeight * 0.3,
                        fit: BoxFit.fill,
                      ),
                    ],
                  ),
                ),
                const Text(
                  "Capture and Share Your Journey, Together.",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                  ),
                ),
                const Text(
                  "Explore a live gallery of journeys and events, shared by loved ones",
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 17,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
