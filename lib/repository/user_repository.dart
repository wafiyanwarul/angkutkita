// import 'package:angkotkita/models/user_model.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class UserRepository extends GetxController {
//   static UserRepository get instance => Get.find();

//   final _db = FirebaseFirestore.instance;

//   // Store user in Firestore
//   createUser(UserModel user) async {
//     await _db.collection("Users").add(user.toJSON()).whenComplete(() {
//       Get.snackbar(
//         "Success",
//         "Your account has been created.",
//         snackPosition: SnackPosition.BOTTOM,
//         backgroundColor: Colors.green.withOpacity(0.1),
//         colorText: Colors.green,
//       );
//     }).catchError((error, StackTrace) {
//       Get.snackbar("Error", "Something went wrong, please try again",
//           snackPosition: SnackPosition.BOTTOM,
//           backgroundColor: Colors.redAccent.withOpacity(0.1),
//           colorText: Colors.red);
//       print("ERROR - $error");
//     });
//   }
// }
