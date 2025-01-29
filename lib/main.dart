import 'package:flutter/material.dart';
import 'package:mentalhealth/WelcomeScreens/welcomescreen1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Removes debug banner
      title: 'Welcome Screens',
      theme: ThemeData(
        primaryColor: const Color(0xff4e3321),
        fontFamily: 'Arial',
      ),
      home: const WelcomeScreen1(),
    );
  }
}
