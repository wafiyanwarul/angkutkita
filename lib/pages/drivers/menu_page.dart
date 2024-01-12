import 'package:angkotkita/main.dart';
import 'package:angkotkita/pages/drivers/money_driver_page.dart';
import 'package:angkotkita/pages/drivers/profile_driver_page.dart';
import 'package:angkotkita/pages/drivers/route_driver_page.dart';
import 'package:angkotkita/pages/drivers/home_driver_page.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  int _bottomNavIndex = 0;

  final screens = [
    HomePageDriver(),
    DriverMoneyPage(),
    DriverRoutePage(),
    DriverProfilePage(),
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
