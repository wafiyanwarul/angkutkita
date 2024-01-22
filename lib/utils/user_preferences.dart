// import 'dart:convert';

// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class UserPreferences {
//   static late SharedPreferences _preferences;

//   static const _keyUser = 'user';
//   static const myUser = User(
//     imagePath: 'https://images.unsplash.com/photo-1457449940276-e8deed18bfff?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
//     name: 'Rimaza Ahmad', 
//     email: 'rimazaahmad@gmail.com',
//     phoneNum: '089912345678',
//   );

//   static Future init() async =>  
//   _preferences = await SharedPreferences.getInstance();

//   static Future setUser(User user) async {
//     final json = jsonEncode(user.toJson());

//     await _preferences.setString(_keyUser, json); 
//   }
// }