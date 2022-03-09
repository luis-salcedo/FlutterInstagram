import 'package:flutter/material.dart';

class BottomNavWidget extends StatefulWidget {
  BottomNavWidget({Key? key}) : super(key: key);

  @override
  State<BottomNavWidget> createState() => _BottomNavWidgetState();
}

class _BottomNavWidgetState extends State<BottomNavWidget> {
  int _selectedIndex = 0;
  int get something{
    return _selectedIndex;
  }
  @override
  Widget build(BuildContext context) {

    const TextStyle optionStyle =
    TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
    const List<Widget> _widgetOptions = <Widget>[
      Text(
        'Index 0: Home',
        style: optionStyle,
      ),
      Text(
        'Index 1: Insights',
        style: optionStyle,
      ),
      Text(
        'Index 2: Engagement',
        style: optionStyle,
      ),
      Text(
        'Index 2: Settings',
        style: optionStyle,
      ),
    ];

    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }
    return BottomNavigationBar(
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
    );
  }
}
