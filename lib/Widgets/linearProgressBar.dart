import 'dart:async';

import 'package:angkotkita/Pages/landingPage.dart';
import 'package:angkotkita/Pages/loginPage.dart';
import 'package:angkotkita/main.dart';
import 'package:flutter/material.dart';

class linearProgressBar extends StatefulWidget {
  const linearProgressBar({super.key});

  @override
  State<linearProgressBar> createState() => _linearProgressBarState();
}

class _linearProgressBarState extends State<linearProgressBar> {
  bool _isLoading = true;
  double _progressValue = 0.0;

  @override
  void initState() {
    super.initState();
    // Melakukan simulasi loading selama 40 mili detik
    Timer.periodic(Duration(milliseconds: 40), (timer) {
      setState(() {
        _progressValue += 0.01;
        if (_progressValue >= 1.0) {
          _isLoading = false;
          timer.cancel();
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => loginPage()),
          );
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: _isLoading
            ? Container(
                width: 230  ,
                height: 10,
                // decoration: BoxDecoration(
                //   borderRadius: BorderRadius.circular(50),
                //   border: Border.all(width: 2),
                // ),
                child: LinearProgressIndicator(
                  value: _progressValue,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.blueAccent),
                  backgroundColor: Colors.white, // Warna latar belakang
                  borderRadius: BorderRadius.circular(50),
                ),  
              )
            : Container(), // Tidak ada ElevatedButton
      ),
    );
  }
}