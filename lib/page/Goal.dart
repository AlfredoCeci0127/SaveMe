import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/Widget/UserPreferences/UserSimplePreferences.dart';

class GoalPage extends StatefulWidget {
  String name;
  GoalPage({Key? key, required this.name}) : super(key: key);

  @override
  State<GoalPage> createState() => _GoalPageState();
}

class _GoalPageState extends State<GoalPage> {
  String Dato1 = '';
  double Num1 = 0.0;
  String Dato2 = '';
  double Num2 = 0.0;
  double Res1 = 0;
  final color_purple = Color.fromARGB(255, 124, 15, 143);

  @override
  void initState() {
    super.initState();
    widget.name = UserSimplePreferences.getData() ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: color_purple,
          title: const Text("Obiettivo Risparmio")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              "Ciao ${widget.name}, in questa sezione potrai definire un obietti di risparmio, come un computer da 2'000€ tra 5 mesi e scoprire quanto dovrai risparmiare ogni mese",
              style: const TextStyle(fontWeight: FontWeight.w900),
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                initialValue: Dato1,
                onChanged: (Dato1) => Num1 = double.tryParse(Dato1) ?? 0,
                decoration:
                    const InputDecoration(hintText: "Quota di risparmio"),
                keyboardType: TextInputType.number,
              )),
          Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                initialValue: Dato2,
                onChanged: (Dato2) => Num2 = double.tryParse(Dato2) ?? 0,
                decoration: const InputDecoration(
                    hintText: "Tra quanto tempo lo vuoi raggiungere?"),
                keyboardType: TextInputType.number,
              )),
          const SizedBox(height: 15),
          TextButton(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  )),
                  backgroundColor: MaterialStateProperty.all(color_purple)),
              child: const Text("Premi per vedere il risultato",
                  style: TextStyle(color: Colors.white, fontSize: 15)),
              onPressed: () {
                setState(() {
                  Res1 = Num1 / Num2;
                });
              }),
          const SizedBox(height: 60),
          Container(
              height: 125,
              width: 375,
              decoration: BoxDecoration(
                border: Border.all(color: color_purple, width: 2),
                borderRadius: BorderRadius.circular(25.0),
              ),
              child: Center(
                child: Text(
                  "Ogni mese dovrai risparmiare\n$Res1 €",
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 20),
                ),
              )),
        ],
      ),
    );
  }
}
