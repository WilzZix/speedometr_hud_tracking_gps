import 'package:flutter/material.dart';
import 'package:speedometr_hud_tracking_gps/dot_indicator_pages/entering_screens.dart';
import 'package:speedometr_hud_tracking_gps/screens/introduction_screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Init.instance.initialize(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return MaterialApp(home: Splash());
          } else {
            return MaterialApp(
              title: 'Flutter Demo',
              theme: ThemeData(
                primarySwatch: Colors.blue,
              ),
              home: MyHomePage(title: 'Flutter Demo Home Page'),
            );
          }
        });
  }
}
