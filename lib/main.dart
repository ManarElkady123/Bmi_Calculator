// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:bmicalculator/FirstScreen.dart';
//import 'package:bmicalculator/SecondScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
   MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      home: FirstScreen(),
    // home: Secondscreen(),
    );
  }
}

class BmiCalculator extends StatefulWidget {
   BmiCalculator({super.key});

  @override
  State<BmiCalculator> createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
