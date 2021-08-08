import 'package:flutter/material.dart';
import 'package:tennis_court_booking/home_page.dart';
import 'package:tennis_court_booking/on_boarding.dart';
import 'package:tennis_court_booking/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SplashScreen(),
    );
  }
}
