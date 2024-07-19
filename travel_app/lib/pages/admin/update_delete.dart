import 'package:flutter/material.dart';
import 'package:travel_app/components/button.dart';
import 'package:travel_app/components/card.dart';
import 'package:travel_app/components/input.dart';
import 'package:travel_app/components/theme.dart';

class UpdateMain extends StatefulWidget {
  const UpdateMain({super.key});

  @override
  State<UpdateMain> createState() => _UpdateMainState();
}

class _UpdateMainState extends State<UpdateMain> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Template(
      screenWidth: screenWidth,
      screenHeight: screenHeight,
      theChild: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Added Places",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              child: GridView.builder(
                itemCount: 1000,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: screenWidth * 0.03,
                  mainAxisSpacing: screenHeight * 0.05,
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
