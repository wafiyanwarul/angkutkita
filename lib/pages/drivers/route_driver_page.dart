import 'package:angkotkita/main.dart';
import 'package:flutter/material.dart';

class DriverRoutePage extends StatefulWidget {
  const DriverRoutePage({super.key});

  @override
  State<DriverRoutePage> createState() => _DriverRoutePageState();
}

class _DriverRoutePageState extends State<DriverRoutePage> {
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
                'Driver\'s Route',
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
