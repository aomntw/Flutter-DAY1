import 'package:flutter/material.dart';
import 'package:helloworld/counter.dart';
import 'package:helloworld/Profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ProfileScreen());
  }
}
