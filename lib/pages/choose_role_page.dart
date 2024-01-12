import 'package:angkotkita/main.dart';
import 'package:angkotkita/pages/drivers/menu_page.dart';
import 'package:angkotkita/pages/users/user_menu_page.dart';
import 'package:flutter/material.dart';

class ChooseRolePage extends StatefulWidget {
  const ChooseRolePage({super.key});

  @override
  State<ChooseRolePage> createState() => _ChooseRolePageState();
}

class _ChooseRolePageState extends State<ChooseRolePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          AppBar(
            leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
            backgroundColor: bgColor,
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Title
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'How can we help you?',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                        fontFamily: 'LexendDeca',
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                // Subtitile
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Select the option that you want',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w100,
                        fontFamily: 'LexendDeca',
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 70,
                ),
                // Box Driver
                Container(
                  height: 250,
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Roles Title
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Become a driver',
                            style: TextStyle(
                                color: bgColor,
                                fontFamily: 'LexendDeca',
                                fontSize: 25,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      // Spacebar
                      SizedBox(
                        height: 15,
                      ),
                      // Image center Driver
                      Container(
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MenuPage(),
                              ),
                            );
                          },
                          child: Image.asset(
                            'assets/images/driver.png',
                            width: 150,
                          ),
                        ),
                      )
                    ],
                  ),
                  padding: EdgeInsets.only(top: 15, bottom: 30),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.white.withOpacity(0.9),
                        Colors.white.withOpacity(0.3),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                // Spacebar
                SizedBox(
                  height: 25,
                ),
                // Box User
                Container(
                  height: 250,
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Roles Title
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Order an angkot',
                            style: TextStyle(
                                color: bgColor,
                                fontFamily: 'LexendDeca',
                                fontSize: 25,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      // Spacebar
                      SizedBox(
                        height: 15,
                      ),
                      // Image center Driver
                      Container(
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => UserMenuPage(),
                              ),
                            );
                          },
                          child: Image.asset(
                            'assets/images/angkotKitaLogo.png',
                            width: 150,
                          ),
                        ),
                      )
                    ],
                  ),
                  padding: EdgeInsets.only(top: 15, bottom: 30),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.white.withOpacity(0.9),
                        Colors.white.withOpacity(0.3),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
