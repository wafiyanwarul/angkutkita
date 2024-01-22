import 'package:flutter/material.dart';
import 'package:angkotkita/widgets/wave_bottom-widget.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  Color bgColor = const Color(0xFF27374D);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height * 0.15;

    return Scaffold(
      body: Container(
        color: bgColor,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: screenHeight),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Text(
                            'AngkutKita.',
                            style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.w900,
                              fontFamily: 'LexendDeca',
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Everywhere, Anywhere, Anytime.',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w300,
                              fontFamily: 'LexendDeca',
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: screenHeight,),
                    // Image AngkotKita
                    Container(
                      child: Image.asset(
                        'assets/images/angkotKitaLogo.png',
                        width: 250,
                      ),
                    ),
                  ],
                ),
              ),
              // buildLoginButton(),
              waveBottomWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
