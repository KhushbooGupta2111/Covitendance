// import 'dart:html';

import 'package:covitendance/utils/colors.dart';
import 'package:covitendance/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor_blue,
      body: Container(

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                SignUp_Login_Image,
              ),
              SizedBox(height: 50,),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Register as Teacher",
                  style: TextStyle(
                    fontSize: 20,
                    color: mainColor_blue,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(20),
                    primary: Colors.white,
                    onPrimary: Colors.black,
                    shadowColor: Colors.white60,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              SizedBox(height: 25,),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Register as Student",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(20),
                    primary: Colors.white,
                    onPrimary: Colors.black,
                    shadowColor: Colors.white60,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
