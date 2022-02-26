import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:covitendance/utils/colors.dart';

class GoogleLoginPage extends StatefulWidget {
  const GoogleLoginPage({Key? key}) : super(key: key);

  @override
  _GoogleLoginPageState createState() => _GoogleLoginPageState();
}

class _GoogleLoginPageState extends State<GoogleLoginPage> {
  GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);

  @override
  Widget build(BuildContext context) {
    GoogleSignInAccount? user = _googleSignIn.currentUser;
    return Scaffold(
      backgroundColor: mainColor_blue,
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () async{
                  await _googleSignIn.signIn();
                  setState(() {});
                },
                child: Text(
                  "Google Sign In",
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
              SizedBox(
                height: 25,
              ),
              ElevatedButton(
                onPressed: () async{
                  await _googleSignIn.signIn();
                  setState(() {});
                },
                child: Text(
                  "Google Signout",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.only(
                        top: 20, bottom: 20, left: 30, right: 30),
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
