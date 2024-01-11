import 'package:angkotkita/widgets/customerOrderBar.dart';
import 'package:angkotkita/widgets/mapPage.dart';
import 'package:angkotkita/widgets/topBarWidget.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: MapWidget(),
          ),
          Positioned.fill(
            top: 80,
            // bottom: 50,
            left: 25,
            right: 25,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TopActiveBarWidget(),
                CustOrderBar(),
              ],
            ),
          ),

          // Column(
          //   children: [

          //   ],
          // ),
        ],
      ),
    );
  }
}
