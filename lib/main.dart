import 'package:flutter/material.dart';

import 'homescreen.dart';
import 'login.dart';
import 'package:assignment/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.deepPurple,
      theme: ThemeData(
        fontFamily: "Roboto",
        primaryColor: Colors.deepPurple,
        primarySwatch: Colors.deepPurple,
      ),
      home: HomePage(),
    );
  }
}
