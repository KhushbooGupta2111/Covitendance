// import 'dart:html';

import 'package:covitendance/utils/colors.dart';
import 'package:covitendance/utils/constants.dart';
import 'package:flutter/cupertino.dart';
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
            children: <Widget>[
              Image.asset(
                SignUp_Login_Image,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                    "Register",
                  style: TextStyle(
                    fontSize: 20,
                    backgroundColor: mainColor_blue,
                    color: mainColor_white,
                  ),

                ),
              ),
              TextButton(onPressed: () {}, child: Text("Login"))
            ],
          ),
        ),
      ),
    );
  }
}
