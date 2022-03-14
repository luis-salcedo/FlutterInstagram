import 'package:flutter/material.dart';
import 'package:instagram1/screens/main_screen.dart';
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
      //home: MainScreen(userProfilePicUrl: 'https://scontent-lga3-2.cdninstagram.com/v/t51.2885-19/64767739_240791230137761_566840008380514304_n.jpg?stp=dst-jpg_s320x320&_nc_ht=scontent-lga3-2.cdninstagram.com&_nc_cat=105&_nc_ohc=aw3NTS7LnNIAX_MLx9l&edm=ABfd0MgBAAAA&ccb=7-4&oh=00_AT_0Ps_TUJ9IAc_178VacOC73jJHBlbpIOc-VC4HtH0qQA&oe=6235794D&_nc_sid=7bff83',),
    );
  }
}
