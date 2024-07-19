import 'package:flutter/material.dart';
import 'package:travel_app/components/button.dart';
import 'package:travel_app/components/input.dart';
import 'package:travel_app/components/theme.dart';

class AdminMain extends StatefulWidget {
  const AdminMain({super.key});

  @override
  State<AdminMain> createState() => _AdminMainState();
}

class _AdminMainState extends State<AdminMain> {
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
            SizedBox(height: screenHeight * 0.2),
            const Text(
              "Add new place",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: screenHeight * 0.04),
            CustomInputField(
                hintText: "Place Name", controller: _emailController),
            SizedBox(height: screenHeight * 0.02),
            CustomInputField(
                hintText: "Description", controller: _passwordController),
            SizedBox(height: screenHeight * 0.02),
            CustomInputField(
                hintText: "Price", controller: _passwordController),
            SizedBox(height: screenHeight * 0.02),
            CustomButton(
              height: screenHeight * 0.08,
              width: screenWidth * 1,
              text: "Add Data",
              onPressed: () {
                print("Sing in");
              },
            ),
          ],
        ),
      ),
    );
  }
}
