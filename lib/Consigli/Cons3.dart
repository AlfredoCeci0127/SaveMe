import 'package:flutter/material.dart';

class Cons3Page extends StatefulWidget {
  const Cons3Page({Key? key}) : super(key: key);

  @override
  State<Cons3Page> createState() => _Cons3State();
}

class _Cons3State extends State<Cons3Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("3° Consiglio"),
          backgroundColor: Color.fromARGB(255, 231, 40, 40),
          toolbarHeight: 38),
      body: const Center(child: Text('''
MANGIARE QUELLO CHE SI HA A CASA
Mangiando spesso quello che si ha in casa evita di spendere soldi inutili su spedizioni e aumenti di prezzo dei vari ristoranti sugli alimenti.
Può sembrare un risparmio da poco, ma sulla lunga fa la differenza.
''')),
    );
  }
}
