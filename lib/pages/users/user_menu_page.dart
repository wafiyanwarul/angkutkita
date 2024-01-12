import 'package:angkotkita/main.dart';
import 'package:angkotkita/pages/drivers/home_driver_page.dart';
import 'package:angkotkita/pages/users/user_location_page.dart';
import 'package:angkotkita/pages/users/user_money_page.dart';
import 'package:angkotkita/pages/users/user_profile_page.dart';
import 'package:angkotkita/pages/users/user_route_page.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class UserMenuPage extends StatefulWidget {
  const UserMenuPage({super.key});

  @override
  State<UserMenuPage> createState() => _UserMenuPageState();
}

class _UserMenuPageState extends State<UserMenuPage> {
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  int _bottomNavIndex = 0;

  final screens = [
    UserLocationPage(),
    UserMoneyPage(),
    UserRoutePage(),
    UserProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: CurvedNavigationBar(
        index: _bottomNavIndex,
        height: 70,
        items: <Widget>[
          _buildNavItem(Icons.home_filled, 'Home', 0),
          _buildNavItem(Icons.money, 'Money', 1),
          _buildNavItem(Icons.route_rounded, 'Route', 2),
          _buildNavItem(Icons.perm_identity, 'Profile', 3),
        ],
        color: Colors.white,
        buttonBackgroundColor: Colors.amber[600],
        backgroundColor: Colors.transparent,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 200),
        onTap: (index) {
          setState(() {
            _bottomNavIndex = index;
          });
        },
        letIndexChange: (index) => true,
      ),
      body: screens[_bottomNavIndex],
    );
  }

  Widget _buildNavItem(IconData icon, String label, int index) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 40, // Sesuaikan lebar container sesuai keinginan Anda
          height: 40, // Sesuaikan tinggi container sesuai keinginan Anda
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: _bottomNavIndex == index ? Colors.amber[600] : Colors.transparent,
          ),
          child: Icon(
            icon,
            size: 30,
            color: _bottomNavIndex == index ? Colors.white : Colors.grey,
          ),
        ),
        // SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            color: _bottomNavIndex == index ? Colors.white : Colors.grey,
            fontSize: 10,
          ),
        ),
      ],
    );
  }
}
