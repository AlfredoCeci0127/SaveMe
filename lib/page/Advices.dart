import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Consigli/Cons1.dart';
import 'package:flutter_application_1/Consigli/Cons2.dart';
import 'package:flutter_application_1/Consigli/Cons3.dart';
import 'package:flutter_application_1/Consigli/Cons4.dart';
import 'package:flutter_application_1/Consigli/Cons5.dart';
import 'package:flutter_application_1/Consigli/Cons6.dart';
import 'package:flutter_application_1/Consigli/Cons7.dart';
import 'package:flutter_application_1/Widget/UserPreferences/UserSimplePreferences.dart';

import '../Widget/AdviceButton.dart';

class AdvicesPage extends StatefulWidget {
  String name;
  AdvicesPage({Key? key, required this.name}) : super(key: key);

  @override
  State<AdvicesPage> createState() => _AdvicesPageState();
}

class _AdvicesPageState extends State<AdvicesPage> {
  var color_red = Color.fromARGB(255, 231, 40, 40);

  @override
  void initState() {
    super.initState();
    widget.name = UserSimplePreferences.getData() ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
            AppBar(backgroundColor: color_red, title: const Text("Consigli")),
        body: SingleChildScrollView(
            child: Center(
                child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              "Bene ${widget.name}, è arrivato il momento dei consigli. Qua sotto ne potrai trovare alcuni per impare a risparmiare al meglio!",
              style: const TextStyle(fontWeight: FontWeight.w900),
              textAlign: TextAlign.center,
            ),
          ),
          AdviceButton(text: "Consiglio 1", Lapagina: const Cons1Page()),
          const SizedBox(height: 8),
          AdviceButton(text: "Consiglio 2", Lapagina: const Cons2Page()),
          const SizedBox(height: 8),
          AdviceButton(text: "Consiglio 3", Lapagina: const Cons3Page()),
          const SizedBox(height: 8),
          AdviceButton(text: "Consiglio 4", Lapagina: const Cons4Page()),
          const SizedBox(height: 8),
          AdviceButton(text: "Consiglio 5", Lapagina: const Cons5Page()),
          const SizedBox(height: 8),
          AdviceButton(text: "Consiglio 6", Lapagina: const Cons6Page()),
          const SizedBox(height: 8),
          AdviceButton(text: "Consiglio 7", Lapagina: const Cons7Page()),
        ]))));
  }
}
