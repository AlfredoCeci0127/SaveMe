import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widget/ConsiglioDel7.dart';
import 'package:flutter_application_1/Widget/MonthBox.dart';
import 'package:flutter_application_1/Widget/Nav.dart';
import 'package:flutter_application_1/Widget/UserPreferences/UserSimplePreferences.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  String name;
  HomePage({Key? key, required this.name}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  _HomePageState();
  static final DateTime now = DateTime.now();
  static final forma = DateFormat("yyyy-MM-dd");
  static String Mese = forma.format(now);
  static String SQMese = Mese.substring(5, 7);
  static List Mesi = [
    "Gennaio",
    "Febbraio",
    "Marzo",
    "Aprile",
    "Maggio",
    "Giugno",
    "Luglio",
    "Agosto",
    "Settembre",
    "Ottobre",
    "Novembre",
    "Dicembre",
    "Gennaio",
    "Febbraio",
    "Marzo",
    "Aprile",
    "Maggio",
    "Giugno",
    "Luglio",
    "Agosto",
    "Settembre",
    "Ottobre",
    "Novembre",
    "Dicembre"
  ];
  static int NQMese = int.parse(SQMese);
  var divisore = const Divider(
    thickness: 3,
    color: Colors.black,
  );

  @override
  void initState() {
    super.initState();
    widget.name = UserSimplePreferences.getData() ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavigationDrawerWidget(
          name: '',
        ),
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text("SaveMe"),
        ),
        body: SafeArea(
            child: Column(
          children: [
            const SizedBox(height: 40),
            Center(
                child: Text(
              '''Ciao ${widget.name},
Benvenuto su SaveMe. 
Qua potrai imparare a gestire al meglio 
i tuoi soldi e impare utili consigli su 
come migliorare''',
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            )),
            const SizedBox(height: 20),
            divisore,
            const SizedBox(height: 40),
            MonthBox(),
            const SizedBox(height: 40),
            divisore,
            const SizedBox(height: 10),
            const Text('Consiglio del momento'),
            const SizedBox(height: 10),
            ConsiglioDel7()
          ],
        )));
  }
}
