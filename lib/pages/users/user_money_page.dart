import 'package:angkotkita/main.dart';
import 'package:flutter/material.dart';

class UserMoneyPage extends StatefulWidget {
  const UserMoneyPage({super.key});

  @override
  State<UserMoneyPage> createState() => _UserMoneyPageState();
}

class _UserMoneyPageState extends State<UserMoneyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'User\'s Money',
                style: TextStyle(
                  fontFamily: 'LexendDeca',
                  fontWeight: FontWeight.w800,
                  fontSize: 40,
                  color: Colors.white,
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
                  color: Colors.white,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
