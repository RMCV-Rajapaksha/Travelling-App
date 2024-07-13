import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:travel_app/pages/intro_pages/page1.dart';
import 'package:travel_app/pages/intro_pages/page2.dart';
import 'package:travel_app/pages/intro_pages/page3.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

//keep track of last page
bool lastPage = false;

class _OnboardingState extends State<Onboarding> {
  //controller to kee track which page we're on
  PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          controller: _controller,
          onPageChanged: (index) {
            if (index == 2) {
              setState(() {
                lastPage = true;
              });
            } else {
              setState(() {
                lastPage = false;
              });
            }
          },
          children: const [
            Intro_page1(),
            Intro_page2(),
            Intro_page3(),
          ],
        ),
        Container(
            alignment: Alignment(0, 0.85),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //skip button
                GestureDetector(
                    onTap: () {
                      _controller.jumpToPage(2);
                    },
                    child: const Text(
                      "skip",
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 20,
                      ),
                    )),

                //dot indicator
                SmoothPageIndicator(controller: _controller, count: 3),

                //next/done button
                lastPage
                    ? GestureDetector(
                        onTap: () {
                          // Navigator.push(
                          //     context,
                          //     // MaterialPageRoute(
                          //     //     builder: (context) => const signIn())
                          //         );
                        },
                        child: const Text(
                          "Get started",
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 20,
                          ),
                        ))
                    : GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                              duration: Duration(milliseconds: 500),
                              curve: Curves.easeIn);
                        },
                        child: const Text(
                          "Next",
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 20,
                          ),
                        )),
              ],
            )),
      ],
    ));
  }
}
