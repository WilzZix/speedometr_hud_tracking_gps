import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class SpeedometerWidget extends StatefulWidget {
  const SpeedometerWidget({
    Key? key,
  }) : super(key: key);

  @override
  _SpeedometerWidgetState createState() => _SpeedometerWidgetState();
}

class _SpeedometerWidgetState extends State<SpeedometerWidget> {
  @override
  Widget build(BuildContext context) {
    return SfRadialGauge(
      axes: <RadialAxis>[
        RadialAxis(
          minimum: 0,
          maximum: 200,
          axisLineStyle: AxisLineStyle(
              thicknessUnit: GaugeSizeUnit.factor, thickness: 0.03),
          majorTickStyle:
          MajorTickStyle(length: 6, thickness: 4, color: Colors.white),
          minorTickStyle:
          MinorTickStyle(length: 3, thickness: 3, color: Colors.white),
          axisLabelStyle: GaugeTextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14),
          pointers: <GaugePointer>[
            NeedlePointer(
              value: 45,
              tailStyle: TailStyle(width: 8, length: 0.15),
            )
          ],
          annotations: <GaugeAnnotation>[
            GaugeAnnotation(
                widget: Container(
                  child: Column(children: <Widget>[
                    Text(
                      "100",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'km/h',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ]),
                ),
                angle: 90,
                positionFactor: 2.5)
          ],
        ),
      ],
    );
  }
}

