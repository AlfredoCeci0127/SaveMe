import 'package:flutter/material.dart';
import 'package:collection/collection.dart';
import 'package:flutter_application_1/Widget/ExpenseBox.dart';
import 'package:flutter_application_1/Widget/UserPreferences/UserPreferencesOttobre.dart';

class OttobrePage extends StatefulWidget {
  const OttobrePage({Key? key}) : super(key: key);

  @override
  State<OttobrePage> createState() => _OttobrePageState();
}

class _OttobrePageState extends State<OttobrePage> {
  final _formKey = GlobalKey<FormState>();
  //RIS
  String viRISOtt = '';
  int viNRISOtt = 0;
  String totsRISOtt = '';
  int totRISOtt = 0;
  List<String> rislistaOtt = [];
  List<int> rislistaOttInt = [];
  int sumRISOtt = 0;
  String chooseRisOtt = '';
  int chooseIntRisOtt = 0;
  //DEL
  String viDELOtt = '';
  int viNDELOtt = 0;
  int totDELOtt = 0;
  String totsDELOtt = '';
  List<String> dellistaOtt = [];
  List<int> dellistaOttInt = [];
  int sumDELOtt = 0;
  String chooseDelOtt = '';
  int chooseIntDelOtt = 0;
  //SAN
  String viSANOtt = '';
  int viNSANOtt = 0;
  int totSANOtt = 0;
  String totsSANOtt = '';
  List<String> sanlistaOtt = [];
  List<int> sanlistaOttInt = [];
  int sumSANOtt = 0;
  String chooseSanOtt = '';
  int chooseIntSanOtt = 0;
  //IST
  String viISTOtt = '';
  int viNISTOtt = 0;
  int totISTOtt = 0;
  String totsISTOtt = '';
  List<String> istlistaOtt = [];
  List<int> istlistaOttInt = [];
  int sumISTOtt = 0;
  String chooseIstOtt = '';
  int chooseIntIstOtt = 0;
  //APP
  String viAPPOtt = '';
  int viNAPPOtt = 0;
  int totAPPOtt = 0;
  String totsAPPOtt = '';
  List<String> applistaOtt = [];
  List<int> applistaOttInt = [];
  int sumAPPOtt = 0;
  String chooseAppOtt = '';
  int chooseIntAppOtt = 0;
  //DIV
  String viDIVOtt = '';
  int viNDIVOtt = 0;
  int totDIVOtt = 0;
  String totsDIVOtt = '';
  List<String> divlistaOtt = [];
  List<int> divlistaOttInt = [];
  int sumDIVOtt = 0;
  String chooseDivOtt = '';
  int chooseIntDivOtt = 0;
  //UTI
  String viUTIOtt = '';
  int viNUTIOtt = 0;
  int totUTIOtt = 0;
  String totsUTIOtt = '';
  List<String> utilistaOtt = [];
  List<int> utilistaOttInt = [];
  int sumUTIOtt = 0;
  String chooseUtiOtt = '';
  int chooseIntUtiOtt = 0;
  //SPE
  String viSPEOtt = '';
  int viNSPEOtt = 0;
  int totSPEOtt = 0;
  String totsSPEOtt = '';
  List<String> spelistaOtt = [];
  List<int> spelistaOttInt = [];
  int sumSPEOtt = 0;
  String chooseSpeOtt = '';
  int chooseIntSpeOtt = 0;

  var color_green = const Color.fromARGB(255, 29, 139, 33);

  @override
  void initState() {
    super.initState();
    sumRISOtt = UserSimplePreferencesOttobre.getDatasumRISOtt() ?? 0;
    rislistaOtt = UserSimplePreferencesOttobre.getLisRISOtt() ?? [];
    sumDELOtt = UserSimplePreferencesOttobre.getDatasumDELOtt() ?? 0;
    dellistaOtt = UserSimplePreferencesOttobre.getLisRISOtt() ?? [];
    sumSANOtt = UserSimplePreferencesOttobre.getDatasumSANOtt() ?? 0;
    sanlistaOtt = UserSimplePreferencesOttobre.getLisRISOtt() ?? [];
    sumISTOtt = UserSimplePreferencesOttobre.getDatasumISTOtt() ?? 0;
    istlistaOtt = UserSimplePreferencesOttobre.getLisRISOtt() ?? [];
    sumAPPOtt = UserSimplePreferencesOttobre.getDatasumAPPOtt() ?? 0;
    applistaOtt = UserSimplePreferencesOttobre.getLisRISOtt() ?? [];
    sumDIVOtt = UserSimplePreferencesOttobre.getDatasumDIVOtt() ?? 0;
    divlistaOtt = UserSimplePreferencesOttobre.getLisRISOtt() ?? [];
    sumUTIOtt = UserSimplePreferencesOttobre.getDatasumUTIOtt() ?? 0;
    utilistaOtt = UserSimplePreferencesOttobre.getLisRISOtt() ?? [];
    sumSPEOtt = UserSimplePreferencesOttobre.getDatasumSPEOtt() ?? 0;
    spelistaOtt = UserSimplePreferencesOttobre.getLisRISOtt() ?? [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: color_green,
          title: const Text("Ottobre"),
        ),
        body: SingleChildScrollView(
            child: Center(
                child: Column(
          children: [
            const SizedBox(height: 20),
            ExpenseBox(
                text: 'Ristorante',
                buttonText: TextButton(
                    child: const Text('+ Aggiungi'),
                    onPressed: () async {
                      setState(() {
                        totRISOtt = viNRISOtt;
                        totsRISOtt = totRISOtt.toString();
                        rislistaOtt.add(totsRISOtt);
                        List<int> rislistaOttInt =
                            rislistaOtt.map(int.parse).toList();
                        sumRISOtt = rislistaOttInt.sum;
                      });
                      await UserSimplePreferencesOttobre.setDataLisRISOtt(
                          rislistaOtt);
                      await UserSimplePreferencesOttobre.setDatasumRISOtt(
                          sumRISOtt);
                    }),
                testoTots: 'La spesa totale è: $sumRISOtt',
                testoFormField: TextFormField(
                  initialValue: viRISOtt,
                  onChanged: (viRISOtt) =>
                      viNRISOtt = int.tryParse(viRISOtt) ?? 0,
                  decoration:
                      const InputDecoration(hintText: 'Digita la spesa'),
                ),
                buttonIcon: IconButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                                content: Stack(children: [
                              Form(
                                  key: _formKey,
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Wrap(children: [
                                          Text(
                                            '$rislistaOtt',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                rislistaOtt.removeAt(
                                                    chooseIntRisOtt - 1);
                                                await UserSimplePreferencesOttobre
                                                    .setDataLisRISOtt(
                                                        rislistaOtt);
                                                print(rislistaOtt);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                rislistaOtt.clear();
                                                await UserSimplePreferencesOttobre
                                                    .setDataLisRISOtt(
                                                        rislistaOtt);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseRisOtt,
                                            onChanged: (chooseRisOtt) {
                                              chooseIntRisOtt =
                                                  int.tryParse(chooseRisOtt) ??
                                                      0;
                                            })
                                      ]))
                            ]));
                          });
                    },
                    icon: const Icon(Icons.data_saver_on),
                    alignment: Alignment.topCenter)),
            const SizedBox(height: 20),
            ExpenseBox(
                text: 'Bar',
                buttonText: TextButton(
                    child: const Text('+ Aggiungi'),
                    onPressed: () async {
                      setState(() {
                        totDELOtt = viNDELOtt;
                        totsDELOtt = totDELOtt.toString();
                        dellistaOtt.add(totsDELOtt);
                        List<int> dellistaOttInt =
                            dellistaOtt.map(int.parse).toList();
                        sumDELOtt = dellistaOttInt.sum;
                      });
                      await UserSimplePreferencesOttobre.setDataLisDELOtt(
                          dellistaOtt);
                      await UserSimplePreferencesOttobre.setDatasumDELOtt(
                          sumDELOtt);
                    }),
                testoTots: 'La spesa totale è: $sumDELOtt',
                testoFormField: TextFormField(
                  initialValue: viDELOtt,
                  onChanged: (viDELOtt) =>
                      viNDELOtt = int.tryParse(viDELOtt) ?? 0,
                  decoration:
                      const InputDecoration(hintText: 'Digita la spesa'),
                ),
                buttonIcon: IconButton(
                    onPressed: () async {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                                content: Stack(children: [
                              Form(
                                  key: _formKey,
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Wrap(children: [
                                          Text(
                                            '$dellistaOtt',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                dellistaOtt.removeAt(
                                                    chooseIntRisOtt - 1);
                                                await UserSimplePreferencesOttobre
                                                    .setDataLisDELOtt(
                                                        dellistaOtt);
                                                print(dellistaOtt);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                dellistaOtt.clear();
                                                await UserSimplePreferencesOttobre
                                                    .setDataLisDELOtt(
                                                        dellistaOtt);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseDelOtt,
                                            onChanged: (chooseDelOtt) {
                                              chooseIntDelOtt =
                                                  int.tryParse(chooseDelOtt) ??
                                                      0;
                                            })
                                      ]))
                            ]));
                          });
                    },
                    icon: const Icon(Icons.data_saver_on),
                    alignment: Alignment.topCenter)),
            const SizedBox(height: 20),
            ExpenseBox(
                text: 'Sanità',
                buttonText: TextButton(
                    child: const Text('+ Aggiungi'),
                    onPressed: () async {
                      setState(() {
                        totSANOtt = viNSANOtt;
                        totsSANOtt = totSANOtt.toString();
                        sanlistaOtt.add(totsSANOtt);
                        List<int> sanlistaOttInt =
                            sanlistaOtt.map(int.parse).toList();
                        sumSANOtt = sanlistaOttInt.sum;
                      });
                      await UserSimplePreferencesOttobre.setDataLisSANOtt(
                          sanlistaOtt);
                      await UserSimplePreferencesOttobre.setDatasumSANOtt(
                          sumSANOtt);
                    }),
                testoTots: 'La spesa totale è: $sumSANOtt',
                testoFormField: TextFormField(
                  initialValue: viSANOtt,
                  onChanged: (viSANOtt) =>
                      viNSANOtt = int.tryParse(viSANOtt) ?? 0,
                  decoration:
                      const InputDecoration(hintText: 'Digita la spesa'),
                ),
                buttonIcon: IconButton(
                    onPressed: () async {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                                content: Stack(children: [
                              Form(
                                  key: _formKey,
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Wrap(children: [
                                          Text(
                                            '$sanlistaOtt',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                sanlistaOtt.removeAt(
                                                    chooseIntSanOtt - 1);
                                                await UserSimplePreferencesOttobre
                                                    .setDataLisSANOtt(
                                                        sanlistaOtt);
                                                print(sanlistaOtt);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                sanlistaOtt.clear();
                                                await UserSimplePreferencesOttobre
                                                    .setDataLisSANOtt(
                                                        sanlistaOtt);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseSanOtt,
                                            onChanged: (chooseSanOtt) {
                                              chooseIntSanOtt =
                                                  int.tryParse(chooseSanOtt) ??
                                                      0;
                                            })
                                      ]))
                            ]));
                          });
                    },
                    icon: const Icon(Icons.data_saver_on),
                    alignment: Alignment.topCenter)),
            const SizedBox(height: 20),
            ExpenseBox(
                text: 'Istruzione',
                buttonText: TextButton(
                    child: const Text('+ Aggiungi'),
                    onPressed: () async {
                      setState(() {
                        totISTOtt = viNISTOtt;
                        totsISTOtt = totISTOtt.toString();
                        istlistaOtt.add(totsISTOtt);
                        List<int> istlistaOttInt =
                            istlistaOtt.map(int.parse).toList();
                        sumISTOtt = istlistaOttInt.sum;
                      });
                      await UserSimplePreferencesOttobre.setDataLisISTOtt(
                          istlistaOtt);
                      await UserSimplePreferencesOttobre.setDatasumISTOtt(
                          sumISTOtt);
                    }),
                testoTots: 'La spesa totale è: $sumISTOtt',
                testoFormField: TextFormField(
                  initialValue: viISTOtt,
                  onChanged: (viISTOtt) =>
                      viNISTOtt = int.tryParse(viISTOtt) ?? 0,
                  decoration:
                      const InputDecoration(hintText: 'Digita la spesa'),
                ),
                buttonIcon: IconButton(
                    onPressed: () async {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                                content: Stack(children: [
                              Form(
                                  key: _formKey,
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Wrap(children: [
                                          Text(
                                            '$istlistaOtt',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                istlistaOtt.removeAt(
                                                    chooseIntIstOtt - 1);
                                                await UserSimplePreferencesOttobre
                                                    .setDataLisISTOtt(
                                                        istlistaOtt);
                                                print(istlistaOtt);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                istlistaOtt.clear();
                                                await UserSimplePreferencesOttobre
                                                    .setDataLisISTOtt(
                                                        istlistaOtt);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseIstOtt,
                                            onChanged: (chooseIstOtt) {
                                              chooseIntIstOtt =
                                                  int.tryParse(chooseIstOtt) ??
                                                      0;
                                            })
                                      ]))
                            ]));
                          });
                    },
                    icon: const Icon(Icons.data_saver_on),
                    alignment: Alignment.topCenter)),
            const SizedBox(height: 20),
            ExpenseBox(
                text: 'Apparel',
                buttonText: TextButton(
                    child: const Text('+ Aggiungi'),
                    onPressed: () async {
                      setState(() {
                        totAPPOtt = viNAPPOtt;
                        totsAPPOtt = totAPPOtt.toString();
                        applistaOtt.add(totsAPPOtt);
                        List<int> applistaOttInt =
                            applistaOtt.map(int.parse).toList();
                        sumAPPOtt = applistaOttInt.sum;
                      });
                      await UserSimplePreferencesOttobre.setDataLiAPPOtt(
                          applistaOtt);
                      await UserSimplePreferencesOttobre.setDatasumAPPOtt(
                          sumAPPOtt);
                    }),
                testoTots: 'La spesa totale è: $sumAPPOtt',
                testoFormField: TextFormField(
                  initialValue: viAPPOtt,
                  onChanged: (viAPPOtt) =>
                      viNAPPOtt = int.tryParse(viAPPOtt) ?? 0,
                  decoration:
                      const InputDecoration(hintText: 'Digita la spesa'),
                ),
                buttonIcon: IconButton(
                    onPressed: () async {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                                content: Stack(children: [
                              Form(
                                  key: _formKey,
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Wrap(children: [
                                          Text(
                                            '$applistaOtt',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                applistaOtt.removeAt(
                                                    chooseIntAppOtt - 1);
                                                await UserSimplePreferencesOttobre
                                                    .setDataLiAPPOtt(
                                                        applistaOtt);
                                                print(applistaOtt);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                applistaOtt.clear();
                                                await UserSimplePreferencesOttobre
                                                    .setDataLiAPPOtt(
                                                        applistaOtt);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseAppOtt,
                                            onChanged: (chooseAppOtt) {
                                              chooseIntAppOtt =
                                                  int.tryParse(chooseAppOtt) ??
                                                      0;
                                            })
                                      ]))
                            ]));
                          });
                    },
                    icon: const Icon(Icons.data_saver_on),
                    alignment: Alignment.topCenter)),
            const SizedBox(height: 20),
            ExpenseBox(
                text: 'Divertimento',
                buttonText: TextButton(
                    child: const Text('+ Aggiungi'),
                    onPressed: () async {
                      setState(() {
                        totDIVOtt = viNDIVOtt;
                        totsDIVOtt = totDIVOtt.toString();
                        divlistaOtt.add(totsDIVOtt);
                        List<int> divlistaOttInt =
                            divlistaOtt.map(int.parse).toList();
                        sumDIVOtt = divlistaOttInt.sum;
                      });
                      await UserSimplePreferencesOttobre.setDataLisDIVOtt(
                          divlistaOtt);
                      await UserSimplePreferencesOttobre.setDatasumDIVOtt(
                          sumDIVOtt);
                    }),
                testoTots: 'La spesa totale è: $sumDIVOtt',
                testoFormField: TextFormField(
                  initialValue: viDIVOtt,
                  onChanged: (viDIVOtt) =>
                      viNDIVOtt = int.tryParse(viDIVOtt) ?? 0,
                  decoration:
                      const InputDecoration(hintText: 'Digita la spesa'),
                ),
                buttonIcon: IconButton(
                    onPressed: () async {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                                content: Stack(children: [
                              Form(
                                  key: _formKey,
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Wrap(children: [
                                          Text(
                                            '$divlistaOtt',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                divlistaOtt.removeAt(
                                                    chooseIntDivOtt - 1);
                                                await UserSimplePreferencesOttobre
                                                    .setDataLisDIVOtt(
                                                        divlistaOtt);
                                                print(divlistaOtt);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                divlistaOtt.clear();
                                                await UserSimplePreferencesOttobre
                                                    .setDataLisDIVOtt(
                                                        divlistaOtt);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseDivOtt,
                                            onChanged: (chooseDivOtt) {
                                              chooseIntDivOtt =
                                                  int.tryParse(chooseDivOtt) ??
                                                      0;
                                            })
                                      ]))
                            ]));
                          });
                    },
                    icon: const Icon(Icons.data_saver_on),
                    alignment: Alignment.topCenter)),
            const SizedBox(height: 20),
            ExpenseBox(
                text: 'Utilities',
                buttonText: TextButton(
                    child: const Text('+ Aggiungi'),
                    onPressed: () async {
                      setState(() {
                        totUTIOtt = viNUTIOtt;
                        totsUTIOtt = totUTIOtt.toString();
                        utilistaOtt.add(totsUTIOtt);
                        List<int> utilistaOttInt =
                            utilistaOtt.map(int.parse).toList();
                        sumUTIOtt = utilistaOttInt.sum;
                      });
                      await UserSimplePreferencesOttobre.setDataLisDIVOtt(
                          utilistaOtt);
                      await UserSimplePreferencesOttobre.setDatasumDIVOtt(
                          sumDIVOtt);
                    }),
                testoTots: 'La spesa totale è: $totsUTIOtt',
                testoFormField: TextFormField(
                  initialValue: viUTIOtt,
                  onChanged: (viUTIOtt) =>
                      viNUTIOtt = int.tryParse(viUTIOtt) ?? 0,
                  decoration:
                      const InputDecoration(hintText: 'Digita la spesa'),
                ),
                buttonIcon: IconButton(
                    onPressed: () async {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                                content: Stack(children: [
                              Form(
                                  key: _formKey,
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Wrap(children: [
                                          Text(
                                            '$utilistaOtt',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                utilistaOtt.removeAt(
                                                    chooseIntUtiOtt - 1);
                                                await UserSimplePreferencesOttobre
                                                    .setDataLisDIVOtt(
                                                        utilistaOtt);
                                                print(utilistaOtt);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                utilistaOtt.clear();
                                                await UserSimplePreferencesOttobre
                                                    .setDataLisDIVOtt(
                                                        utilistaOtt);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseUtiOtt,
                                            onChanged: (chooseUtiOtt) {
                                              chooseIntUtiOtt =
                                                  int.tryParse(chooseUtiOtt) ??
                                                      0;
                                            })
                                      ]))
                            ]));
                          });
                    },
                    icon: const Icon(Icons.data_saver_on),
                    alignment: Alignment.topCenter)),
            const SizedBox(height: 20),
            ExpenseBox(
                text: 'Spesa',
                buttonText: TextButton(
                    child: const Text('+ Aggiungi'),
                    onPressed: () async {
                      setState(() {
                        totSPEOtt = viNSPEOtt;
                        totsSPEOtt = totSPEOtt.toString();
                        spelistaOtt.add(totsSPEOtt);
                        List<int> spelistaOttInt =
                            spelistaOtt.map(int.parse).toList();
                        sumSPEOtt = spelistaOttInt.sum;
                      });
                      await UserSimplePreferencesOttobre.setDataLisSPEOtt(
                          spelistaOtt);
                      await UserSimplePreferencesOttobre.setDatasumSPEOtt(
                          sumSPEOtt);
                    }),
                testoTots: 'La spesa totale è: $totsSPEOtt',
                testoFormField: TextFormField(
                  initialValue: viSPEOtt,
                  onChanged: (viSPEOtt) =>
                      viNSPEOtt = int.tryParse(viSPEOtt) ?? 0,
                  decoration:
                      const InputDecoration(hintText: 'Digita la spesa'),
                ),
                buttonIcon: IconButton(
                    onPressed: () async {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                                content: Stack(children: [
                              Form(
                                  key: _formKey,
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Wrap(children: [
                                          Text(
                                            '$spelistaOtt',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                spelistaOtt.removeAt(
                                                    chooseIntSpeOtt - 1);
                                                await UserSimplePreferencesOttobre
                                                    .setDataLisSPEOtt(
                                                        spelistaOtt);
                                                print(spelistaOtt);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                spelistaOtt.clear();
                                                await UserSimplePreferencesOttobre
                                                    .setDataLisSPEOtt(
                                                        spelistaOtt);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseSpeOtt,
                                            onChanged: (chooseSpeOtt) {
                                              chooseIntSpeOtt =
                                                  int.tryParse(chooseSpeOtt) ??
                                                      0;
                                            })
                                      ]))
                            ]));
                          });
                    },
                    icon: const Icon(Icons.data_saver_on),
                    alignment: Alignment.topCenter)),
          ],
        ))));
  }
}
