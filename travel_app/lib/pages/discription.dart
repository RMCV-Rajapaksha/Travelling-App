import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:travel_app/components/button.dart';

List<String> image = [
  'assets/images/rice.jpg',
  'assets/images/head.png',
  'assets/images/lasa.jpg',
  'assets/images/potato.jpg',
  'assets/images/noodle.jpg',
];

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    double screenWidth = mediaQueryData.size.width;
    double screenHeight = mediaQueryData.size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [_head(screenWidth, screenHeight)],
          // Assuming box is a ValueListenable declared somewhere in your code
        ),
      ),
    );
  }

  Widget _head(double screenWidth, double screenHeight) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              width: double.infinity,
              height: screenHeight * 0.4,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Image.network(
                'assets/images/intro_1.png',
                fit: BoxFit.fill,
              ),
            ),
            ...List.generate(1, (index) {
              const tile = 1;
              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Container(
                  height: screenHeight * 0.1,
                  child: ListTile(
                    title: const Text(
                      'Pasta Mozzarella',
                      style: TextStyle(
                          color: Color.fromARGB(255, 79, 48, 95),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text(
                      'Non Veg Classic Meat',
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                    trailing: const Icon(Icons.favorite),
                    onTap: () {},
                  ),
                ),
              );
            }),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    RatingBarIndicator(
                      rating: 2.75,
                      itemBuilder: (context, index) => const Icon(
                        Icons.star,
                        color: Color.fromARGB(255, 79, 48, 95),
                      ),
                      itemCount: 5,
                      itemSize: 15,
                      direction: Axis.horizontal,
                    ),
                  ],
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '                                              1850 LKR',
                      style: TextStyle(
                        color: Color.fromARGB(255, 79, 48, 95),
                        fontSize: 12,
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            CustomButton(
              height: screenHeight * 0.08,
              width: screenWidth * 1,
              text: "Add to cart",
              onPressed: () {
                print("Sing in");
              },
            ),
            SizedBox(
              height: screenHeight * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: Container(
                child: const Text(
                  'Pasta Mozzarella is a unique blend of cheesy goodness'
                  'and fluffy flaky pasta richness. Pasta Mozzarella is served '
                  'with your choice of protein or vegetable and any  '
                  'topping of the selected classic and spicy ranges* '
                  '\n '
                  '\n'
                  'Portion serves two*',
                  style: TextStyle(
                    fontSize: 12,
                    // You can customize other text properties here
                  ),
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.003,
            ),
            const Divider(
              color: Colors.grey,
              indent: 25.0,
              endIndent: 25.0,
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
