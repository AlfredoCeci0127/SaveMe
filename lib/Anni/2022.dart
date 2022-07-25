import 'package:flutter/material.dart';
import 'package:flutter_application_1/Anni/2022/Agosto.dart';
import 'package:flutter_application_1/Anni/2022/Aprile.dart';
import 'package:flutter_application_1/Anni/2022/Dicembre.dart';
import 'package:flutter_application_1/Anni/2022/Febbraio2022.dart';
import 'package:flutter_application_1/Anni/2022/Gennaio2022.dart';
import 'package:flutter_application_1/Anni/2022/Giugno.dart';
import 'package:flutter_application_1/Anni/2022/Luglio.dart';
import 'package:flutter_application_1/Anni/2022/Maggio.dart';
import 'package:flutter_application_1/Anni/2022/Marzo2022.dart';
import 'package:flutter_application_1/Anni/2022/Novembre.dart';
import 'package:flutter_application_1/Anni/2022/Ottobre.dart';
import 'package:flutter_application_1/Anni/2022/SerieStorica.dart';
import 'package:flutter_application_1/Anni/2022/Settembre.dart';
import 'package:flutter_application_1/Widget/AdviceButton.dart';
import 'package:flutter_application_1/Widget/MonthButton.dart';
import 'package:flutter_application_1/Widget/UserPreferences/UserSimplePreferences.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application_1/Widget/DropDownMenu.dart';

class VentiDuePage extends StatefulWidget {
  String name;
  VentiDuePage({Key? key, required this.name}) : super(key: key);

  @override
  State<VentiDuePage> createState() => _VentiDuePageState();
}

class _VentiDuePageState extends State<VentiDuePage> {
  var color_green = const Color.fromARGB(255, 29, 139, 33);

  @override
  void initState() {
    super.initState();
    widget.name = UserSimplePreferences.getData() ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: color_green, title: const Text("2022")),
        body: SingleChildScrollView(
            child: Column(children: [
          Container(
            child: DropDownMenu(),
            height: 40,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 33, 190, 38),
              //borderRadius: BorderRadius.circular(25.0),
              border: Border.all(color: color_green, width: 1),
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                'Ciao ${widget.name},\n in questa sezione potrai controllare le tue spese.\n Premi sul mese attuale e aggiungi le tue spese mensili',
                style: const TextStyle(fontWeight: FontWeight.w900),
                textAlign: TextAlign.center,
              )),
          const SizedBox(height: 15),
          TextButton(
              child: const Text('Controlla la serie storica'),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Timeseries(
                          //
                          sumRIS: 0,
                          sumDEL: 0,
                          sumDIV: 0,
                          sumIST: 0,
                          sumSAN: 0,
                          sumSPE: 0,
                          sumUTI: 0,
                          sumAPP: 0,
                          //
                          sumRISFeb: 0,
                          sumDELFeb: 0,
                          sumDIVFeb: 0,
                          sumISTFeb: 0,
                          sumSANFeb: 0,
                          sumSPEFeb: 0,
                          sumUTIFeb: 0,
                          sumAPPFeb: 0,
                          //
                          sumRISMar: 0,
                          sumDELMar: 0,
                          sumDIVMar: 0,
                          sumISTMar: 0,
                          sumSANMar: 0,
                          sumSPEMar: 0,
                          sumUTIMar: 0,
                          sumAPPMar: 0,
                          //
                          sumRISApr: 0,
                          sumDELApr: 0,
                          sumAPPApr: 0,
                          sumDIVApr: 0,
                          sumISTApr: 0,
                          sumSANApr: 0,
                          sumSPEApr: 0,
                          sumUTIApr: 0,
                          //
                          sumRISMag: 0,
                          sumDELMag: 0,
                          sumAPPMag: 0,
                          sumDIVMag: 0,
                          sumISTMag: 0,
                          sumSANMag: 0,
                          sumSPEMag: 0,
                          sumUTIMag: 0,
                          //
                          sumRISGiu: 0,
                          sumDELGiu: 0,
                          sumAPPGiu: 0,
                          sumDIVGiu: 0,
                          sumISTGiu: 0,
                          sumSANGiu: 0,
                          sumSPEGiu: 0,
                          sumUTIGiu: 0,
                          //
                          sumRISLug: 0,
                          sumDELLug: 0,
                          sumAPPLug: 0,
                          sumDIVLug: 0,
                          sumISTLug: 0,
                          sumSANLug: 0,
                          sumSPELug: 0,
                          sumUTILug: 0,
                          //
                          sumRISAgo: 0,
                          sumDELAgo: 0,
                          sumAPPAgo: 0,
                          sumDIVAgo: 0,
                          sumISTAgo: 0,
                          sumSANAgo: 0,
                          sumSPEAgo: 0,
                          sumUTIAgo: 0,
                          //
                          sumRISSet: 0,
                          sumDELSet: 0,
                          sumAPPSet: 0,
                          sumDIVSet: 0,
                          sumISTSet: 0,
                          sumSANSet: 0,
                          sumSPESet: 0,
                          sumUTISet: 0,
                          //
                          sumRISOtt: 0,
                          sumDELOtt: 0,
                          sumAPPOtt: 0,
                          sumDIVOtt: 0,
                          sumISTOtt: 0,
                          sumSANOtt: 0,
                          sumSPEOtt: 0,
                          sumUTIOtt: 0,
                          //
                          sumRISNov: 0,
                          sumDELNov: 0,
                          sumAPPNov: 0,
                          sumDIVNov: 0,
                          sumISTNov: 0,
                          sumSANNov: 0,
                          sumSPENov: 0,
                          sumUTINov: 0,
                          //
                          sumRISDic: 0,
                          sumDELDic: 0,
                          sumAPPDic: 0,
                          sumDIVDic: 0,
                          sumISTDic: 0,
                          sumSANDic: 0,
                          sumSPEDic: 0,
                          sumUTIDic: 0,
                          //
                        )));
              }),
          const Divider(
              color: Color.fromARGB(255, 103, 177, 104), thickness: 3),
          const SizedBox(height: 20),
          const Text(
            'Seleziona il mese attule',
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 20),
          Container(
              height: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(width: 2),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MonthButton(Lapagina: GennaioPage(), text: 'Gennaio'),
                      MonthButton(Lapagina: FebbraioPage(), text: 'Febbraio'),
                      MonthButton(Lapagina: MarzoPage(), text: 'Marzo'),
                      MonthButton(Lapagina: AprilePage(), text: 'Aprile'),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MonthButton(Lapagina: MaggioPage(), text: 'Maggio'),
                      MonthButton(Lapagina: GiugnoPage(), text: 'Giugno'),
                      MonthButton(Lapagina: LuglioPage(), text: 'Luglio'),
                      MonthButton(Lapagina: AgostoPage(), text: 'Agosto'),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MonthButton(Lapagina: SettembrePage(), text: 'Settembre'),
                      MonthButton(Lapagina: NovembrePage(), text: 'Ottobre'),
                      MonthButton(Lapagina: OttobrePage(), text: 'Novembre'),
                      MonthButton(Lapagina: DicembrePage(), text: 'Dicembre'),
                    ],
                  ),
                  const SizedBox(width: 5),
                ],
              )),
        ])));
  }
}
