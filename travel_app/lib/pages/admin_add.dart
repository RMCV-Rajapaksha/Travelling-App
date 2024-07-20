import 'package:cloud_firestore/cloud_firestore.dart';
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
  final TextEditingController _placeNameController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();

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
                hintText: "Place Name", controller: _placeNameController),
            SizedBox(height: screenHeight * 0.02),
            CustomInputField(
                hintText: "Description", controller: _descriptionController),
            SizedBox(height: screenHeight * 0.02),
            CustomInputField(hintText: "Price", controller: _priceController),
            SizedBox(height: screenHeight * 0.02),
            CustomButton(
              height: screenHeight * 0.08,
              width: screenWidth * 1,
              text: "Add Data",
              onPressed: () {
                var db = FirebaseFirestore.instance;
                final placeData = <String, dynamic>{
                  "name": _placeNameController.text,
                  "description": _descriptionController.text,
                  "price": _priceController.text
                };
                db.collection("places").add(placeData).then(
                    (DocumentReference doc) =>
                        print('DocumentSnapshot added with ID: ${doc.id}'));
              },
            ),
          ],
        ),
      ),
    );
  }
}
