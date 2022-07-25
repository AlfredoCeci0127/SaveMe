import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widget/ExpenseBox.dart';
import 'package:flutter_application_1/Widget/UserPreferences/UserPreferencesAprile.dart';
import 'package:collection/collection.dart';

class AprilePage extends StatefulWidget {
  const AprilePage({Key? key}) : super(key: key);

  @override
  State<AprilePage> createState() => _AprilePageState();
}

class _AprilePageState extends State<AprilePage> {
  final _formKey = GlobalKey<FormState>();
  //RIS
  String viRISApr = '';
  int viNRISApr = 0;
  String totsRISApr = '';
  int totRISApr = 0;
  List<String> rislistaApr = [];
  List<int> rislistaAprInt = [];
  int sumRISApr = 0;
  String chooseRisApr = '';
  int chooseIntRisApr = 0;
  //DEL
  String viDELApr = '';
  int viNDELApr = 0;
  int totDELApr = 0;
  String totsDELApr = '';
  List<String> dellistaApr = [];
  List<int> dellistaAprInt = [];
  int sumDELApr = 0;
  String chooseDelApr = '';
  int chooseIntDelApr = 0;
  //SAN
  String viSANApr = '';
  int viNSANApr = 0;
  int totSANApr = 0;
  String totsSANApr = '';
  List<String> sanlistaApr = [];
  List<int> sanlistaAprInt = [];
  int sumSANApr = 0;
  String chooseSanApr = '';
  int chooseIntSanApr = 0;
  //IST
  String viISTApr = '';
  int viNISTApr = 0;
  int totISTApr = 0;
  String totsISTApr = '';
  List<String> istlistaApr = [];
  List<int> istlistaAprInt = [];
  int sumISTApr = 0;
  String chooseIstApr = '';
  int chooseIntIstApr = 0;
  //APP
  String viAPPApr = '';
  int viNAPPApr = 0;
  int totAPPApr = 0;
  String totsAPPApr = '';
  List<String> applistaApr = [];
  List<int> applistaAprInt = [];
  int sumAPPApr = 0;
  String chooseAppApr = '';
  int chooseIntAppApr = 0;
  //DIV
  String viDIVApr = '';
  int viNDIVApr = 0;
  int totDIVApr = 0;
  String totsDIVApr = '';
  List<String> divlistaApr = [];
  List<int> divlistaAprInt = [];
  int sumDIVApr = 0;
  String chooseDivApr = '';
  int chooseIntDivApr = 0;
  //UTI
  String viUTIApr = '';
  int viNUTIApr = 0;
  int totUTIApr = 0;
  String totsUTIApr = '';
  List<String> utilistaApr = [];
  List<int> utilistaAprInt = [];
  int sumUTIApr = 0;
  String chooseUtiApr = '';
  int chooseIntUtiApr = 0;
  //SPE
  String viSPEApr = '';
  int viNSPEApr = 0;
  int totSPEApr = 0;
  String totsSPEApr = '';
  List<String> spelistaApr = [];
  List<int> spelistaAprInt = [];
  int sumSPEApr = 0;
  String chooseSpeApr = '';
  int chooseIntSpeApr = 0;

  var color_green = const Color.fromARGB(255, 29, 139, 33);

  @override
  void initState() {
    super.initState();
    rislistaApr = UserSimplePreferencesAprile.getLisRISApr() ?? [];
    sumRISApr = UserSimplePreferencesAprile.getDatasumRISApr() ?? 0;
    dellistaApr = UserSimplePreferencesAprile.getLisDELApr() ?? [];
    sumDELApr = UserSimplePreferencesAprile.getDatasumDELApr() ?? 0;
    sanlistaApr = UserSimplePreferencesAprile.getLisSANApr() ?? [];
    sumSANApr = UserSimplePreferencesAprile.getDatasumSANApr() ?? 0;
    istlistaApr = UserSimplePreferencesAprile.getLisISTApr() ?? [];
    sumISTApr = UserSimplePreferencesAprile.getDatasumISTApr() ?? 0;
    applistaApr = UserSimplePreferencesAprile.getLisAPPApr() ?? [];
    sumAPPApr = UserSimplePreferencesAprile.getDatasumAPPApr() ?? 0;
    divlistaApr = UserSimplePreferencesAprile.getLisDIVApr() ?? [];
    sumDIVApr = UserSimplePreferencesAprile.getDatasumDIVApr() ?? 0;
    utilistaApr = UserSimplePreferencesAprile.getLisUTIApr() ?? [];
    sumUTIApr = UserSimplePreferencesAprile.getDatasumUTIApr() ?? 0;
    spelistaApr = UserSimplePreferencesAprile.getLisSPEApr() ?? [];
    sumSPEApr = UserSimplePreferencesAprile.getDatasumSPEApr() ?? 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: color_green,
          title: const Text("Aprile"),
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
                        totRISApr = viNRISApr;
                        totsRISApr = totRISApr.toString();
                        rislistaApr.add(totsRISApr);
                        List<int> rislistaAprInt =
                            rislistaApr.map(int.parse).toList();
                        sumRISApr = rislistaAprInt.sum;
                      });
                      await UserSimplePreferencesAprile.setDataLisRISApr(
                          rislistaApr);
                      await UserSimplePreferencesAprile.setDatasumRISApr(
                          sumRISApr);
                    }),
                testoTots: 'La spesa totale è: $sumRISApr',
                testoFormField: TextFormField(
                  initialValue: viRISApr,
                  onChanged: (viRISApr) =>
                      viNRISApr = int.tryParse(viRISApr) ?? 0,
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
                                            '$rislistaApr',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                rislistaApr.removeAt(
                                                    chooseIntRisApr - 1);
                                                await UserSimplePreferencesAprile
                                                    .setDataLisRISApr(
                                                        rislistaApr);
                                                print(rislistaApr);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                rislistaApr.clear();
                                                await UserSimplePreferencesAprile
                                                    .setDataLisRISApr(
                                                        rislistaApr);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseRisApr,
                                            onChanged: (chooseRisApr) {
                                              chooseIntRisApr =
                                                  int.tryParse(chooseRisApr) ??
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
                        totDELApr = viNDELApr;
                        totsDELApr = totDELApr.toString();
                        dellistaApr.add(totsDELApr);
                        List<int> dellistaAprInt =
                            dellistaApr.map(int.parse).toList();
                        sumDELApr = dellistaAprInt.sum;
                      });
                      await UserSimplePreferencesAprile.setDataLisDELApr(
                          dellistaApr);
                      await UserSimplePreferencesAprile.setDatasumDELApr(
                          sumDELApr);
                    }),
                testoTots: 'La spesa totale è: $sumDELApr',
                testoFormField: TextFormField(
                  initialValue: viDELApr,
                  onChanged: (viDELApr) =>
                      viNDELApr = int.tryParse(viDELApr) ?? 0,
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
                                            '$dellistaApr',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                dellistaApr.removeAt(
                                                    chooseIntRisApr - 1);
                                                await UserSimplePreferencesAprile
                                                    .setDataLisDELApr(
                                                        dellistaApr);
                                                print(dellistaApr);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                dellistaApr.clear();
                                                await UserSimplePreferencesAprile
                                                    .setDataLisDELApr(
                                                        dellistaApr);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseDelApr,
                                            onChanged: (chooseDelApr) {
                                              chooseIntDelApr =
                                                  int.tryParse(chooseDelApr) ??
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
                        totSANApr = viNSANApr;
                        totsSANApr = totSANApr.toString();
                        sanlistaApr.add(totsSANApr);
                        List<int> sanlistaAprInt =
                            sanlistaApr.map(int.parse).toList();
                        sumSANApr = sanlistaAprInt.sum;
                      });
                      await UserSimplePreferencesAprile.setDataLisSANApr(
                          sanlistaApr);
                      await UserSimplePreferencesAprile.setDatasumSANApr(
                          sumSANApr);
                    }),
                testoTots: 'La spesa totale è: $sumSANApr',
                testoFormField: TextFormField(
                  initialValue: viSANApr,
                  onChanged: (viSANApr) =>
                      viNSANApr = int.tryParse(viSANApr) ?? 0,
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
                                            '$sanlistaApr',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                sanlistaApr.removeAt(
                                                    chooseIntSanApr - 1);
                                                await UserSimplePreferencesAprile
                                                    .setDataLisSANApr(
                                                        sanlistaApr);
                                                print(sanlistaApr);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                sanlistaApr.clear();
                                                await UserSimplePreferencesAprile
                                                    .setDataLisSANApr(
                                                        sanlistaApr);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseSanApr,
                                            onChanged: (chooseSanApr) {
                                              chooseIntSanApr =
                                                  int.tryParse(chooseSanApr) ??
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
                        totISTApr = viNISTApr;
                        totsISTApr = totISTApr.toString();
                        istlistaApr.add(totsISTApr);
                        List<int> istlistaAprInt =
                            istlistaApr.map(int.parse).toList();
                        sumISTApr = istlistaAprInt.sum;
                      });
                      await UserSimplePreferencesAprile.setDataLisISTApr(
                          istlistaApr);
                      await UserSimplePreferencesAprile.setDatasumISTApr(
                          sumISTApr);
                    }),
                testoTots: 'La spesa totale è: $sumISTApr',
                testoFormField: TextFormField(
                  initialValue: viISTApr,
                  onChanged: (viISTApr) =>
                      viNISTApr = int.tryParse(viISTApr) ?? 0,
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
                                            '$istlistaApr',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                istlistaApr.removeAt(
                                                    chooseIntIstApr - 1);
                                                await UserSimplePreferencesAprile
                                                    .setDataLisISTApr(
                                                        istlistaApr);
                                                print(istlistaApr);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                istlistaApr.clear();
                                                await UserSimplePreferencesAprile
                                                    .setDataLisISTApr(
                                                        istlistaApr);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseIstApr,
                                            onChanged: (chooseIstApr) {
                                              chooseIntIstApr =
                                                  int.tryParse(chooseIstApr) ??
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
                        totAPPApr = viNAPPApr;
                        totsAPPApr = totAPPApr.toString();
                        applistaApr.add(totsAPPApr);
                        List<int> applistaAprInt =
                            applistaApr.map(int.parse).toList();
                        sumAPPApr = applistaAprInt.sum;
                      });
                      await UserSimplePreferencesAprile.setDataLiAPPApr(
                          applistaApr);
                      await UserSimplePreferencesAprile.setDatasumAPPApr(
                          sumAPPApr);
                    }),
                testoTots: 'La spesa totale è: $sumAPPApr',
                testoFormField: TextFormField(
                  initialValue: viAPPApr,
                  onChanged: (viAPPApr) =>
                      viNAPPApr = int.tryParse(viAPPApr) ?? 0,
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
                                            '$applistaApr',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                applistaApr.removeAt(
                                                    chooseIntAppApr - 1);
                                                await UserSimplePreferencesAprile
                                                    .setDataLiAPPApr(
                                                        applistaApr);
                                                print(applistaApr);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                applistaApr.clear();
                                                await UserSimplePreferencesAprile
                                                    .setDataLiAPPApr(
                                                        applistaApr);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseAppApr,
                                            onChanged: (chooseAppApr) {
                                              chooseIntAppApr =
                                                  int.tryParse(chooseAppApr) ??
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
                        totDIVApr = viNDIVApr;
                        totsDIVApr = totDIVApr.toString();
                        divlistaApr.add(totsDIVApr);
                        List<int> divlistaAprInt =
                            divlistaApr.map(int.parse).toList();
                        sumDIVApr = divlistaAprInt.sum;
                      });
                      await UserSimplePreferencesAprile.setDataLisDIVApr(
                          divlistaApr);
                      await UserSimplePreferencesAprile.setDatasumDIVApr(
                          sumDIVApr);
                    }),
                testoTots: 'La spesa totale è: $sumDIVApr',
                testoFormField: TextFormField(
                  initialValue: viDIVApr,
                  onChanged: (viDIVApr) =>
                      viNDIVApr = int.tryParse(viDIVApr) ?? 0,
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
                                            '$divlistaApr',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                divlistaApr.removeAt(
                                                    chooseIntDivApr - 1);
                                                await UserSimplePreferencesAprile
                                                    .setDataLisDIVApr(
                                                        divlistaApr);
                                                print(divlistaApr);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                divlistaApr.clear();
                                                await UserSimplePreferencesAprile
                                                    .setDataLisDIVApr(
                                                        divlistaApr);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseDivApr,
                                            onChanged: (chooseDivApr) {
                                              chooseIntDivApr =
                                                  int.tryParse(chooseDivApr) ??
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
                        totUTIApr = viNUTIApr;
                        totsUTIApr = totUTIApr.toString();
                        utilistaApr.add(totsUTIApr);
                        List<int> utilistaAprInt =
                            utilistaApr.map(int.parse).toList();
                        sumUTIApr = utilistaAprInt.sum;
                      });
                      await UserSimplePreferencesAprile.setDataLisDIVApr(
                          utilistaApr);
                      await UserSimplePreferencesAprile.setDatasumDIVApr(
                          sumDIVApr);
                    }),
                testoTots: 'La spesa totale è: $totsUTIApr',
                testoFormField: TextFormField(
                  initialValue: viUTIApr,
                  onChanged: (viUTIApr) =>
                      viNUTIApr = int.tryParse(viUTIApr) ?? 0,
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
                                            '$utilistaApr',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                utilistaApr.removeAt(
                                                    chooseIntUtiApr - 1);
                                                await UserSimplePreferencesAprile
                                                    .setDataLisDIVApr(
                                                        utilistaApr);
                                                print(utilistaApr);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                utilistaApr.clear();
                                                await UserSimplePreferencesAprile
                                                    .setDataLisDIVApr(
                                                        utilistaApr);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseUtiApr,
                                            onChanged: (chooseUtiApr) {
                                              chooseIntUtiApr =
                                                  int.tryParse(chooseUtiApr) ??
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
                        totSPEApr = viNSPEApr;
                        totsSPEApr = totSPEApr.toString();
                        spelistaApr.add(totsSPEApr);
                        List<int> spelistaAprInt =
                            spelistaApr.map(int.parse).toList();
                        sumSPEApr = spelistaAprInt.sum;
                      });
                      await UserSimplePreferencesAprile.setDataLisSPEApr(
                          spelistaApr);
                      await UserSimplePreferencesAprile.setDatasumSPEApr(
                          sumSPEApr);
                    }),
                testoTots: 'La spesa totale è: $totsSPEApr',
                testoFormField: TextFormField(
                  initialValue: viSPEApr,
                  onChanged: (viSPEApr) =>
                      viNSPEApr = int.tryParse(viSPEApr) ?? 0,
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
                                            '$spelistaApr',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                spelistaApr.removeAt(
                                                    chooseIntSpeApr - 1);
                                                await UserSimplePreferencesAprile
                                                    .setDataLisSPEApr(
                                                        spelistaApr);
                                                print(spelistaApr);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                spelistaApr.clear();
                                                await UserSimplePreferencesAprile
                                                    .setDataLisSPEApr(
                                                        spelistaApr);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseSpeApr,
                                            onChanged: (chooseSpeApr) {
                                              chooseIntSpeApr =
                                                  int.tryParse(chooseSpeApr) ??
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
