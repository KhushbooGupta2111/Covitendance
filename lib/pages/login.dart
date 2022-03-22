import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:covitendance/utils/colors.dart';

class Covitendance extends StatefulWidget {
  const Covitendance({Key? key}) : super(key: key);

  @override
  State<Covitendance> createState() => _CovitendanceState();
}

class _CovitendanceState extends State<Covitendance> {
  get teacherStream => null;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
        stream: teacherStream,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            print('Sonething went wrong');
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          final List storedocs = [];
          snapshot.data!.docs.map((DocumentSnapshot document) {
            Map a = document.data() as Map<String, String>;
            storedocs.add(a);
            print(storedocs);
          });

          return MaterialApp(
              debugShowCheckedModeBanner: false,
              home: SafeArea(
                child: Scaffold(
                  body: ListView(
                    padding: const EdgeInsets.all(8),
                    children: <Widget>[
                      SizedBox(
                        width: 50,
                        height: 50,
                      ),
                      Card(
                          color: mainColor_blue,
                          elevation: 2.0,
                          child: Column(children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              // crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Container(
                                    padding: EdgeInsets.only(left: 10, top: 10),
                                    height: 100,
                                    child: Text("DBMS",
                                        style: TextStyle(
                                          fontSize: 30,
                                          color: mainColor_white,
                                        ))),
                                Container(
                                  margin: EdgeInsets.only(right: 10),
                                  child: Text(
                                    "Theory",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: mainColor_white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                TextButton(
                                    onPressed: () {},
                                    child: Container(
                                      width: 80,
                                      //color: Colors.grey[800],
                                      child: Icon(
                                        Icons.contact_mail_outlined,
                                        size: 50,
                                        color: Colors.orange,
                                      ),
                                    )),
                                TextButton(
                                    onPressed: () {},
                                    child: Container(
                                      child: Icon(
                                        Icons.bar_chart,
                                        size: 50,
                                        color: Colors.orange,
                                      ),
                                    )),
                                TextButton(
                                    onPressed: () {},
                                    child: Container(
                                      child: Icon(
                                        Icons.edit,
                                        size: 50,
                                        color: Colors.orange,
                                      ),
                                    ))
                              ],
                            )
                          ])),
                      Container(
                        height: 50,
                        color: Colors.amber[500],
                        child: const Center(child: Text('Entry B')),
                      ),
                      Container(
                        height: 50,
                        color: Colors.amber[100],
                        child: const Center(child: Text('Entry C')),
                      ),
                    ],
                  ),
                  // body: GoogleLoginPage(),
                ),
              ));
        });
  }
}
