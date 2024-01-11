import 'package:angkotkita/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopActiveBarWidget extends StatefulWidget {
  const TopActiveBarWidget({super.key});

  @override
  State<TopActiveBarWidget> createState() => _TopActiveBarWidgetState();
}

class _TopActiveBarWidgetState extends State<TopActiveBarWidget> {
  bool _isActive = false;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: Container( // White Box for Switch and Text
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.8),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 10,
              offset: Offset(0, 3),
            )
          ],
        ),

        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween, // Space between widgets in Row
            children: [
              // Active and Inactive Text
              Text(
                _isActive ? 'Active' : 'Inactive', 
                style: TextStyle(
                  color: _isActive ? secondColor : Colors.black,
                  fontFamily: 'LexendDeca',
                  fontWeight: FontWeight.w300,
                  fontSize: 17,
                ),
              ),
              // Switch Button 
              CupertinoSwitch(
                value: _isActive,
                onChanged: (value) {
                  setState(() {
                    _isActive = value;
                    // print(_isActive);
                  });
                },
                activeColor: secondColor, // Active Color
                trackColor: Colors.grey, // Inactive Color
              ),
            ],
          ),
        ),
      ),
    );
  }
}
