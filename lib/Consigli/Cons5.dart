import 'package:flutter/material.dart';

class Cons5Page extends StatefulWidget {
  const Cons5Page({Key? key}) : super(key: key);

  @override
  State<Cons5Page> createState() => _Cons4State();
}

class _Cons4State extends State<Cons5Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("5° Consiglio"),
          backgroundColor: Color.fromARGB(255, 231, 40, 40),
          toolbarHeight: 38),
      body: const Center(child: Text('''
NON DIVERSIFICARE TROPPO LA SPESA
Non diversificando troppo la spesa andremo sempre più vicino alla nostra spesa ideale, che si aggiusterà per quantità e scadenza.
In questo modo non compreremo 5 pacchetti di insalata perchè in quel momento ne abbiamo voglia ma 3, perchè sappiamo che storicamente non ne abbiamo mai mangiati più di 3 in 6 giorni.
''')),
    );
  }
}
