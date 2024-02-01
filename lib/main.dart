import 'package:fitness_app_live/screens/ageScreen/ageScreen.dart';
import 'package:flutter/material.dart';

import 'screens/OnBoardingScreen/onBoardingScreen.dart';
import 'screens/genderScreen/genderScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.black,
      debugShowCheckedModeBanner: false,
      home: AgePage(),
    );
  }
}
