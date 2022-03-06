import 'package:covitendance/pages/Register.dart';
import 'package:covitendance/pages/dashboard.dart';
import 'package:covitendance/pages/signup_login.dart';
import 'package:covitendance/utils/colors.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:splash_screen_view/SplashScreenView.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  // void initState() {
  //   super.initState();
  // }

  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashScreenView(
        navigateRoute: HomePage(),
        duration: 10000,
        imageSize: 200,
        imageSrc: "assets/images/Logos/Circle Logo.png",
        backgroundColor: mainColor_blue,
      ),
    );
  }
}
