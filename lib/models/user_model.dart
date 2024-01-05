import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  final String? id;
  final String name;
  final String email;
  final String password;
  final String phoneNo;

  const UserModel({
    this.id,
    required this.name,
    required this.email,
    required this.password,
    required this.phoneNo,
  });

  toJSON() {
    return {
      "Name": name,
      "Email": email,
      "Password": password,
      "PhoneNo": phoneNo
    };
  }
}
