import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:chat_app_project/screen/auth/login_screen/login_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.chat_bubble_rounded, // Chat icon
            color: Colors.blueAccent,
            size: 100.0,
          ),
          SizedBox(height: 20),
          Text(
            'ChatApp',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent,
            ),
          ),
        ],
      ),
      nextScreen: LoginScreen(),
      splashTransition: SplashTransition.fadeTransition,
      backgroundColor: Colors.white,
      duration: 3000, // Duration in milliseconds
    );
  }
}
