import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class TimeSeriesWidget extends StatefulWidget {
  String text;
  TimeSeriesWidget({Key? key, required this.text}) : super(key: key);

  @override
  State<TimeSeriesWidget> createState() => _TimeSeriesWidgetState();
}

class _TimeSeriesWidgetState extends State<TimeSeriesWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 350,
        width: 380,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          border: Border.all(color: Colors.black, width: 1),
          color: Colors.white,
        ),
        child: Center(
            child: Padding(
          padding: const EdgeInsets.all(10),
          child: Text(
            '''${widget.text}
                ''',
            style: const TextStyle(color: Colors.black, fontSize: 14),
          ),
        )));
  }
}
