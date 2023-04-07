import 'package:flutter/material.dart';
import 'package:signin/signup.dart';
import 'package:signin/welcome_page.dart';
import 'package:signin/login.dart';

import 'package:signin/signup.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: signup(),

    );
  }

  
}