import 'package:angkotkita/Pages/landingPage.dart';
import 'package:angkotkita/Pages/loginPage.dart';
import 'package:angkotkita/pages/authPage.dart';
import 'package:angkotkita/pages/onLoginPage.dart';
import 'package:angkotkita/pages/registerPage.dart';
import 'package:angkotkita/pages/testProfilePage.dart';
import 'package:angkotkita/widgets/linearProgressBar.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

Color bgColor = Color(0xFF27374D);

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Angkot Kita',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: bgColor,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: landingPage(),
    );
  }
}
