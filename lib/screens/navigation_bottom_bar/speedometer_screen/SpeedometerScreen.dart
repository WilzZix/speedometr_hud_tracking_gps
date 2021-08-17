import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:speedometer/speedometer.dart';

class SpeedometerScreen extends StatefulWidget {
  const SpeedometerScreen({Key? key}) : super(key: key);

  @override
  _SpeedometerScreenState createState() => _SpeedometerScreenState();
}

class _SpeedometerScreenState extends State<SpeedometerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SPEEDOMETER'),),
      body:SpeedOMeter(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.all(8),
              child: FloatingActionButton(
                onPressed: () {},
                child: Icon(Icons.navigate_before),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: FloatingActionButton(
                onPressed: () {},
                child: Icon(Icons.navigate_next),
              ),
            )
          ],
        ),
      ),
    );
  }
}
