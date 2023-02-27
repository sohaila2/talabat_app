import 'dart:async';

import 'package:flutter/material.dart';
import 'package:talabat_app/views/home_screen.dart';
import 'package:talabat_app/views/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 2),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => OnboardingScreen())));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: Center(
        child: Text(
          "Talabat",
          style: TextStyle(
            fontSize: 50,
            color: Colors.white,
            // fontFamily: "ramada insignia "
          ),
        ),
      ),
    );
  }
}
