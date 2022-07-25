import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class MonthSeriesBox extends StatefulWidget {
  var month_color;
  String text1;
  String text2;
  String text_month;
  MonthSeriesBox(
      {Key? key,
      required this.text1,
      required this.text_month,
      required this.text2,
      required this.month_color})
      : super(key: key);

  @override
  State<MonthSeriesBox> createState() => _MonthSeriesBoxState();
}

class _MonthSeriesBoxState extends State<MonthSeriesBox> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            padding:
                const EdgeInsets.only(left: 30, right: 30, bottom: 20, top: 20),
            height: 280,
            width: 380,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              //border: Border.all(color: Colors.black, width: 1),
              color: widget.month_color,
            ),
            child: RichText(
                text: TextSpan(
                    style: const TextStyle(color: Colors.black, fontSize: 15),
                    children: [
                  TextSpan(
                      text: widget.text_month,
                      style: GoogleFonts.russoOne(
                          textStyle: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 25,
                      ))),
                  TextSpan(
                      text: widget.text1,
                      style: const TextStyle(fontWeight: FontWeight.w400)),
                  TextSpan(
                      text: widget.text2,
                      style: GoogleFonts.russoOne(
                          textStyle: const TextStyle(
                        fontWeight: FontWeight.w200,
                        fontSize: 15,
                      ))),
                ]))));
  }
}
