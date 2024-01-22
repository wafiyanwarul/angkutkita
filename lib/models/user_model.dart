import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  final String imagePath;
  // final String? id;
  final String name;
  final String email;
  final String phoneNum;

  const User({
    required this.imagePath,
    // required this.id,
    required this.name,
    required this.email,
    required this.phoneNum,
  });

  Map<String, dynamic> toJson() => {
    'imagePath': imagePath,
    'name': name,
    'email': email,
    'phoneNum': phoneNum,
  };
}
