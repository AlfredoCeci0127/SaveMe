import 'package:flutter/material.dart';

class Cons4Page extends StatefulWidget {
  const Cons4Page({Key? key}) : super(key: key);

  @override
  State<Cons4Page> createState() => _Cons4State();
}

class _Cons4State extends State<Cons4Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("4° Consiglio"),
          backgroundColor: Color.fromARGB(255, 231, 40, 40),
          toolbarHeight: 38),
      body: const Center(child: Text('''
FARE LA SPESA ONLINE
Facendo la spesa online pagheremo sulla spedizione, è vero.
Ma la differenza sta nel fatto che noi avremo già una lista (o una idea della lista) della spesa e non compreremo altre cose inutili perchè ci faremo attrarre dal marketing del supermercato''')),
    );
  }
}
