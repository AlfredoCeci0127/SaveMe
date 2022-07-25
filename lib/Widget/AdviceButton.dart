import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AdviceButton extends StatelessWidget {
  late Widget Lapagina;
  final String text;
  AdviceButton({required this.Lapagina, Key? key, required this.text})
      : super(key: key);
  final fontPoppins = GoogleFonts.poppins();

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 332,
        height: 80,
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          border: Border.all(color: Colors.black, width: 1),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(.2),
                offset: const Offset(0, 5),
                blurRadius: 8)
          ],
        ),
        child: TextButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Lapagina));
            },
            child: Center(
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.black, fontSize: 20),
              ),
            )));
  }
}
