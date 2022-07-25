import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/Consigli/Cons1.dart';
import 'package:flutter_application_1/Consigli/Cons2.dart';
import 'package:flutter_application_1/Consigli/Cons3.dart';
import 'package:flutter_application_1/Consigli/Cons4.dart';
import 'package:flutter_application_1/Consigli/Cons5.dart';
import 'package:flutter_application_1/Consigli/Cons6.dart';
import 'package:flutter_application_1/Consigli/Cons7.dart';
import '../Widget/AdviceButton.dart';
import "dart:math";

class ConsiglioDel7 extends StatelessWidget {
  ConsiglioDel7({Key? key}) : super(key: key);
  final List<Widget> ListaConsigli = [
    AdviceButton(text: "Consiglio 1", Lapagina: const Cons1Page()),
    AdviceButton(text: "Consiglio 2", Lapagina: const Cons2Page()),
    AdviceButton(text: "Consiglio 3", Lapagina: const Cons3Page()),
    AdviceButton(text: "Consiglio 4", Lapagina: const Cons4Page()),
    AdviceButton(text: "Consiglio 5", Lapagina: const Cons5Page()),
    AdviceButton(text: "Consiglio 6", Lapagina: const Cons6Page()),
    AdviceButton(text: "Consiglio 7", Lapagina: const Cons7Page())
  ];

  late var randomItem = (ListaConsigli..shuffle()).first;

  @override
  Widget build(BuildContext context) {
    return randomItem;
  }
}
