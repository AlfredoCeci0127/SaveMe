import 'package:flutter/material.dart';

class Cons6Page extends StatefulWidget {
  const Cons6Page({Key? key}) : super(key: key);

  @override
  State<Cons6Page> createState() => _Cons4State();
}

class _Cons4State extends State<Cons6Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("6° CONSIGLIO"),
          backgroundColor: Color.fromARGB(255, 231, 40, 40),
          toolbarHeight: 38),
      body: const Center(
          child: Text(
              "ATTENZIONE AI SALDI.\n Nonostante possano essere molto appetibili i saldi sono uno dei principali mecccanismi utilizzati dalle compagnie per indure a farci spendere di più 'perchè costa meno'.\n Quando in realtà spenderemo di più. \nCompra quello che veramente ti interessa. Stai Attento")),
    );
  }
}
