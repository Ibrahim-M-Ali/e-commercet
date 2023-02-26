// ignore_for_file: prefer_const_constructors

import 'package:e_commerce/Ui/login/login.dart';
import 'package:e_commerce/Ui/login/mainscreenLR.dart';

import 'package:e_commerce/Ui/login/register.dart';
import 'package:flutter/material.dart';

import 'homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        'register': (context) => Register(),
        'login': (context) => Login(),
        'mainscreenLR': (context) => MainScreenLR(),
      },
    );
  }
}
