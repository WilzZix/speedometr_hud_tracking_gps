import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:speedometr_hud_tracking_gps/screens/navigation_bottom_bar/speedometer_screen/SpeedometerScreen.dart';

class NavigationBar extends StatefulWidget {
  const NavigationBar({Key? key}) : super(key: key);

  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const List<Widget> _widgetOptions = <Widget>[
    SpeedometerScreen(),
    Text(
      'Index 1: Business',
    ),
    Text(
      'Index 2: School',
    ),
    Text(
      'Index 2: School',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black26,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.yellowAccent,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.speed), label: 'Speedometer'),
          BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart), label: 'Statistics'),
          BottomNavigationBarItem(
              icon: Icon(Icons.perm_device_info), label: 'Health info'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_pin), label: 'Profile'),
        ],
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
      ),
    );
  }
}
