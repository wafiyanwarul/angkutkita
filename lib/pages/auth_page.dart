import 'package:angkotkita/pages/login_page.dart';
import 'package:angkotkita/pages/onLogin_page.dart';
import 'package:angkotkita/pages/users/user_profile_page.dart';
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
            return UserProfilePage();
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
