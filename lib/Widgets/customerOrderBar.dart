import 'package:angkotkita/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustOrderBar extends StatefulWidget {
  const CustOrderBar({super.key});

  @override
  State<CustOrderBar> createState() => _CustOrderBarState();
}

class _CustOrderBarState extends State<CustOrderBar> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.8),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        padding: EdgeInsets.only(
          top: 15,
          left: 20,
          right: 20,
          bottom: 100,
        ),
        child: Column(
          children: [
            // Text Order In
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Order In',
                  style: TextStyle(
                    color: bgColor,
                    fontFamily: 'LexendDeca',
                    fontWeight: FontWeight.w600,
                    fontSize: 30,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(),
            // Customer Order Profile 1
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Customer Image
                CircleAvatar(
                  radius: 28,
                  backgroundImage: AssetImage('assets/images/me.png'),
                  // Set backgroundColor to transparent to see outline
                  backgroundColor: Colors.transparent,
                  foregroundColor: Colors.blue, // Outline Color
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: bgColor,
                        width: 2, // Ketebalan outline
                      ),
                    ),
                  ),
                ),
                // Profile Name Customer, Distance, and Cost
                Container(
                  // color: Colors.green,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Curstomer Name
                      Text(
                        'Rimaza Ahmad',
                        style: TextStyle(
                          color: bgColor,
                          fontFamily: 'LexendDeca',
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        ),
                      ),
                      // Distance and Cost
                      Container(
                        // color: Colors.red,
                        padding: EdgeInsets.symmetric(horizontal: 0),
                        width: 153,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // DIstance
                            Text(
                              '500 m',
                              style: TextStyle(
                                color: bgColor,
                                fontFamily: 'LexendDeca',
                                fontWeight: FontWeight.w100,
                                fontSize: 15,
                              ),
                            ),
                            // Cost
                            Text(
                              'Rp. 7.000',
                              style: TextStyle(
                                color: bgColor,
                                fontFamily: 'LexendDeca',
                                fontWeight: FontWeight.w100,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                // Icons and Text Accept
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Paper Plane Icons
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        CupertinoIcons.paperplane_fill,
                        color: bgColor,
                        size: 30,
                      ),
                    ),
                    // Text Accept
                    Text(
                      'Accept',
                      style: TextStyle(
                        color: bgColor,
                        fontFamily: 'LexendDeca',
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            Container(
              height: 1,
              width: double.infinity,
              decoration: BoxDecoration(
                color: bgColor,
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            SizedBox(height: 10),
            // Customer Order Profile
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Customer Image
                CircleAvatar(
                  radius: 28,
                  backgroundImage: AssetImage('assets/images/me.png'),
                  // Set backgroundColor to transparent to see outline
                  backgroundColor: Colors.transparent,
                  foregroundColor: Colors.blue, // Outline Color
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: bgColor,
                        width: 2, // Ketebalan outline
                      ),
                    ),
                  ),
                ),
                // Profile Name Customer, Distance, and Cost
                Container(
                  // color: Colors.green,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Curstomer Name
                      Text(
                        'Rimaza Ahmad',
                        style: TextStyle(
                          color: bgColor,
                          fontFamily: 'LexendDeca',
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        ),
                      ),
                      // Distance and Cost
                      Container(
                        // color: Colors.red,
                        padding: EdgeInsets.symmetric(horizontal: 0),
                        width: 153,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // DIstance
                            Text(
                              '500 m',
                              style: TextStyle(
                                color: bgColor,
                                fontFamily: 'LexendDeca',
                                fontWeight: FontWeight.w100,
                                fontSize: 15,
                              ),
                            ),
                            // Cost
                            Text(
                              'Rp. 7.000',
                              style: TextStyle(
                                color: bgColor,
                                fontFamily: 'LexendDeca',
                                fontWeight: FontWeight.w100,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                // Icons and Text Accept
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Paper Plane Icons
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        CupertinoIcons.paperplane_fill,
                        color: bgColor,
                        size: 30,
                      ),
                    ),
                    // Text Accept
                    Text(
                      'Accept',
                      style: TextStyle(
                        color: bgColor,
                        fontFamily: 'LexendDeca',
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
