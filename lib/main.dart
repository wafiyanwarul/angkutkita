import 'package:angkotkita/Pages/landingPage.dart';
import 'package:angkotkita/Widgets/linearProgressBar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

Color bgColor = Color(0xFF27374D);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Angkot Kita',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: bgColor,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: landingPage(),
    );
  }
}
