import 'package:flutter/material.dart';

class Cons7Page extends StatefulWidget {
  const Cons7Page({Key? key}) : super(key: key);

  @override
  State<Cons7Page> createState() => _Cons4State();
}

class _Cons4State extends State<Cons7Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("7° Consiglio"),
          backgroundColor: Color.fromARGB(255, 231, 40, 40),
          toolbarHeight: 38),
      body: Center(child: Text("Il settimo consiglio è ... ")),
    );
  }
}
