import 'package:flutter/material.dart';
import 'package:travel_app/components/card.dart';

import 'package:travel_app/components/theme.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Template(
      screenWidth: screenWidth,
      screenHeight: screenHeight,
      theChild: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: GridView.builder(
                itemCount: 10,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 30,
                  mainAxisSpacing: 30,
                  childAspectRatio: 1,
                ),
                itemBuilder: (context, index) {
                  return TourismCard();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
