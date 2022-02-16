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
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Register",
                  style: TextStyle(
                    fontSize: 20,
                    color: mainColor_blue,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.only(left: 20),
                    primary: Colors.white,
                    //onPrimary: Colors.black,
                    shadowColor: Colors.white60,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Register",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.only(left: 20),
                    primary: Colors.white,
                    onPrimary: Colors.black,
                    shadowColor: Colors.white60,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
