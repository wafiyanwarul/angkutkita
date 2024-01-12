import 'package:angkotkita/main.dart';
import 'package:flutter/material.dart';

class DriverMoneyPage extends StatefulWidget {
  const DriverMoneyPage({super.key});

  @override
  State<DriverMoneyPage> createState() => _DriverMoneyPageState();
}

class _DriverMoneyPageState extends State<DriverMoneyPage> {
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
                'Driver\'s Money',
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
