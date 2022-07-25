import 'package:flutter_application_1/Widget/UserPreferences/UserSimplePreferences.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

class CalcoloPage extends StatefulWidget {
  String name;
  CalcoloPage({Key? key, required this.name}) : super(key: key);

  @override
  State<CalcoloPage> createState() => _CalcoloPageState();
}

class _CalcoloPageState extends State<CalcoloPage> {
  String temp1 = '';
  String Opz1 = '';
  int numb = 0;
  static int Intemp1 = 0;
  int Res = 0;
  int n = 0;
  List Lista = [];
  int val = 0;
  static final DateTime now = new DateTime.now();
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
  int SecondaParte = 0;
  List FlussoMesi = [];
  int y = NQMese - 1;
  String MeseCount = "";
  String Frase = '';
  List ListaFrasi = [];
  var color_yellow = Color.fromARGB(255, 236, 226, 79);
  String listaFrasi = '';

  @override
  void initState() {
    super.initState();
    widget.name = UserSimplePreferences.getData() ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
            AppBar(backgroundColor: color_yellow, title: const Text("Calcolo")),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(children: [
            Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  "Ciao ${widget.name}, in questa sezione, scegliendo una quota fissa di risparmio mensile potrai vedere a quanto ammonta il tuo risparmio dopo un determinato numero di mesi.\n\nPrima di tutto inserisci i dati!",
                  style: const TextStyle(fontWeight: FontWeight.w900),
                  textAlign: TextAlign.center,
                )),
            Padding(
                padding: const EdgeInsets.all(20),
                child: TextFormField(
                  initialValue: Opz1,
                  onChanged: (Opz1) => numb = int.tryParse(Opz1) ?? 0,
                  decoration: const InputDecoration(
                      hintText: "Quota di risparmio fissa mensile"),
                  keyboardType: TextInputType.number,
                )),
            Padding(
                padding: const EdgeInsets.all(20),
                child: TextFormField(
                  initialValue: temp1,
                  onChanged: (temp1) {
                    Intemp1 = int.tryParse(temp1) ?? 0;
                    print(Intemp1);
                  },
                  decoration: const InputDecoration(
                      hintText:
                          "Tra quanto mesi vuoi vedere il tuo risultato?"),
                  keyboardType: TextInputType.number,
                )),
            TextButton(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  )),
                  backgroundColor: MaterialStateProperty.all(color_yellow)),
              child: const Text(
                "Premi per vedere il risultato",
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
              onPressed: () {
                setState(() {
                  Res = numb * Intemp1;
                  SecondaParte = NQMese + Intemp1;

                  while (y < SecondaParte - 1) {
                    FlussoMesi.add(Mesi[y]);
                    MeseCount = Mesi[y];
                    y = y + 1;
                    n = n + 1;
                    val = numb * n;
                    Lista.add(val);
                    Frase = "Risparmio totalizzato a $MeseCount: $val\n";
                    ListaFrasi.add(Frase);
                  }
                  listaFrasi = ListaFrasi.toString()
                      .replaceAll('[', '')
                      .replaceAll(']', '')
                      .replaceAll(',', '');
                });
                ;
                ;
              },
            ),
            const SizedBox(height: 30),
            Container(
              width: 350,
              height: 180,
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                border: Border.all(color: color_yellow, width: 2),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(.5),
                      offset: const Offset(0, 10),
                      blurRadius: 15)
                ],
              ),
              child: SingleChildScrollView(
                child: Text(
                  listaFrasi,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ]),
        ));
  }
}
