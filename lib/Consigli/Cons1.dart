import 'package:flutter/material.dart';

class Cons1Page extends StatefulWidget {
  const Cons1Page({Key? key}) : super(key: key);

  @override
  State<Cons1Page> createState() => _Cons1State();
}

class _Cons1State extends State<Cons1Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("1° Consiglio"),
            backgroundColor: Color.fromARGB(255, 231, 40, 40),
            toolbarHeight: 38),
        body: const Padding(
          padding: EdgeInsets.all(20),
          child: Center(
              child: Text(
                  '''Prima di tutto ricordati che non si risparmia sulle grandi cose. Se un mese vuoi comprarti un paio di cuffie da 150 € puoi assolutamente farlo, basta che non diventi regola
        \nIl vero risparmio sta nelle piccole cose, i 5/10 € qua e là che alla fine del mese possono pesare anche 200/250 € se non sei stato attento.
        \nDovrai tagliare delle spese inutili che non ti cambiano la giornata''')),
        ));
  }
}
