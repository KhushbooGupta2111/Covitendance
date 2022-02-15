import 'package:covitendance/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Signup_Login(),
  ));
}

class Signup_Login extends StatefulWidget {
  const Signup_Login({Key? key}) : super(key: key);

  @override
  _Signup_LoginState createState() => _Signup_LoginState();
}

class _Signup_LoginState extends State<Signup_Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello World"),
        backgroundColor: mainColor_Blue,
      ),
      body: Column(
        children: <Widget> [
          FlatButton(onPressed: () {},
              child: Text("Register"),
            color: mainColor_Blue,
            textColor: mainColor_White,
          ),
          SizedBox(height: 5,),
          FlatButton(onPressed: () {},
              child: Text("Sign Up"),
            color: mainColor_Blue,
            textColor: mainColor_White,
          )
        ],
      ),
    );
  }
}
