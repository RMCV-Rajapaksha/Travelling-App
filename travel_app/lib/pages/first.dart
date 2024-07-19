import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/animation.dart';
import 'package:travel_app/components/button.dart';
import 'package:travel_app/components/theme.dart';

class Start extends StatefulWidget {
  const Start({super.key});

  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);

    _animation = Tween<double>(begin: 0, end: 20).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Template(
      screenWidth: screenWidth,
      screenHeight: screenHeight,
      theChild: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Form(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AnimatedBuilder(
                    animation: _animation,
                    builder: (context, child) {
                      return Transform.translate(
                        offset: Offset(0, _animation.value),
                        child: child,
                      );
                    },
                    child: Image.asset(
                      'assets/images/landmarks.png',
                      width: 400,
                      height: 400,
                    ),
                  ),
                  Text(
                    'Select one of the following options to continue',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      fontSize: screenHeight * 0.018,
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.02,
                  ),
                  CustomButton(
                    height: screenHeight * 0.08,
                    width: screenWidth * 1,
                    text: "As a Admin",
                    onPressed: () {},
                  ),
                  SizedBox(
                    height: screenHeight * 0.02,
                  ),
                  CustomButton(
                    height: screenHeight * 0.08,
                    width: screenWidth * 1,
                    text: "As a User",
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
