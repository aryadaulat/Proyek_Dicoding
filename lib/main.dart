import 'package:flutter/material.dart';
// import 'package:flutter_firstapp/detail_screen.dart';
import 'package:flutter_firstapp/login.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static const String _title = 'Wisata Bandung';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(),
      home: const Login(),
    );
  }
}
