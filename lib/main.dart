import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:covitendance/pages/dashboard.dart';
import 'package:covitendance/pages/login.dart';
import 'package:covitendance/pages/splash_screen.dart';
import 'package:covitendance/pages/google_login.dart';
import 'package:covitendance/utils/colors.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Covitendance();
  }
}

class Covitendance extends StatefulWidget {
  const Covitendance({Key? key}) : super(key: key);

  @override
  State<Covitendance> createState() => _CovitendanceState();
}

class _CovitendanceState extends State<Covitendance> {
  final Stream<QuerySnapshot> teacherStream =
      FirebaseFirestore.instance.collection('teacher_detail').snapshots();

  @override
  Widget build(BuildContext context) {
    final Future<FirebaseApp> _initialization = Firebase.initializeApp();
    return FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            print("Something went wrong");
          }
          if (snapshot.connectionState == ConnectionState.done) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              home: Covitendance(),
            );
          }
          return CircularProgressIndicator();
        });
  }
}
