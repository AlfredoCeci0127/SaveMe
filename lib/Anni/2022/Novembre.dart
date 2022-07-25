import 'package:flutter/material.dart';
import 'package:collection/collection.dart';
import 'package:flutter_application_1/Widget/ExpenseBox.dart';
import 'package:flutter_application_1/Widget/UserPreferences/UserPreferencesNovembre.dart';

class NovembrePage extends StatefulWidget {
  const NovembrePage({Key? key}) : super(key: key);

  @override
  State<NovembrePage> createState() => _NovembrePageState();
}

class _NovembrePageState extends State<NovembrePage> {
  final _formKey = GlobalKey<FormState>();
  //RIS
  String viRISNov = '';
  int viNRISNov = 0;
  String totsRISNov = '';
  int totRISNov = 0;
  List<String> rislistaNov = [];
  List<int> rislistaNovInt = [];
  int sumRISNov = 0;
  String chooseRisNov = '';
  int chooseIntRisNov = 0;
  //DEL
  String viDELNov = '';
  int viNDELNov = 0;
  int totDELNov = 0;
  String totsDELNov = '';
  List<String> dellistaNov = [];
  List<int> dellistaNovInt = [];
  int sumDELNov = 0;
  String chooseDelNov = '';
  int chooseIntDelNov = 0;
  //SAN
  String viSANNov = '';
  int viNSANNov = 0;
  int totSANNov = 0;
  String totsSANNov = '';
  List<String> sanlistaNov = [];
  List<int> sanlistaNovInt = [];
  int sumSANNov = 0;
  String chooseSanNov = '';
  int chooseIntSanNov = 0;
  //IST
  String viISTNov = '';
  int viNISTNov = 0;
  int totISTNov = 0;
  String totsISTNov = '';
  List<String> istlistaNov = [];
  List<int> istlistaNovInt = [];
  int sumISTNov = 0;
  String chooseIstNov = '';
  int chooseIntIstNov = 0;
  //APP
  String viAPPNov = '';
  int viNAPPNov = 0;
  int totAPPNov = 0;
  String totsAPPNov = '';
  List<String> applistaNov = [];
  List<int> applistaNovInt = [];
  int sumAPPNov = 0;
  String chooseAppNov = '';
  int chooseIntAppNov = 0;
  //DIV
  String viDIVNov = '';
  int viNDIVNov = 0;
  int totDIVNov = 0;
  String totsDIVNov = '';
  List<String> divlistaNov = [];
  List<int> divlistaNovInt = [];
  int sumDIVNov = 0;
  String chooseDivNov = '';
  int chooseIntDivNov = 0;
  //UTI
  String viUTINov = '';
  int viNUTINov = 0;
  int totUTINov = 0;
  String totsUTINov = '';
  List<String> utilistaNov = [];
  List<int> utilistaNovInt = [];
  int sumUTINov = 0;
  String chooseUtiNov = '';
  int chooseIntUtiNov = 0;
  //SPE
  String viSPENov = '';
  int viNSPENov = 0;
  int totSPENov = 0;
  String totsSPENov = '';
  List<String> spelistaNov = [];
  List<int> spelistaNovInt = [];
  int sumSPENov = 0;
  String chooseSpeNov = '';
  int chooseIntSpeNov = 0;

  var color_green = const Color.fromARGB(255, 29, 139, 33);

  @override
  void initState() {
    super.initState();
    sumRISNov = UserSimplePreferencesNovembre.getDatasumRISNov() ?? 0;
    rislistaNov = UserSimplePreferencesNovembre.getLisRISNov() ?? [];
    sumDELNov = UserSimplePreferencesNovembre.getDatasumDELNov() ?? 0;
    dellistaNov = UserSimplePreferencesNovembre.getLisRISNov() ?? [];
    sumSANNov = UserSimplePreferencesNovembre.getDatasumSANNov() ?? 0;
    sanlistaNov = UserSimplePreferencesNovembre.getLisRISNov() ?? [];
    sumISTNov = UserSimplePreferencesNovembre.getDatasumISTNov() ?? 0;
    istlistaNov = UserSimplePreferencesNovembre.getLisRISNov() ?? [];
    sumAPPNov = UserSimplePreferencesNovembre.getDatasumAPPNov() ?? 0;
    applistaNov = UserSimplePreferencesNovembre.getLisRISNov() ?? [];
    sumDIVNov = UserSimplePreferencesNovembre.getDatasumDIVNov() ?? 0;
    divlistaNov = UserSimplePreferencesNovembre.getLisRISNov() ?? [];
    sumUTINov = UserSimplePreferencesNovembre.getDatasumUTINov() ?? 0;
    utilistaNov = UserSimplePreferencesNovembre.getLisRISNov() ?? [];
    sumSPENov = UserSimplePreferencesNovembre.getDatasumSPENov() ?? 0;
    spelistaNov = UserSimplePreferencesNovembre.getLisRISNov() ?? [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: color_green,
          title: const Text("Novembre"),
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
                        totRISNov = viNRISNov;
                        totsRISNov = totRISNov.toString();
                        rislistaNov.add(totsRISNov);
                        List<int> rislistaNovInt =
                            rislistaNov.map(int.parse).toList();
                        sumRISNov = rislistaNovInt.sum;
                      });
                      await UserSimplePreferencesNovembre.setDataLisRISNov(
                          rislistaNov);
                      await UserSimplePreferencesNovembre.setDatasumRISNov(
                          sumRISNov);
                    }),
                testoTots: 'La spesa totale è: $sumRISNov',
                testoFormField: TextFormField(
                  initialValue: viRISNov,
                  onChanged: (viRISNov) =>
                      viNRISNov = int.tryParse(viRISNov) ?? 0,
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
                                            '$rislistaNov',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                rislistaNov.removeAt(
                                                    chooseIntRisNov - 1);
                                                await UserSimplePreferencesNovembre
                                                    .setDataLisRISNov(
                                                        rislistaNov);
                                                print(rislistaNov);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                rislistaNov.clear();
                                                await UserSimplePreferencesNovembre
                                                    .setDataLisRISNov(
                                                        rislistaNov);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseRisNov,
                                            onChanged: (chooseRisNov) {
                                              chooseIntRisNov =
                                                  int.tryParse(chooseRisNov) ??
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
                        totDELNov = viNDELNov;
                        totsDELNov = totDELNov.toString();
                        dellistaNov.add(totsDELNov);
                        List<int> dellistaNovInt =
                            dellistaNov.map(int.parse).toList();
                        sumDELNov = dellistaNovInt.sum;
                      });
                      await UserSimplePreferencesNovembre.setDataLisDELNov(
                          dellistaNov);
                      await UserSimplePreferencesNovembre.setDatasumDELNov(
                          sumDELNov);
                    }),
                testoTots: 'La spesa totale è: $sumDELNov',
                testoFormField: TextFormField(
                  initialValue: viDELNov,
                  onChanged: (viDELNov) =>
                      viNDELNov = int.tryParse(viDELNov) ?? 0,
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
                                            '$dellistaNov',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                dellistaNov.removeAt(
                                                    chooseIntRisNov - 1);
                                                await UserSimplePreferencesNovembre
                                                    .setDataLisDELNov(
                                                        dellistaNov);
                                                print(dellistaNov);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                dellistaNov.clear();
                                                await UserSimplePreferencesNovembre
                                                    .setDataLisDELNov(
                                                        dellistaNov);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseDelNov,
                                            onChanged: (chooseDelNov) {
                                              chooseIntDelNov =
                                                  int.tryParse(chooseDelNov) ??
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
                        totSANNov = viNSANNov;
                        totsSANNov = totSANNov.toString();
                        sanlistaNov.add(totsSANNov);
                        List<int> sanlistaNovInt =
                            sanlistaNov.map(int.parse).toList();
                        sumSANNov = sanlistaNovInt.sum;
                      });
                      await UserSimplePreferencesNovembre.setDataLisSANNov(
                          sanlistaNov);
                      await UserSimplePreferencesNovembre.setDatasumSANNov(
                          sumSANNov);
                    }),
                testoTots: 'La spesa totale è: $sumSANNov',
                testoFormField: TextFormField(
                  initialValue: viSANNov,
                  onChanged: (viSANNov) =>
                      viNSANNov = int.tryParse(viSANNov) ?? 0,
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
                                            '$sanlistaNov',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                sanlistaNov.removeAt(
                                                    chooseIntSanNov - 1);
                                                await UserSimplePreferencesNovembre
                                                    .setDataLisSANNov(
                                                        sanlistaNov);
                                                print(sanlistaNov);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                sanlistaNov.clear();
                                                await UserSimplePreferencesNovembre
                                                    .setDataLisSANNov(
                                                        sanlistaNov);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseSanNov,
                                            onChanged: (chooseSanNov) {
                                              chooseIntSanNov =
                                                  int.tryParse(chooseSanNov) ??
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
                        totISTNov = viNISTNov;
                        totsISTNov = totISTNov.toString();
                        istlistaNov.add(totsISTNov);
                        List<int> istlistaNovInt =
                            istlistaNov.map(int.parse).toList();
                        sumISTNov = istlistaNovInt.sum;
                      });
                      await UserSimplePreferencesNovembre.setDataLisISTNov(
                          istlistaNov);
                      await UserSimplePreferencesNovembre.setDatasumISTNov(
                          sumISTNov);
                    }),
                testoTots: 'La spesa totale è: $sumISTNov',
                testoFormField: TextFormField(
                  initialValue: viISTNov,
                  onChanged: (viISTNov) =>
                      viNISTNov = int.tryParse(viISTNov) ?? 0,
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
                                            '$istlistaNov',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                istlistaNov.removeAt(
                                                    chooseIntIstNov - 1);
                                                await UserSimplePreferencesNovembre
                                                    .setDataLisISTNov(
                                                        istlistaNov);
                                                print(istlistaNov);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                istlistaNov.clear();
                                                await UserSimplePreferencesNovembre
                                                    .setDataLisISTNov(
                                                        istlistaNov);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseIstNov,
                                            onChanged: (chooseIstNov) {
                                              chooseIntIstNov =
                                                  int.tryParse(chooseIstNov) ??
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
                        totAPPNov = viNAPPNov;
                        totsAPPNov = totAPPNov.toString();
                        applistaNov.add(totsAPPNov);
                        List<int> applistaNovInt =
                            applistaNov.map(int.parse).toList();
                        sumAPPNov = applistaNovInt.sum;
                      });
                      await UserSimplePreferencesNovembre.setDataLiAPPNov(
                          applistaNov);
                      await UserSimplePreferencesNovembre.setDatasumAPPNov(
                          sumAPPNov);
                    }),
                testoTots: 'La spesa totale è: $sumAPPNov',
                testoFormField: TextFormField(
                  initialValue: viAPPNov,
                  onChanged: (viAPPNov) =>
                      viNAPPNov = int.tryParse(viAPPNov) ?? 0,
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
                                            '$applistaNov',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                applistaNov.removeAt(
                                                    chooseIntAppNov - 1);
                                                await UserSimplePreferencesNovembre
                                                    .setDataLiAPPNov(
                                                        applistaNov);
                                                print(applistaNov);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                applistaNov.clear();
                                                await UserSimplePreferencesNovembre
                                                    .setDataLiAPPNov(
                                                        applistaNov);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseAppNov,
                                            onChanged: (chooseAppNov) {
                                              chooseIntAppNov =
                                                  int.tryParse(chooseAppNov) ??
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
                        totDIVNov = viNDIVNov;
                        totsDIVNov = totDIVNov.toString();
                        divlistaNov.add(totsDIVNov);
                        List<int> divlistaNovInt =
                            divlistaNov.map(int.parse).toList();
                        sumDIVNov = divlistaNovInt.sum;
                      });
                      await UserSimplePreferencesNovembre.setDataLisDIVNov(
                          divlistaNov);
                      await UserSimplePreferencesNovembre.setDatasumDIVNov(
                          sumDIVNov);
                    }),
                testoTots: 'La spesa totale è: $sumDIVNov',
                testoFormField: TextFormField(
                  initialValue: viDIVNov,
                  onChanged: (viDIVNov) =>
                      viNDIVNov = int.tryParse(viDIVNov) ?? 0,
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
                                            '$divlistaNov',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                divlistaNov.removeAt(
                                                    chooseIntDivNov - 1);
                                                await UserSimplePreferencesNovembre
                                                    .setDataLisDIVNov(
                                                        divlistaNov);
                                                print(divlistaNov);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                divlistaNov.clear();
                                                await UserSimplePreferencesNovembre
                                                    .setDataLisDIVNov(
                                                        divlistaNov);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseDivNov,
                                            onChanged: (chooseDivNov) {
                                              chooseIntDivNov =
                                                  int.tryParse(chooseDivNov) ??
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
                        totUTINov = viNUTINov;
                        totsUTINov = totUTINov.toString();
                        utilistaNov.add(totsUTINov);
                        List<int> utilistaNovInt =
                            utilistaNov.map(int.parse).toList();
                        sumUTINov = utilistaNovInt.sum;
                      });
                      await UserSimplePreferencesNovembre.setDataLisDIVNov(
                          utilistaNov);
                      await UserSimplePreferencesNovembre.setDatasumDIVNov(
                          sumDIVNov);
                    }),
                testoTots: 'La spesa totale è: $totsUTINov',
                testoFormField: TextFormField(
                  initialValue: viUTINov,
                  onChanged: (viUTINov) =>
                      viNUTINov = int.tryParse(viUTINov) ?? 0,
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
                                            '$utilistaNov',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                utilistaNov.removeAt(
                                                    chooseIntUtiNov - 1);
                                                await UserSimplePreferencesNovembre
                                                    .setDataLisDIVNov(
                                                        utilistaNov);
                                                print(utilistaNov);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                utilistaNov.clear();
                                                await UserSimplePreferencesNovembre
                                                    .setDataLisDIVNov(
                                                        utilistaNov);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseUtiNov,
                                            onChanged: (chooseUtiNov) {
                                              chooseIntUtiNov =
                                                  int.tryParse(chooseUtiNov) ??
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
                        totSPENov = viNSPENov;
                        totsSPENov = totSPENov.toString();
                        spelistaNov.add(totsSPENov);
                        List<int> spelistaNovInt =
                            spelistaNov.map(int.parse).toList();
                        sumSPENov = spelistaNovInt.sum;
                      });
                      await UserSimplePreferencesNovembre.setDataLisSPENov(
                          spelistaNov);
                      await UserSimplePreferencesNovembre.setDatasumSPENov(
                          sumSPENov);
                    }),
                testoTots: 'La spesa totale è: $totsSPENov',
                testoFormField: TextFormField(
                  initialValue: viSPENov,
                  onChanged: (viSPENov) =>
                      viNSPENov = int.tryParse(viSPENov) ?? 0,
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
                                            '$spelistaNov',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                spelistaNov.removeAt(
                                                    chooseIntSpeNov - 1);
                                                await UserSimplePreferencesNovembre
                                                    .setDataLisSPENov(
                                                        spelistaNov);
                                                print(spelistaNov);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                spelistaNov.clear();
                                                await UserSimplePreferencesNovembre
                                                    .setDataLisSPENov(
                                                        spelistaNov);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseSpeNov,
                                            onChanged: (chooseSpeNov) {
                                              chooseIntSpeNov =
                                                  int.tryParse(chooseSpeNov) ??
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
