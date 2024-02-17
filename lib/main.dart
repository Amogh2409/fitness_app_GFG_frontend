import 'package:fitness_app_live/screens/GoalScreen/GoalScreen.dart';
import 'package:fitness_app_live/screens/Login%20signUp/LoginSignup.dart';
import 'package:fitness_app_live/screens/Login%20signUp/forgotPassword.dart';
import 'package:fitness_app_live/screens/OnBoardingScreen/onBoardingScreen.dart';
import 'package:fitness_app_live/screens/activityLevelScreen/activityLevelScreen.dart';
import 'package:fitness_app_live/screens/homeScreen/homeScreen.dart';
import 'package:fitness_app_live/screens/weightScreen/WeightScreen.dart';

import 'package:flutter/material.dart';

import 'screens/ageScreen/ageScreen.dart';
import 'screens/genderScreen/genderScreen.dart';
import 'screens/heightScreen/heightScreen.dart';

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
      routes: {
        '/onboarding': (context) => OnBoardingScreen(),
        '/gender': (context) => GenderPage(),
        '/age': (context) => AgePage(),
        '/height': (context) => HeightPage(),
        '/weight': (context) => WeightPage(),
        '/activity': (context) => ActivityLevelPage(),
        '/goal': (context) => GoalPage(),
        '/forgotPassword': (context) => ForgotPassword(),
        
      },
      debugShowCheckedModeBanner: false,
      home: HomePage()
    );
  }
}
