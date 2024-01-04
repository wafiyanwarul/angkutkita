import 'package:flutter/material.dart';
import 'package:angkotkita/widgets/waveBottomWidget.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  Color bgColor = const Color(0xFF27374D);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: bgColor,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 150),
                child: Container(
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
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 100),
                        child: Image.asset(
                          'assets/images/angkotKitaLogo.png',
                        ),
                      ),
                    ],
                  ),
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
