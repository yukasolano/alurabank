import 'package:alurabank/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Alurabank());
}

class Alurabank extends StatelessWidget {
  const Alurabank({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Alurabank", home: HomeScreen());
  }
}
