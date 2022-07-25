import 'package:flutter_application_1/Widget/UserPreferences/UserPreferencesAgosto.dart';
import 'package:flutter/material.dart';
import 'package:collection/collection.dart';
import 'package:flutter_application_1/Widget/ExpenseBox.dart';

class AgostoPage extends StatefulWidget {
  const AgostoPage({Key? key}) : super(key: key);

  @override
  State<AgostoPage> createState() => _AgostoPageState();
}

class _AgostoPageState extends State<AgostoPage> {
  final _formKey = GlobalKey<FormState>();
  //RIS
  String viRISAgo = '';
  int viNRISAgo = 0;
  String totsRISAgo = '';
  int totRISAgo = 0;
  List<String> rislistaAgo = [];
  List<int> rislistaAgoInt = [];
  int sumRISAgo = 0;
  String chooseRisAgo = '';
  int chooseIntRisAgo = 0;
  //DEL
  String viDELAgo = '';
  int viNDELAgo = 0;
  int totDELAgo = 0;
  String totsDELAgo = '';
  List<String> dellistaAgo = [];
  List<int> dellistaAgoInt = [];
  int sumDELAgo = 0;
  String chooseDelAgo = '';
  int chooseIntDelAgo = 0;
  //SAN
  String viSANAgo = '';
  int viNSANAgo = 0;
  int totSANAgo = 0;
  String totsSANAgo = '';
  List<String> sanlistaAgo = [];
  List<int> sanlistaAgoInt = [];
  int sumSANAgo = 0;
  String chooseSanAgo = '';
  int chooseIntSanAgo = 0;
  //IST
  String viISTAgo = '';
  int viNISTAgo = 0;
  int totISTAgo = 0;
  String totsISTAgo = '';
  List<String> istlistaAgo = [];
  List<int> istlistaAgoInt = [];
  int sumISTAgo = 0;
  String chooseIstAgo = '';
  int chooseIntIstAgo = 0;
  //APP
  String viAPPAgo = '';
  int viNAPPAgo = 0;
  int totAPPAgo = 0;
  String totsAPPAgo = '';
  List<String> applistaAgo = [];
  List<int> applistaAgoInt = [];
  int sumAPPAgo = 0;
  String chooseAppAgo = '';
  int chooseIntAppAgo = 0;
  //DIV
  String viDIVAgo = '';
  int viNDIVAgo = 0;
  int totDIVAgo = 0;
  String totsDIVAgo = '';
  List<String> divlistaAgo = [];
  List<int> divlistaAgoInt = [];
  int sumDIVAgo = 0;
  String chooseDivAgo = '';
  int chooseIntDivAgo = 0;
  //UTI
  String viUTIAgo = '';
  int viNUTIAgo = 0;
  int totUTIAgo = 0;
  String totsUTIAgo = '';
  List<String> utilistaAgo = [];
  List<int> utilistaAgoInt = [];
  int sumUTIAgo = 0;
  String chooseUtiAgo = '';
  int chooseIntUtiAgo = 0;
  //SPE
  String viSPEAgo = '';
  int viNSPEAgo = 0;
  int totSPEAgo = 0;
  String totsSPEAgo = '';
  List<String> spelistaAgo = [];
  List<int> spelistaAgoInt = [];
  int sumSPEAgo = 0;
  String chooseSpeAgo = '';
  int chooseIntSpeAgo = 0;

  var color_green = const Color.fromARGB(255, 29, 139, 33);

  @override
  void initState() {
    super.initState();
    sumRISAgo = UserSimplePreferencesAgosto.getDatasumRISAgo() ?? 0;
    rislistaAgo = UserSimplePreferencesAgosto.getLisRISAgo() ?? [];
    sumDELAgo = UserSimplePreferencesAgosto.getDatasumDELAgo() ?? 0;
    dellistaAgo = UserSimplePreferencesAgosto.getLisRISAgo() ?? [];
    sumSANAgo = UserSimplePreferencesAgosto.getDatasumSANAgo() ?? 0;
    sanlistaAgo = UserSimplePreferencesAgosto.getLisRISAgo() ?? [];
    sumISTAgo = UserSimplePreferencesAgosto.getDatasumISTAgo() ?? 0;
    istlistaAgo = UserSimplePreferencesAgosto.getLisRISAgo() ?? [];
    sumAPPAgo = UserSimplePreferencesAgosto.getDatasumAPPAgo() ?? 0;
    applistaAgo = UserSimplePreferencesAgosto.getLisRISAgo() ?? [];
    sumDIVAgo = UserSimplePreferencesAgosto.getDatasumDIVAgo() ?? 0;
    divlistaAgo = UserSimplePreferencesAgosto.getLisRISAgo() ?? [];
    sumUTIAgo = UserSimplePreferencesAgosto.getDatasumUTIAgo() ?? 0;
    utilistaAgo = UserSimplePreferencesAgosto.getLisRISAgo() ?? [];
    sumSPEAgo = UserSimplePreferencesAgosto.getDatasumSPEAgo() ?? 0;
    spelistaAgo = UserSimplePreferencesAgosto.getLisRISAgo() ?? [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: color_green,
          title: const Text("Agosto"),
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
                        totRISAgo = viNRISAgo;
                        totsRISAgo = totRISAgo.toString();
                        rislistaAgo.add(totsRISAgo);
                        List<int> rislistaAgoInt =
                            rislistaAgo.map(int.parse).toList();
                        sumRISAgo = rislistaAgoInt.sum;
                      });
                      await UserSimplePreferencesAgosto.setDataLisRISAgo(
                          rislistaAgo);
                      await UserSimplePreferencesAgosto.setDatasumRISAgo(
                          sumRISAgo);
                    }),
                testoTots: 'La spesa totale è: $sumRISAgo',
                testoFormField: TextFormField(
                  initialValue: viRISAgo,
                  onChanged: (viRISAgo) =>
                      viNRISAgo = int.tryParse(viRISAgo) ?? 0,
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
                                            '$rislistaAgo',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                rislistaAgo.removeAt(
                                                    chooseIntRisAgo - 1);
                                                await UserSimplePreferencesAgosto
                                                    .setDataLisRISAgo(
                                                        rislistaAgo);
                                                print(rislistaAgo);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                rislistaAgo.clear();
                                                await UserSimplePreferencesAgosto
                                                    .setDataLisRISAgo(
                                                        rislistaAgo);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseRisAgo,
                                            onChanged: (chooseRisAgo) {
                                              chooseIntRisAgo =
                                                  int.tryParse(chooseRisAgo) ??
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
                        totDELAgo = viNDELAgo;
                        totsDELAgo = totDELAgo.toString();
                        dellistaAgo.add(totsDELAgo);
                        List<int> dellistaAgoInt =
                            dellistaAgo.map(int.parse).toList();
                        sumDELAgo = dellistaAgoInt.sum;
                      });
                      await UserSimplePreferencesAgosto.setDataLisDELAgo(
                          dellistaAgo);
                      await UserSimplePreferencesAgosto.setDatasumDELAgo(
                          sumDELAgo);
                    }),
                testoTots: 'La spesa totale è: $sumDELAgo',
                testoFormField: TextFormField(
                  initialValue: viDELAgo,
                  onChanged: (viDELAgo) =>
                      viNDELAgo = int.tryParse(viDELAgo) ?? 0,
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
                                            '$dellistaAgo',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                dellistaAgo.removeAt(
                                                    chooseIntRisAgo - 1);
                                                await UserSimplePreferencesAgosto
                                                    .setDataLisDELAgo(
                                                        dellistaAgo);
                                                print(dellistaAgo);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                dellistaAgo.clear();
                                                await UserSimplePreferencesAgosto
                                                    .setDataLisDELAgo(
                                                        dellistaAgo);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseDelAgo,
                                            onChanged: (chooseDelAgo) {
                                              chooseIntDelAgo =
                                                  int.tryParse(chooseDelAgo) ??
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
                        totSANAgo = viNSANAgo;
                        totsSANAgo = totSANAgo.toString();
                        sanlistaAgo.add(totsSANAgo);
                        List<int> sanlistaAgoInt =
                            sanlistaAgo.map(int.parse).toList();
                        sumSANAgo = sanlistaAgoInt.sum;
                      });
                      await UserSimplePreferencesAgosto.setDataLisSANAgo(
                          sanlistaAgo);
                      await UserSimplePreferencesAgosto.setDatasumSANAgo(
                          sumSANAgo);
                    }),
                testoTots: 'La spesa totale è: $sumSANAgo',
                testoFormField: TextFormField(
                  initialValue: viSANAgo,
                  onChanged: (viSANAgo) =>
                      viNSANAgo = int.tryParse(viSANAgo) ?? 0,
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
                                            '$sanlistaAgo',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                sanlistaAgo.removeAt(
                                                    chooseIntSanAgo - 1);
                                                await UserSimplePreferencesAgosto
                                                    .setDataLisSANAgo(
                                                        sanlistaAgo);
                                                print(sanlistaAgo);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                sanlistaAgo.clear();
                                                await UserSimplePreferencesAgosto
                                                    .setDataLisSANAgo(
                                                        sanlistaAgo);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseSanAgo,
                                            onChanged: (chooseSanAgo) {
                                              chooseIntSanAgo =
                                                  int.tryParse(chooseSanAgo) ??
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
                        totISTAgo = viNISTAgo;
                        totsISTAgo = totISTAgo.toString();
                        istlistaAgo.add(totsISTAgo);
                        List<int> istlistaAgoInt =
                            istlistaAgo.map(int.parse).toList();
                        sumISTAgo = istlistaAgoInt.sum;
                      });
                      await UserSimplePreferencesAgosto.setDataLisISTAgo(
                          istlistaAgo);
                      await UserSimplePreferencesAgosto.setDatasumISTAgo(
                          sumISTAgo);
                    }),
                testoTots: 'La spesa totale è: $sumISTAgo',
                testoFormField: TextFormField(
                  initialValue: viISTAgo,
                  onChanged: (viISTAgo) =>
                      viNISTAgo = int.tryParse(viISTAgo) ?? 0,
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
                                            '$istlistaAgo',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                istlistaAgo.removeAt(
                                                    chooseIntIstAgo - 1);
                                                await UserSimplePreferencesAgosto
                                                    .setDataLisISTAgo(
                                                        istlistaAgo);
                                                print(istlistaAgo);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                istlistaAgo.clear();
                                                await UserSimplePreferencesAgosto
                                                    .setDataLisISTAgo(
                                                        istlistaAgo);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseIstAgo,
                                            onChanged: (chooseIstAgo) {
                                              chooseIntIstAgo =
                                                  int.tryParse(chooseIstAgo) ??
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
                        totAPPAgo = viNAPPAgo;
                        totsAPPAgo = totAPPAgo.toString();
                        applistaAgo.add(totsAPPAgo);
                        List<int> applistaAgoInt =
                            applistaAgo.map(int.parse).toList();
                        sumAPPAgo = applistaAgoInt.sum;
                      });
                      await UserSimplePreferencesAgosto.setDataLiAPPAgo(
                          applistaAgo);
                      await UserSimplePreferencesAgosto.setDatasumAPPAgo(
                          sumAPPAgo);
                    }),
                testoTots: 'La spesa totale è: $sumAPPAgo',
                testoFormField: TextFormField(
                  initialValue: viAPPAgo,
                  onChanged: (viAPPAgo) =>
                      viNAPPAgo = int.tryParse(viAPPAgo) ?? 0,
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
                                            '$applistaAgo',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                applistaAgo.removeAt(
                                                    chooseIntAppAgo - 1);
                                                await UserSimplePreferencesAgosto
                                                    .setDataLiAPPAgo(
                                                        applistaAgo);
                                                print(applistaAgo);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                applistaAgo.clear();
                                                await UserSimplePreferencesAgosto
                                                    .setDataLiAPPAgo(
                                                        applistaAgo);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseAppAgo,
                                            onChanged: (chooseAppAgo) {
                                              chooseIntAppAgo =
                                                  int.tryParse(chooseAppAgo) ??
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
                        totDIVAgo = viNDIVAgo;
                        totsDIVAgo = totDIVAgo.toString();
                        divlistaAgo.add(totsDIVAgo);
                        List<int> divlistaAgoInt =
                            divlistaAgo.map(int.parse).toList();
                        sumDIVAgo = divlistaAgoInt.sum;
                      });
                      await UserSimplePreferencesAgosto.setDataLisDIVAgo(
                          divlistaAgo);
                      await UserSimplePreferencesAgosto.setDatasumDIVAgo(
                          sumDIVAgo);
                    }),
                testoTots: 'La spesa totale è: $sumDIVAgo',
                testoFormField: TextFormField(
                  initialValue: viDIVAgo,
                  onChanged: (viDIVAgo) =>
                      viNDIVAgo = int.tryParse(viDIVAgo) ?? 0,
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
                                            '$divlistaAgo',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                divlistaAgo.removeAt(
                                                    chooseIntDivAgo - 1);
                                                await UserSimplePreferencesAgosto
                                                    .setDataLisDIVAgo(
                                                        divlistaAgo);
                                                print(divlistaAgo);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                divlistaAgo.clear();
                                                await UserSimplePreferencesAgosto
                                                    .setDataLisDIVAgo(
                                                        divlistaAgo);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseDivAgo,
                                            onChanged: (chooseDivAgo) {
                                              chooseIntDivAgo =
                                                  int.tryParse(chooseDivAgo) ??
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
                        totUTIAgo = viNUTIAgo;
                        totsUTIAgo = totUTIAgo.toString();
                        utilistaAgo.add(totsUTIAgo);
                        List<int> utilistaAgoInt =
                            utilistaAgo.map(int.parse).toList();
                        sumUTIAgo = utilistaAgoInt.sum;
                      });
                      await UserSimplePreferencesAgosto.setDataLisDIVAgo(
                          utilistaAgo);
                      await UserSimplePreferencesAgosto.setDatasumDIVAgo(
                          sumDIVAgo);
                    }),
                testoTots: 'La spesa totale è: $totsUTIAgo',
                testoFormField: TextFormField(
                  initialValue: viUTIAgo,
                  onChanged: (viUTIAgo) =>
                      viNUTIAgo = int.tryParse(viUTIAgo) ?? 0,
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
                                            '$utilistaAgo',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                utilistaAgo.removeAt(
                                                    chooseIntUtiAgo - 1);
                                                await UserSimplePreferencesAgosto
                                                    .setDataLisDIVAgo(
                                                        utilistaAgo);
                                                print(utilistaAgo);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                utilistaAgo.clear();
                                                await UserSimplePreferencesAgosto
                                                    .setDataLisDIVAgo(
                                                        utilistaAgo);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseUtiAgo,
                                            onChanged: (chooseUtiAgo) {
                                              chooseIntUtiAgo =
                                                  int.tryParse(chooseUtiAgo) ??
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
                        totSPEAgo = viNSPEAgo;
                        totsSPEAgo = totSPEAgo.toString();
                        spelistaAgo.add(totsSPEAgo);
                        List<int> spelistaAgoInt =
                            spelistaAgo.map(int.parse).toList();
                        sumSPEAgo = spelistaAgoInt.sum;
                      });
                      await UserSimplePreferencesAgosto.setDataLisSPEAgo(
                          spelistaAgo);
                      await UserSimplePreferencesAgosto.setDatasumSPEAgo(
                          sumSPEAgo);
                    }),
                testoTots: 'La spesa totale è: $totsSPEAgo',
                testoFormField: TextFormField(
                  initialValue: viSPEAgo,
                  onChanged: (viSPEAgo) =>
                      viNSPEAgo = int.tryParse(viSPEAgo) ?? 0,
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
                                            '$spelistaAgo',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                spelistaAgo.removeAt(
                                                    chooseIntSpeAgo - 1);
                                                await UserSimplePreferencesAgosto
                                                    .setDataLisSPEAgo(
                                                        spelistaAgo);
                                                print(spelistaAgo);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                spelistaAgo.clear();
                                                await UserSimplePreferencesAgosto
                                                    .setDataLisSPEAgo(
                                                        spelistaAgo);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseSpeAgo,
                                            onChanged: (chooseSpeAgo) {
                                              chooseIntSpeAgo =
                                                  int.tryParse(chooseSpeAgo) ??
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
