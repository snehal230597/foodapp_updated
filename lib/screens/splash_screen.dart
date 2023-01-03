import 'dart:async';
import 'package:flutter/material.dart';
import 'package:food_app/screens/navigation_screen.dart';
import 'package:food_app/screens/welcome.dart';
import 'package:food_app/screens/welcome2.dart';
import 'package:food_app/screens/welcome3.dart';
import 'package:food_app/screens/welcome4.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (_) => WelcomeScreen(),
          // builder: (_) => NavigationScreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.5, 0),
            end: Alignment(0.5, 0.8443132638931274),
            colors: [
              Color(0xffff1054),
              Color(0xffff461e),
            ],
          ),
        ),
        child: Center(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width * 0.5,
            child: FittedBox(
              fit: BoxFit.contain,
              child: Image.asset('assets/images/splash.png'),
            ),
          ),
        ),
      ),
    );
  }
}
