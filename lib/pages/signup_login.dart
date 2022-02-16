// import 'dart:html';

import 'package:covitendance/utils/colors.dart';
import 'package:flutter/material.dart';

class SignUp_Login extends StatelessWidget {
  const SignUp_Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget> [
              // Image.asset("assets/images/Illustrations/SignupLogin.png"),
              TextButton(
                onPressed: () {} ,
                 child: Text(
                   "Register"
                 ),
                
              ),
              TextButton(
                onPressed: () {} ,
                 child: Text(
                   "Login"
                 )
              )
            ],
          ),
        ),
      ),
    );
  }
}
