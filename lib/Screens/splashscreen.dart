// splash_screen.dart
import 'dart:async';
import 'package:flutter/material.dart';

import 'package:flutter_application_1/Screens/login.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 2),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image:
                AssetImage('android/assets/Black and Grey Modern Aesthetic Hipster Font Logo.png'), // Adjust the asset path
            fit: BoxFit.cover,
          ),
        ),
        // child: Center(
        //   child:
        //       FlutterLogo(size: 100), // You can customize this part as needed
        // ),
      ),
    );
  }
} 
