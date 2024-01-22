import 'package:angkotkita/main.dart';
import 'package:angkotkita/pages/drivers/menu_page.dart';
import 'package:angkotkita/widgets/customer_order_bar.dart';
import 'package:angkotkita/widgets/map_widget.dart';
import 'package:angkotkita/widgets/pick_location.dart';
import 'package:angkotkita/widgets/top_bar_widget.dart';
import 'package:angkotkita/widgets/user_map_widget.dart';
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
            // bottom: 50,
            child: UserMaps(),
          ),
          Positioned(
            top: 60 ,
            bottom: 50,
            left: 20,
            right: 20,
            child: Column(
              children: [
                PickLocationwidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
