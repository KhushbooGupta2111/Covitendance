import 'package:flutter/material.dart';

void main() {
  runApp(const Covitendance());
}

class Covitendance extends StatelessWidget {
  const Covitendance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Text(
      "Covitendance App",
    ));
  }
}
