import 'package:flutter/material.dart';

class Cons2Page extends StatefulWidget {
  const Cons2Page({Key? key}) : super(key: key);

  @override
  State<Cons2Page> createState() => _Cons2State();
}

class _Cons2State extends State<Cons2Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("2° Consiglio"),
            backgroundColor: Color.fromARGB(255, 231, 40, 40),
            toolbarHeight: 38),
        body: const Padding(
          padding: EdgeInsets.all(20),
          child: Center(child: Text('''
Andiamo adesso alla questione del conto corrente. Io ti consiglio di avere 2 conti:\n
uno per i risparmi (Conto 1) e uno per i soldi da spendere al mese (Conto 2).\n
Tu ogni mese dovrai depositare sul Conto 2 i soldi che ti sei prefissato/a di spendere ogni mese. Quindi tu avrai un Conto 1 ad accumolo e un Conto 2 di spesa. Ricordati che su internet è pieno di CC online GRATIS, facili da aprire
          ''')),
        ));
  }
}
