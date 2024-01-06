import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  final String? id;
  final String name;
  final String email;
  final String password;
  final String phoneNo;

  const UserModel({
    this.id,
    required this.email,
    required this.password,
    required this.name,
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

  // // STEP 1 - Map User fetched from Firebase to UserModel
  // factory UserModel.fromSnapshot(DocumentSnapshot<Map<String, dynamic>>document) {
  //   final data = document.data()!;
  //   return UserModel {
  //     id: document.id;
  //     name: data["Name"];
  //     email: data["Email"];
  //     password: data["Password"];
  //     phoneNo: data["Phone"];
  //   };
  // }
}
