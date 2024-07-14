import 'package:flutter/material.dart';
import 'package:travel_app/components/card.dart';
import 'package:travel_app/components/input.dart';
import 'package:travel_app/components/navigationBar.dart';

import 'package:travel_app/components/theme.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController _search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Template(
        screenWidth: screenWidth,
        screenHeight: screenHeight * 0.8649,
        theChild: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: screenHeight * 0.04,
              ),
              const Text("Explore the beauty of the world",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(
                height: screenHeight * 0.01,
              ),
              CustomInputField(controller: _search, hintText: "Search"),
              Expanded(
                child: GridView.builder(
                  itemCount: 1000,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 10,
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
      ),
      bottomNavigationBar: const BottomNavBarFb3(),
    );
  }
}
