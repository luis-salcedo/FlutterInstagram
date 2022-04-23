import 'package:flutter/material.dart';
import 'insights.dart';
import 'engagement.dart';
import 'main_screen.dart';
import 'settings.dart';
//import 'networking/facebook_api.dart';
//Instagram data api
import 'package:instagram_public_api/instagram_public_api.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({this.userName, this.password});
  String? userName;
  String? password;
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  FlutterInsta insta = FlutterInsta();
  late InstaProfileData user;
  String userID = '';
  String userFollowers = '';
  String userFollowings = '';
  bool userIsVerified = false;
  String userProfilePic = '';

  void getUserData() async {
    try {
      user = await insta.getProfileData('${widget.userName}');
    } catch (e) {
      // print('Error!$e');
    }
    setState(() {
      userID = user.username!;
      userFollowers = user.followers!;
      userFollowings = user.following!;
      userProfilePic = user.profilePicURL!;
      userIsVerified = user.isVerified!;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    getUserData();
    super.initState();
  }

  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final tabs = [
      MainScreen(
        userName: userID,
        userFollowers: userFollowers,
        userFollowing: userFollowings,
        userProfilePicUrl: userProfilePic,
      ),
      Insights(),
      const Engagement(),
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
          selectedItemColor: Colors.blue,
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
