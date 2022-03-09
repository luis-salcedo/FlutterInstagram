import 'package:flutter/material.dart';
import 'screens/main_screen.dart';
import 'screens/insights.dart';
import 'screens/engagement.dart';
import 'screens/settings.dart';
//import 'networking/facebook_api.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {

    final tabs = [
      const MainScreen(),
      Insights(),
      Engagement(),
      Settings(),
    ];
    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          appBarTheme: const AppBarTheme(color: Colors.black),
          scaffoldBackgroundColor: Colors.black,
          primaryColor: Colors.black,
          backgroundColor: Colors.blueGrey),
      home: Scaffold(
        //bottomNavigationBar: BottomNavWidget(),
        body: tabs[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0.0,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.insights,
                color: Colors.black,
              ),
              label: 'Insights',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.heart_broken,
                color: Colors.black,
              ),
              label: 'Engagement',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                color: Colors.black,
              ),
              label: 'Settings',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.green[800],
          onTap: _onItemTapped,
        ),
      ),
      //initialRoute: '/settings',
      /*routes: {
        //'/': (context) => const MainScreen(),
        '/': (context) => const MainScreen(),
        '/insights': (context) => Insights(),
        '/engagement': (context) => Engagement(),
        '/settings': (context) => Settings(),
      },*/
    );
  }
}
