import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widget/ExpenseBox.dart';
import 'package:collection/collection.dart';
import '../../Widget/UserPreferences/UserPreferencesLuglio.dart';

class LuglioPage extends StatefulWidget {
  const LuglioPage({Key? key}) : super(key: key);

  @override
  State<LuglioPage> createState() => _LuglioPageState();
}

class _LuglioPageState extends State<LuglioPage> {
  final _formKey = GlobalKey<FormState>();
  //RIS
  String viRISLug = '';
  int viNRISLug = 0;
  String totsRISLug = '';
  int totRISLug = 0;
  List<String> rislistaLug = [];
  List<int> rislistaLugInt = [];
  int sumRISLug = 0;
  String chooseRisLug = '';
  int chooseIntRisLug = 0;
  //DEL
  String viDELLug = '';
  int viNDELLug = 0;
  int totDELLug = 0;
  String totsDELLug = '';
  List<String> dellistaLug = [];
  List<int> dellistaLugInt = [];
  int sumDELLug = 0;
  String chooseDelLug = '';
  int chooseIntDelLug = 0;
  //SAN
  String viSANLug = '';
  int viNSANLug = 0;
  int totSANLug = 0;
  String totsSANLug = '';
  List<String> sanlistaLug = [];
  List<int> sanlistaLugInt = [];
  int sumSANLug = 0;
  String chooseSanLug = '';
  int chooseIntSanLug = 0;
  //IST
  String viISTLug = '';
  int viNISTLug = 0;
  int totISTLug = 0;
  String totsISTLug = '';
  List<String> istlistaLug = [];
  List<int> istlistaLugInt = [];
  int sumISTLug = 0;
  String chooseIstLug = '';
  int chooseIntIstLug = 0;
  //APP
  String viAPPLug = '';
  int viNAPPLug = 0;
  int totAPPLug = 0;
  String totsAPPLug = '';
  List<String> applistaLug = [];
  List<int> applistaLugInt = [];
  int sumAPPLug = 0;
  String chooseAppLug = '';
  int chooseIntAppLug = 0;
  //DIV
  String viDIVLug = '';
  int viNDIVLug = 0;
  int totDIVLug = 0;
  String totsDIVLug = '';
  List<String> divlistaLug = [];
  List<int> divlistaLugInt = [];
  int sumDIVLug = 0;
  String chooseDivLug = '';
  int chooseIntDivLug = 0;
  //UTI
  String viUTILug = '';
  int viNUTILug = 0;
  int totUTILug = 0;
  String totsUTILug = '';
  List<String> utilistaLug = [];
  List<int> utilistaLugInt = [];
  int sumUTILug = 0;
  String chooseUtiLug = '';
  int chooseIntUtiLug = 0;
  //SPE
  String viSPELug = '';
  int viNSPELug = 0;
  int totSPELug = 0;
  String totsSPELug = '';
  List<String> spelistaLug = [];
  List<int> spelistaLugInt = [];
  int sumSPELug = 0;
  String chooseSpeLug = '';
  int chooseIntSpeLug = 0;

  var color_green = const Color.fromARGB(255, 29, 139, 33);

  @override
  void initState() {
    super.initState();
    rislistaLug = UserSimplePreferencesLugio.getLisRISLug() ?? [];
    sumRISLug = UserSimplePreferencesLugio.getDatasumRISLug() ?? 0;
    dellistaLug = UserSimplePreferencesLugio.getLisDELLug() ?? [];
    sumDELLug = UserSimplePreferencesLugio.getDatasumDELLug() ?? 0;
    sanlistaLug = UserSimplePreferencesLugio.getLisSANLug() ?? [];
    sumSANLug = UserSimplePreferencesLugio.getDatasumSANLug() ?? 0;
    istlistaLug = UserSimplePreferencesLugio.getLisISTLug() ?? [];
    sumISTLug = UserSimplePreferencesLugio.getDatasumISTLug() ?? 0;
    applistaLug = UserSimplePreferencesLugio.getLisAPPLug() ?? [];
    sumAPPLug = UserSimplePreferencesLugio.getDatasumAPPLug() ?? 0;
    divlistaLug = UserSimplePreferencesLugio.getLisDIVLug() ?? [];
    sumDIVLug = UserSimplePreferencesLugio.getDatasumDIVLug() ?? 0;
    utilistaLug = UserSimplePreferencesLugio.getLisUTILug() ?? [];
    sumUTILug = UserSimplePreferencesLugio.getDatasumUTILug() ?? 0;
    spelistaLug = UserSimplePreferencesLugio.getLisSPELug() ?? [];
    sumSPELug = UserSimplePreferencesLugio.getDatasumSPELug() ?? 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: color_green,
          title: const Text("Luglio"),
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
                        totRISLug = viNRISLug;
                        totsRISLug = totRISLug.toString();
                        rislistaLug.add(totsRISLug);
                        List<int> rislistaLugInt =
                            rislistaLug.map(int.parse).toList();
                        sumRISLug = rislistaLugInt.sum;
                      });
                      await UserSimplePreferencesLugio.setDataLisRISLug(
                          rislistaLug);
                      await UserSimplePreferencesLugio.setDatasumRISLug(
                          sumRISLug);
                    }),
                testoTots: 'La spesa totale è: $sumRISLug',
                testoFormField: TextFormField(
                  initialValue: viRISLug,
                  onChanged: (viRISLug) =>
                      viNRISLug = int.tryParse(viRISLug) ?? 0,
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
                                            '$rislistaLug',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                rislistaLug.removeAt(
                                                    chooseIntRisLug - 1);
                                                await UserSimplePreferencesLugio
                                                    .setDataLisRISLug(
                                                        rislistaLug);
                                                print(rislistaLug);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                rislistaLug.clear();
                                                await UserSimplePreferencesLugio
                                                    .setDataLisRISLug(
                                                        rislistaLug);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseRisLug,
                                            onChanged: (chooseRisLug) {
                                              chooseIntRisLug =
                                                  int.tryParse(chooseRisLug) ??
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
                        totDELLug = viNDELLug;
                        totsDELLug = totDELLug.toString();
                        dellistaLug.add(totsDELLug);
                        List<int> dellistaLugInt =
                            dellistaLug.map(int.parse).toList();
                        sumDELLug = dellistaLugInt.sum;
                      });
                      await UserSimplePreferencesLugio.setDataLisDELLug(
                          dellistaLug);
                      await UserSimplePreferencesLugio.setDatasumDELLug(
                          sumDELLug);
                    }),
                testoTots: 'La spesa totale è: $sumDELLug',
                testoFormField: TextFormField(
                  initialValue: viDELLug,
                  onChanged: (viDELLug) =>
                      viNDELLug = int.tryParse(viDELLug) ?? 0,
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
                                            '$dellistaLug',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                dellistaLug.removeAt(
                                                    chooseIntRisLug - 1);
                                                await UserSimplePreferencesLugio
                                                    .setDataLisDELLug(
                                                        dellistaLug);
                                                print(dellistaLug);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                dellistaLug.clear();
                                                await UserSimplePreferencesLugio
                                                    .setDataLisDELLug(
                                                        dellistaLug);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseDelLug,
                                            onChanged: (chooseDelLug) {
                                              chooseIntDelLug =
                                                  int.tryParse(chooseDelLug) ??
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
                        totSANLug = viNSANLug;
                        totsSANLug = totSANLug.toString();
                        sanlistaLug.add(totsSANLug);
                        List<int> sanlistaLugInt =
                            sanlistaLug.map(int.parse).toList();
                        sumSANLug = sanlistaLugInt.sum;
                      });
                      await UserSimplePreferencesLugio.setDataLisSANLug(
                          sanlistaLug);
                      await UserSimplePreferencesLugio.setDatasumSANLug(
                          sumSANLug);
                    }),
                testoTots: 'La spesa totale è: $sumSANLug',
                testoFormField: TextFormField(
                  initialValue: viSANLug,
                  onChanged: (viSANLug) =>
                      viNSANLug = int.tryParse(viSANLug) ?? 0,
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
                                            '$sanlistaLug',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                sanlistaLug.removeAt(
                                                    chooseIntSanLug - 1);
                                                await UserSimplePreferencesLugio
                                                    .setDataLisSANLug(
                                                        sanlistaLug);
                                                print(sanlistaLug);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                sanlistaLug.clear();
                                                await UserSimplePreferencesLugio
                                                    .setDataLisSANLug(
                                                        sanlistaLug);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseSanLug,
                                            onChanged: (chooseSanLug) {
                                              chooseIntSanLug =
                                                  int.tryParse(chooseSanLug) ??
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
                        totISTLug = viNISTLug;
                        totsISTLug = totISTLug.toString();
                        istlistaLug.add(totsISTLug);
                        List<int> istlistaLugInt =
                            istlistaLug.map(int.parse).toList();
                        sumISTLug = istlistaLugInt.sum;
                      });
                      await UserSimplePreferencesLugio.setDataLisISTLug(
                          istlistaLug);
                      await UserSimplePreferencesLugio.setDatasumISTLug(
                          sumISTLug);
                    }),
                testoTots: 'La spesa totale è: $sumISTLug',
                testoFormField: TextFormField(
                  initialValue: viISTLug,
                  onChanged: (viISTLug) =>
                      viNISTLug = int.tryParse(viISTLug) ?? 0,
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
                                            '$istlistaLug',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                istlistaLug.removeAt(
                                                    chooseIntIstLug - 1);
                                                await UserSimplePreferencesLugio
                                                    .setDataLisISTLug(
                                                        istlistaLug);
                                                print(istlistaLug);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                istlistaLug.clear();
                                                await UserSimplePreferencesLugio
                                                    .setDataLisISTLug(
                                                        istlistaLug);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseIstLug,
                                            onChanged: (chooseIstLug) {
                                              chooseIntIstLug =
                                                  int.tryParse(chooseIstLug) ??
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
                        totAPPLug = viNAPPLug;
                        totsAPPLug = totAPPLug.toString();
                        applistaLug.add(totsAPPLug);
                        List<int> applistaLugInt =
                            applistaLug.map(int.parse).toList();
                        sumAPPLug = applistaLugInt.sum;
                      });
                      await UserSimplePreferencesLugio.setDataLiAPPLug(
                          applistaLug);
                      await UserSimplePreferencesLugio.setDatasumAPPLug(
                          sumAPPLug);
                    }),
                testoTots: 'La spesa totale è: $sumAPPLug',
                testoFormField: TextFormField(
                  initialValue: viAPPLug,
                  onChanged: (viAPPLug) =>
                      viNAPPLug = int.tryParse(viAPPLug) ?? 0,
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
                                            '$applistaLug',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                applistaLug.removeAt(
                                                    chooseIntAppLug - 1);
                                                await UserSimplePreferencesLugio
                                                    .setDataLiAPPLug(
                                                        applistaLug);
                                                print(applistaLug);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                applistaLug.clear();
                                                await UserSimplePreferencesLugio
                                                    .setDataLiAPPLug(
                                                        applistaLug);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseAppLug,
                                            onChanged: (chooseAppLug) {
                                              chooseIntAppLug =
                                                  int.tryParse(chooseAppLug) ??
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
                        totDIVLug = viNDIVLug;
                        totsDIVLug = totDIVLug.toString();
                        divlistaLug.add(totsDIVLug);
                        List<int> divlistaLugInt =
                            divlistaLug.map(int.parse).toList();
                        sumDIVLug = divlistaLugInt.sum;
                      });
                      await UserSimplePreferencesLugio.setDataLisDIVLug(
                          divlistaLug);
                      await UserSimplePreferencesLugio.setDatasumDIVLug(
                          sumDIVLug);
                    }),
                testoTots: 'La spesa totale è: $sumDIVLug',
                testoFormField: TextFormField(
                  initialValue: viDIVLug,
                  onChanged: (viDIVLug) =>
                      viNDIVLug = int.tryParse(viDIVLug) ?? 0,
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
                                            '$divlistaLug',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                divlistaLug.removeAt(
                                                    chooseIntDivLug - 1);
                                                await UserSimplePreferencesLugio
                                                    .setDataLisDIVLug(
                                                        divlistaLug);
                                                print(divlistaLug);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                divlistaLug.clear();
                                                await UserSimplePreferencesLugio
                                                    .setDataLisDIVLug(
                                                        divlistaLug);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseDivLug,
                                            onChanged: (chooseDivLug) {
                                              chooseIntDivLug =
                                                  int.tryParse(chooseDivLug) ??
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
                        totUTILug = viNUTILug;
                        totsUTILug = totUTILug.toString();
                        utilistaLug.add(totsUTILug);
                        List<int> utilistaLugInt =
                            utilistaLug.map(int.parse).toList();
                        sumUTILug = utilistaLugInt.sum;
                      });
                      await UserSimplePreferencesLugio.setDataLisDIVLug(
                          utilistaLug);
                      await UserSimplePreferencesLugio.setDatasumDIVLug(
                          sumDIVLug);
                    }),
                testoTots: 'La spesa totale è: $totsUTILug',
                testoFormField: TextFormField(
                  initialValue: viUTILug,
                  onChanged: (viUTILug) =>
                      viNUTILug = int.tryParse(viUTILug) ?? 0,
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
                                            '$utilistaLug',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                utilistaLug.removeAt(
                                                    chooseIntUtiLug - 1);
                                                await UserSimplePreferencesLugio
                                                    .setDataLisDIVLug(
                                                        utilistaLug);
                                                print(utilistaLug);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                utilistaLug.clear();
                                                await UserSimplePreferencesLugio
                                                    .setDataLisDIVLug(
                                                        utilistaLug);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseUtiLug,
                                            onChanged: (chooseUtiLug) {
                                              chooseIntUtiLug =
                                                  int.tryParse(chooseUtiLug) ??
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
                        totSPELug = viNSPELug;
                        totsSPELug = totSPELug.toString();
                        spelistaLug.add(totsSPELug);
                        List<int> spelistaLugInt =
                            spelistaLug.map(int.parse).toList();
                        sumSPELug = spelistaLugInt.sum;
                      });
                      await UserSimplePreferencesLugio.setDataLisSPELug(
                          spelistaLug);
                      await UserSimplePreferencesLugio.setDatasumSPELug(
                          sumSPELug);
                    }),
                testoTots: 'La spesa totale è: $totsSPELug',
                testoFormField: TextFormField(
                  initialValue: viSPELug,
                  onChanged: (viSPELug) =>
                      viNSPELug = int.tryParse(viSPELug) ?? 0,
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
                                            '$spelistaLug',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                spelistaLug.removeAt(
                                                    chooseIntSpeLug - 1);
                                                await UserSimplePreferencesLugio
                                                    .setDataLisSPELug(
                                                        spelistaLug);
                                                print(spelistaLug);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                spelistaLug.clear();
                                                await UserSimplePreferencesLugio
                                                    .setDataLisSPELug(
                                                        spelistaLug);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseSpeLug,
                                            onChanged: (chooseSpeLug) {
                                              chooseIntSpeLug =
                                                  int.tryParse(chooseSpeLug) ??
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
