import 'package:faality/screens/home/nav.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: nav(),
        debugShowCheckedModeBanner: false,
    );
  }
}
