import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:speedometr_hud_tracking_gps/widgets/speedometer.widgets/hud.widget.dart';
import 'package:speedometr_hud_tracking_gps/widgets/speedometer.widgets/speedometer.widget.dart';

class SpeedometerScreen extends StatefulWidget {
  const SpeedometerScreen({Key? key}) : super(key: key);

  @override
  _SpeedometerScreenState createState() => _SpeedometerScreenState();
}

class _SpeedometerScreenState extends State<SpeedometerScreen> {
  static const TextStyle optionStyle =
      TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    SpeedometerWidget(),
    FlippedTextSpeed(),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            'SPEEDOMETER',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.all(8),
              child: FloatingActionButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16.0))),
                backgroundColor: Colors.blueGrey,
                onPressed: () {
                  _onItemTapped(1);
                },
                child: Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: Column(
                    children: [
                      Text('100'),
                      Text('KMH'),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: FloatingActionButton(
                backgroundColor: Colors.blueGrey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(16.0),
                  ),
                ),
                onPressed: () {
                  _onItemTapped(0);
                },
                child: Icon(Icons.location_on_outlined),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
