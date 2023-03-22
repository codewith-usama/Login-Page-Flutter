import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'login_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      title: "Login",
      home: AnimatedSplashScreen(
        splash: const Icon(
          Icons.login,
          size: 80.0,
          color: Colors.black54,
        ), nextScreen: const Login(),
      ),
    );
  }
}


