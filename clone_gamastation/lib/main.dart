import 'package:clone_gamastation/screens/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Gama Station',
        theme: ThemeData(fontFamily: 'Inter'),
        home: LoginPage());
  }
}
