import 'package:flutter/material.dart';
import 'package:collection/collection.dart';
import 'package:flutter_application_1/Widget/UserPreferences/UserPreferencesSettembre.dart';
import 'package:flutter_application_1/Widget/ExpenseBox.dart';

class SettembrePage extends StatefulWidget {
  const SettembrePage({Key? key}) : super(key: key);

  @override
  State<SettembrePage> createState() => _SettembrePageState();
}

class _SettembrePageState extends State<SettembrePage> {
  final _formKey = GlobalKey<FormState>();
  //RIS
  String viRISSet = '';
  int viNRISSet = 0;
  String totsRISSet = '';
  int totRISSet = 0;
  List<String> rislistaSet = [];
  List<int> rislistaSetInt = [];
  int sumRISSet = 0;
  String chooseRisSet = '';
  int chooseIntRisSet = 0;
  //DEL
  String viDELSet = '';
  int viNDELSet = 0;
  int totDELSet = 0;
  String totsDELSet = '';
  List<String> dellistaSet = [];
  List<int> dellistaSetInt = [];
  int sumDELSet = 0;
  String chooseDelSet = '';
  int chooseIntDelSet = 0;
  //SAN
  String viSANSet = '';
  int viNSANSet = 0;
  int totSANSet = 0;
  String totsSANSet = '';
  List<String> sanlistaSet = [];
  List<int> sanlistaSetInt = [];
  int sumSANSet = 0;
  String chooseSanSet = '';
  int chooseIntSanSet = 0;
  //IST
  String viISTSet = '';
  int viNISTSet = 0;
  int totISTSet = 0;
  String totsISTSet = '';
  List<String> istlistaSet = [];
  List<int> istlistaSetInt = [];
  int sumISTSet = 0;
  String chooseIstSet = '';
  int chooseIntIstSet = 0;
  //APP
  String viAPPSet = '';
  int viNAPPSet = 0;
  int totAPPSet = 0;
  String totsAPPSet = '';
  List<String> applistaSet = [];
  List<int> applistaSetInt = [];
  int sumAPPSet = 0;
  String chooseAppSet = '';
  int chooseIntAppSet = 0;
  //DIV
  String viDIVSet = '';
  int viNDIVSet = 0;
  int totDIVSet = 0;
  String totsDIVSet = '';
  List<String> divlistaSet = [];
  List<int> divlistaSetInt = [];
  int sumDIVSet = 0;
  String chooseDivSet = '';
  int chooseIntDivSet = 0;
  //UTI
  String viUTISet = '';
  int viNUTISet = 0;
  int totUTISet = 0;
  String totsUTISet = '';
  List<String> utilistaSet = [];
  List<int> utilistaSetInt = [];
  int sumUTISet = 0;
  String chooseUtiSet = '';
  int chooseIntUtiSet = 0;
  //SPE
  String viSPESet = '';
  int viNSPESet = 0;
  int totSPESet = 0;
  String totsSPESet = '';
  List<String> spelistaSet = [];
  List<int> spelistaSetInt = [];
  int sumSPESet = 0;
  String chooseSpeSet = '';
  int chooseIntSpeSet = 0;

  var color_green = const Color.fromARGB(255, 29, 139, 33);

  @override
  void initState() {
    super.initState();
    sumRISSet = UserSimplePreferencesSettembre.getDatasumRISSet() ?? 0;
    rislistaSet = UserSimplePreferencesSettembre.getLisRISSet() ?? [];
    sumDELSet = UserSimplePreferencesSettembre.getDatasumDELSet() ?? 0;
    dellistaSet = UserSimplePreferencesSettembre.getLisRISSet() ?? [];
    sumSANSet = UserSimplePreferencesSettembre.getDatasumSANSet() ?? 0;
    sanlistaSet = UserSimplePreferencesSettembre.getLisRISSet() ?? [];
    sumISTSet = UserSimplePreferencesSettembre.getDatasumISTSet() ?? 0;
    istlistaSet = UserSimplePreferencesSettembre.getLisRISSet() ?? [];
    sumAPPSet = UserSimplePreferencesSettembre.getDatasumAPPSet() ?? 0;
    applistaSet = UserSimplePreferencesSettembre.getLisRISSet() ?? [];
    sumDIVSet = UserSimplePreferencesSettembre.getDatasumDIVSet() ?? 0;
    divlistaSet = UserSimplePreferencesSettembre.getLisRISSet() ?? [];
    sumUTISet = UserSimplePreferencesSettembre.getDatasumUTISet() ?? 0;
    utilistaSet = UserSimplePreferencesSettembre.getLisRISSet() ?? [];
    sumSPESet = UserSimplePreferencesSettembre.getDatasumSPESet() ?? 0;
    spelistaSet = UserSimplePreferencesSettembre.getLisRISSet() ?? [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: color_green,
          title: const Text("Settembre"),
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
                        totRISSet = viNRISSet;
                        totsRISSet = totRISSet.toString();
                        rislistaSet.add(totsRISSet);
                        List<int> rislistaSetInt =
                            rislistaSet.map(int.parse).toList();
                        sumRISSet = rislistaSetInt.sum;
                      });
                      await UserSimplePreferencesSettembre.setDataLisRISSet(
                          rislistaSet);
                      await UserSimplePreferencesSettembre.setDatasumRISSet(
                          sumRISSet);
                    }),
                testoTots: 'La spesa totale è: $sumRISSet',
                testoFormField: TextFormField(
                  initialValue: viRISSet,
                  onChanged: (viRISSet) =>
                      viNRISSet = int.tryParse(viRISSet) ?? 0,
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
                                            '$rislistaSet',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                rislistaSet.removeAt(
                                                    chooseIntRisSet - 1);
                                                await UserSimplePreferencesSettembre
                                                    .setDataLisRISSet(
                                                        rislistaSet);
                                                print(rislistaSet);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                rislistaSet.clear();
                                                await UserSimplePreferencesSettembre
                                                    .setDataLisRISSet(
                                                        rislistaSet);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseRisSet,
                                            onChanged: (chooseRisSet) {
                                              chooseIntRisSet =
                                                  int.tryParse(chooseRisSet) ??
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
                        totDELSet = viNDELSet;
                        totsDELSet = totDELSet.toString();
                        dellistaSet.add(totsDELSet);
                        List<int> dellistaSetInt =
                            dellistaSet.map(int.parse).toList();
                        sumDELSet = dellistaSetInt.sum;
                      });
                      await UserSimplePreferencesSettembre.setDataLisDELSet(
                          dellistaSet);
                      await UserSimplePreferencesSettembre.setDatasumDELSet(
                          sumDELSet);
                    }),
                testoTots: 'La spesa totale è: $sumDELSet',
                testoFormField: TextFormField(
                  initialValue: viDELSet,
                  onChanged: (viDELSet) =>
                      viNDELSet = int.tryParse(viDELSet) ?? 0,
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
                                            '$dellistaSet',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                dellistaSet.removeAt(
                                                    chooseIntRisSet - 1);
                                                await UserSimplePreferencesSettembre
                                                    .setDataLisDELSet(
                                                        dellistaSet);
                                                print(dellistaSet);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                dellistaSet.clear();
                                                await UserSimplePreferencesSettembre
                                                    .setDataLisDELSet(
                                                        dellistaSet);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseDelSet,
                                            onChanged: (chooseDelSet) {
                                              chooseIntDelSet =
                                                  int.tryParse(chooseDelSet) ??
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
                        totSANSet = viNSANSet;
                        totsSANSet = totSANSet.toString();
                        sanlistaSet.add(totsSANSet);
                        List<int> sanlistaSetInt =
                            sanlistaSet.map(int.parse).toList();
                        sumSANSet = sanlistaSetInt.sum;
                      });
                      await UserSimplePreferencesSettembre.setDataLisSANSet(
                          sanlistaSet);
                      await UserSimplePreferencesSettembre.setDatasumSANSet(
                          sumSANSet);
                    }),
                testoTots: 'La spesa totale è: $sumSANSet',
                testoFormField: TextFormField(
                  initialValue: viSANSet,
                  onChanged: (viSANSet) =>
                      viNSANSet = int.tryParse(viSANSet) ?? 0,
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
                                            '$sanlistaSet',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                sanlistaSet.removeAt(
                                                    chooseIntSanSet - 1);
                                                await UserSimplePreferencesSettembre
                                                    .setDataLisSANSet(
                                                        sanlistaSet);
                                                print(sanlistaSet);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                sanlistaSet.clear();
                                                await UserSimplePreferencesSettembre
                                                    .setDataLisSANSet(
                                                        sanlistaSet);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseSanSet,
                                            onChanged: (chooseSanSet) {
                                              chooseIntSanSet =
                                                  int.tryParse(chooseSanSet) ??
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
                        totISTSet = viNISTSet;
                        totsISTSet = totISTSet.toString();
                        istlistaSet.add(totsISTSet);
                        List<int> istlistaSetInt =
                            istlistaSet.map(int.parse).toList();
                        sumISTSet = istlistaSetInt.sum;
                      });
                      await UserSimplePreferencesSettembre.setDataLisISTSet(
                          istlistaSet);
                      await UserSimplePreferencesSettembre.setDatasumISTSet(
                          sumISTSet);
                    }),
                testoTots: 'La spesa totale è: $sumISTSet',
                testoFormField: TextFormField(
                  initialValue: viISTSet,
                  onChanged: (viISTSet) =>
                      viNISTSet = int.tryParse(viISTSet) ?? 0,
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
                                            '$istlistaSet',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                istlistaSet.removeAt(
                                                    chooseIntIstSet - 1);
                                                await UserSimplePreferencesSettembre
                                                    .setDataLisISTSet(
                                                        istlistaSet);
                                                print(istlistaSet);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                istlistaSet.clear();
                                                await UserSimplePreferencesSettembre
                                                    .setDataLisISTSet(
                                                        istlistaSet);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseIstSet,
                                            onChanged: (chooseIstSet) {
                                              chooseIntIstSet =
                                                  int.tryParse(chooseIstSet) ??
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
                        totAPPSet = viNAPPSet;
                        totsAPPSet = totAPPSet.toString();
                        applistaSet.add(totsAPPSet);
                        List<int> applistaSetInt =
                            applistaSet.map(int.parse).toList();
                        sumAPPSet = applistaSetInt.sum;
                      });
                      await UserSimplePreferencesSettembre.setDataLiAPPSet(
                          applistaSet);
                      await UserSimplePreferencesSettembre.setDatasumAPPSet(
                          sumAPPSet);
                    }),
                testoTots: 'La spesa totale è: $sumAPPSet',
                testoFormField: TextFormField(
                  initialValue: viAPPSet,
                  onChanged: (viAPPSet) =>
                      viNAPPSet = int.tryParse(viAPPSet) ?? 0,
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
                                            '$applistaSet',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                applistaSet.removeAt(
                                                    chooseIntAppSet - 1);
                                                await UserSimplePreferencesSettembre
                                                    .setDataLiAPPSet(
                                                        applistaSet);
                                                print(applistaSet);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                applistaSet.clear();
                                                await UserSimplePreferencesSettembre
                                                    .setDataLiAPPSet(
                                                        applistaSet);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseAppSet,
                                            onChanged: (chooseAppSet) {
                                              chooseIntAppSet =
                                                  int.tryParse(chooseAppSet) ??
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
                        totDIVSet = viNDIVSet;
                        totsDIVSet = totDIVSet.toString();
                        divlistaSet.add(totsDIVSet);
                        List<int> divlistaSetInt =
                            divlistaSet.map(int.parse).toList();
                        sumDIVSet = divlistaSetInt.sum;
                      });
                      await UserSimplePreferencesSettembre.setDataLisDIVSet(
                          divlistaSet);
                      await UserSimplePreferencesSettembre.setDatasumDIVSet(
                          sumDIVSet);
                    }),
                testoTots: 'La spesa totale è: $sumDIVSet',
                testoFormField: TextFormField(
                  initialValue: viDIVSet,
                  onChanged: (viDIVSet) =>
                      viNDIVSet = int.tryParse(viDIVSet) ?? 0,
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
                                            '$divlistaSet',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                divlistaSet.removeAt(
                                                    chooseIntDivSet - 1);
                                                await UserSimplePreferencesSettembre
                                                    .setDataLisDIVSet(
                                                        divlistaSet);
                                                print(divlistaSet);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                divlistaSet.clear();
                                                await UserSimplePreferencesSettembre
                                                    .setDataLisDIVSet(
                                                        divlistaSet);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseDivSet,
                                            onChanged: (chooseDivSet) {
                                              chooseIntDivSet =
                                                  int.tryParse(chooseDivSet) ??
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
                        totUTISet = viNUTISet;
                        totsUTISet = totUTISet.toString();
                        utilistaSet.add(totsUTISet);
                        List<int> utilistaSetInt =
                            utilistaSet.map(int.parse).toList();
                        sumUTISet = utilistaSetInt.sum;
                      });
                      await UserSimplePreferencesSettembre.setDataLisDIVSet(
                          utilistaSet);
                      await UserSimplePreferencesSettembre.setDatasumDIVSet(
                          sumDIVSet);
                    }),
                testoTots: 'La spesa totale è: $totsUTISet',
                testoFormField: TextFormField(
                  initialValue: viUTISet,
                  onChanged: (viUTISet) =>
                      viNUTISet = int.tryParse(viUTISet) ?? 0,
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
                                            '$utilistaSet',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                utilistaSet.removeAt(
                                                    chooseIntUtiSet - 1);
                                                await UserSimplePreferencesSettembre
                                                    .setDataLisDIVSet(
                                                        utilistaSet);
                                                print(utilistaSet);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                utilistaSet.clear();
                                                await UserSimplePreferencesSettembre
                                                    .setDataLisDIVSet(
                                                        utilistaSet);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseUtiSet,
                                            onChanged: (chooseUtiSet) {
                                              chooseIntUtiSet =
                                                  int.tryParse(chooseUtiSet) ??
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
                        totSPESet = viNSPESet;
                        totsSPESet = totSPESet.toString();
                        spelistaSet.add(totsSPESet);
                        List<int> spelistaSetInt =
                            spelistaSet.map(int.parse).toList();
                        sumSPESet = spelistaSetInt.sum;
                      });
                      await UserSimplePreferencesSettembre.setDataLisSPESet(
                          spelistaSet);
                      await UserSimplePreferencesSettembre.setDatasumSPESet(
                          sumSPESet);
                    }),
                testoTots: 'La spesa totale è: $totsSPESet',
                testoFormField: TextFormField(
                  initialValue: viSPESet,
                  onChanged: (viSPESet) =>
                      viNSPESet = int.tryParse(viSPESet) ?? 0,
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
                                            '$spelistaSet',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                spelistaSet.removeAt(
                                                    chooseIntSpeSet - 1);
                                                await UserSimplePreferencesSettembre
                                                    .setDataLisSPESet(
                                                        spelistaSet);
                                                print(spelistaSet);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                spelistaSet.clear();
                                                await UserSimplePreferencesSettembre
                                                    .setDataLisSPESet(
                                                        spelistaSet);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseSpeSet,
                                            onChanged: (chooseSpeSet) {
                                              chooseIntSpeSet =
                                                  int.tryParse(chooseSpeSet) ??
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
