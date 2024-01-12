import 'package:angkotkita/main.dart';
import 'package:flutter/material.dart';

class UserRoutePage extends StatefulWidget {
  const UserRoutePage({super.key});

  @override
  State<UserRoutePage> createState() => _UserRoutePageState();
}

class _UserRoutePageState extends State<UserRoutePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'User\'s Route',
                style: TextStyle(
                  fontFamily: 'LexendDeca',
                  fontWeight: FontWeight.w800,
                  fontSize: 40,
                  color: bgColor,
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Coming Soon',
                style: TextStyle(
                  fontFamily: 'LexendDeca',
                  fontWeight: FontWeight.w800,
                  fontSize: 40,
                  color: bgColor,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}


