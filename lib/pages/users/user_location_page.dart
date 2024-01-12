import 'package:angkotkita/pages/drivers/menu_page.dart';
import 'package:angkotkita/widgets/customer_order_bar.dart';
import 'package:angkotkita/widgets/map_widget.dart';
import 'package:angkotkita/widgets/top_bar_widget.dart';
import 'package:flutter/material.dart';

class UserLocationPage extends StatefulWidget {
  const UserLocationPage({super.key});

  @override
  State<UserLocationPage> createState() => _UserLocationPageState();
}

class _UserLocationPageState extends State<UserLocationPage> {
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
            left: 25,
            right: 25,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [],
            ),
          ),
        ],
      ),
    );
  }
}
