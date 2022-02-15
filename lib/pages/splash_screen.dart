import 'package:flutter/material.dart';
import 'dart:async';
import 'package:splash_screen_view/SplashScreenView.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  void initState() {
    super.initState();
  }

  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashScreenView(
        //navigateRoute: SignIn(),
        duration: 5000,
        imageSize: 100,
        imageSrc: "assets/images/logo-modified.png",
        backgroundColor: Colors.white,
      ),
    );
  }
}
