import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseConnection {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  // Add a place to the Firestore database
  Future<void> addPlace(
      String userId, String place, String description, String url) async {
    final placeData = {
      "userId": userId,
      "place": place,
      "description": description,
      "URL": url,
      "price": "N/A" // Replace with actual price if available
    };

    try {
      await _db.collection("places").add(placeData);
    } catch (e) {
      print(e);
    }
  }

  // Update an existing place in the Firestore database
  Future<void> updatePlace(
      String documentId, String place, String description, String url) async {
    final placeData = {
      "place": place,
      "description": description,
      "URL": url,
      "price": "N/A" // Replace with actual price if available
    };

    try {
      await _db.collection("places").doc(documentId).update(placeData);
    } catch (e) {
      print(e);
    }
  }

  // Delete a place from the Firestore database
  Future<void> deletePlace(String documentId) async {
    try {
      await _db.collection("places").doc(documentId).delete();
    } catch (e) {
      print(e);
    }
  }
}
