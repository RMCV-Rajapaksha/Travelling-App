import 'package:flutter/material.dart';
import 'package:travel_app/components/Input.dart';
import 'package:travel_app/components/button.dart';

import 'package:travel_app/components/theme.dart';

class SingUp extends StatefulWidget {
  const SingUp({super.key});

  @override
  State<SingUp> createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
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
              "Sing up now",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: screenHeight * 0.003),
            const Text(
              "Please fill the details to continue our app",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: screenHeight * 0.04),
            CustomInputField(
                hintText: "Full Name", controller: _nameController),
            SizedBox(height: screenHeight * 0.04),
            CustomInputField(hintText: "Email", controller: _emailController),
            SizedBox(height: screenHeight * 0.04),
            CustomInputField(
                hintText: "Password", controller: _passwordController),
            SizedBox(height: screenHeight * 0.02),
            const Text("Password must be at least 8 characters"),
            SizedBox(height: screenHeight * 0.02),
            CustomButton(
              height: screenHeight * 0.08,
              width: screenWidth * 1,
              text: "Sing in",
              onPressed: () {
                print("Sing up");
              },
            ),
          ],
        ),
      ),
    );
  }
}
