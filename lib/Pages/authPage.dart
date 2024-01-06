import 'package:angkotkita/pages/loginPage.dart';
import 'package:angkotkita/pages/onLoginPage.dart';
import 'package:angkotkita/pages/testProfilePage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class authPage extends StatefulWidget {
  const authPage({super.key});

  @override
  State<authPage> createState() => _authPageState();
}

class _authPageState extends State<authPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          // user is logged in
          if (snapshot.hasData) {
            return testProfilePage();
          }
          //  user is NOT logged in
          else {
            return loginPage();
          }
        },
      ),
    );
  }
}
