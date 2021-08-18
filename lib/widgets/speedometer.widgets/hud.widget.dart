import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlippedTextSpeed extends StatefulWidget {
  const FlippedTextSpeed({Key? key}) : super(key: key);

  @override
  _FlippedTextSpeedState createState() => _FlippedTextSpeedState();
}

class _FlippedTextSpeedState extends State<FlippedTextSpeed> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Transform(
        transform: Matrix4.rotationX(3),
        alignment: Alignment.center,
        child: Container(
          height: 100.0,
          color: Colors.orange,
          child: Center(
            child: Text("GO", style: TextStyle(fontSize: 70.0)),
          ),
        ),
      ),
    );
  }
}
