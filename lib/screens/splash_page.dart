import 'dart:async';
import 'package:flutter/material.dart';
import 'package:qafworld_app/screens/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Navigate to the next screen after 3 seconds
    Timer(Duration(seconds: 3), () {
      // Replace 'NextScreen()' with the screen you want to navigate to
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LogInScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(
          'assets/logo.png', // Path to your splash image asset
          width: 200, // Adjust the width as needed
          height: 200, // Adjust the height as needed
          // Optional: You can use BoxFit.cover or BoxFit.contain to fit the image within the space
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
