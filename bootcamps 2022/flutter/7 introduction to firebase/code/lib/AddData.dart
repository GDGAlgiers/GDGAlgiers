import 'package:flutter/material.dart';
// Import the firebase_core and cloud_firestore plugin
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';





class AddData2 extends StatelessWidget {
  final String fullName;
  final String team;
  final String nationalteam;
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  AddData2(this.fullName, this.team, this.nationalteam);

  @override
  Widget build(BuildContext context) {
    // Create a CollectionReference called users that references the firestore collection
    CollectionReference users = FirebaseFirestore.instance.collection('Users');

    Future<void> addUser() {
      // Call the user's CollectionReference to add a new user
      return users
          .add({
            'full_name': fullName, // John Doe
            'team': team, // Stokes and Sons
            'nationalteam': nationalteam // 42
          })
          .then((value) => print("User Added"))
          .catchError((error) => print("Failed to add user: $error"));
    }

    return TextButton(
      onPressed: addUser,
      child: Text(
        "Add User",
      ),
    );
  }
}