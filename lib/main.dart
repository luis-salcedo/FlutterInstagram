import 'package:flutter/material.dart';
import 'screens/main_screen.dart';
import 'screens/insights.dart';
import 'screens/engagement.dart';
import 'screens/settings.dart';
import 'screens/testing_screen.dart';
import 'screens/login_screen.dart';
//import 'networking/facebook_api.dart';
import 'screens/login_screen.dart';

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
      theme: ThemeData.dark().copyWith(
          appBarTheme: const AppBarTheme(color: Colors.black),
          scaffoldBackgroundColor: Colors.black,
          primaryColor: Colors.black,
          backgroundColor: Colors.blueGrey),
      home: LoginScreen(),

    );
  }
}
