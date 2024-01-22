import 'package:angkotkita/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PickLocationwidget extends StatefulWidget {
  const PickLocationwidget({super.key});

  @override
  State<PickLocationwidget> createState() => _PickLocationwidgetState();
}

class _PickLocationwidgetState extends State<PickLocationwidget> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        height: 60,
        width: double.maxFinite,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(30)),
        child: TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            hintText: 'Pick your location',
            hintStyle: TextStyle(
              fontFamily: 'LexendDeca',
              fontSize: 15,  
            ),
            suffixIcon: Icon(CupertinoIcons.search),
            suffixIconColor: bgColor,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
          ),
        ),
      ),
    );
  }
}
