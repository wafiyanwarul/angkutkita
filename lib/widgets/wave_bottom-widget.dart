import 'package:angkotkita/main.dart';
import 'package:angkotkita/pages/onLogin_page.dart';
import 'package:angkotkita/pages/register_page.dart';
import 'package:flutter/material.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class waveBottomWidget extends StatelessWidget {
  const waveBottomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            // Wave Widget Here
            Container(
              height: 30,
              child: WaveWidget(
                config: CustomConfig(
                  gradients: [
                    [Colors.white, Colors.blue.shade400],
                    [Colors.white, Colors.white],
                  ],
                  durations: [35000, 19440],
                  heightPercentages: [0.05, 0.15],
                  blur: MaskFilter.blur(BlurStyle.solid, 10),
                ),
                waveAmplitude: 3,
                size: Size(double.infinity, double.infinity),
              ),
            ),
            Container(
              // background of both buttons
              color: Colors.white,
              height: 170,
              child: Column(
                children: [
                  Container(
                    // make the background button fill horizontally
                    color: Colors.white,
                    height: 10,
                  ),
                  // Make Space Before Login Button
                  SizedBox(
                    height: 10,
                  ),
                  // 2 Button Log In and Sign Up
                  Column(
                    children: [
                      // Login Button
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => onLoginPage(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                            horizontal: 150,
                            vertical: 10,
                          ),
                          primary: bgColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontFamily: 'LexendDeca',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      // Spacebar
                      SizedBox(
                        height: 15,
                      ),
                      // Sign Up Button
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => registerPage(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                            horizontal: 50,
                            vertical: 10,
                          ),
                          primary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                            side: BorderSide(
                              color: bgColor,
                              width: 2.5,
                            ),
                          ),
                        ),
                        child: Text(
                          'New to the family? Sign Up!',
                          style: TextStyle(
                            color: bgColor,
                            fontSize: 18.0,
                            fontFamily: 'LexendDeca',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
