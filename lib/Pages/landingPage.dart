import 'package:angkotkita/widgets/linearProgressBar.dart';
import 'package:flutter/material.dart';
import 'package:angkotkita/main.dart';

class landingPage extends StatefulWidget {
  const landingPage({super.key});

  @override
  State<landingPage> createState() => _landingPageState();
}

class _landingPageState extends State<landingPage> {
  Color bgColor = const Color(0xFF27374D);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: bgColor, 
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Image.asset(
                'assets/images/angkotKitaLogo.png',
                height: 220,
              ),
            ),
            Text(
              'AngkutKita',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w900,
                fontFamily: 'LexendDeca',
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // Linear Progress Bar
            linearProgressBar(),
          ],
        ),
      ),
    );
  }
}
