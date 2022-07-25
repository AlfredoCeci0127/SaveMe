import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExpenseBox extends StatefulWidget {
  Widget buttonText;
  Widget buttonIcon;
  String text;
  String testoTots;
  Widget testoFormField;
  ExpenseBox(
      {Key? key,
      required this.text,
      required this.buttonText,
      required this.testoTots,
      required this.testoFormField,
      required this.buttonIcon})
      : super(key: key);

  @override
  State<ExpenseBox> createState() => _ExpenseBoxState();
}

class _ExpenseBoxState extends State<ExpenseBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 200,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 241, 239, 239),
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(color: Colors.black, width: 1)),
      padding: const EdgeInsets.all(15),
      child: (Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.text,
                style: GoogleFonts.poppins(),
              ),
              const SizedBox(width: 100),
              widget.buttonIcon,
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(widget.testoTots),
            const SizedBox(width: 50),
            widget.buttonText,
          ]),
          const SizedBox(height: 15),
          widget.testoFormField,
        ],
      )),
    );
  }
}
