import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widget/ExpenseBox.dart';
import 'package:flutter_application_1/Widget/UserPreferences/UserPreferencesGiugno.dart';
import 'package:flutter_application_1/Widget/UserPreferences/UserSimplePreferences.dart';
import 'package:collection/collection.dart';

class GiugnoPage extends StatefulWidget {
  const GiugnoPage({Key? key}) : super(key: key);

  @override
  State<GiugnoPage> createState() => _GiugnoPageState();
}

class _GiugnoPageState extends State<GiugnoPage> {
  final _formKey = GlobalKey<FormState>();
  //RIS
  String viRISGiu = '';
  int viNRISGiu = 0;
  String totsRISGiu = '';
  int totRISGiu = 0;
  List<String> rislistaGiu = [];
  List<int> rislistaGiuInt = [];
  int sumRISGiu = 0;
  String chooseRisGiu = '';
  int chooseIntRisGiu = 0;
  //DEL
  String viDELGiu = '';
  int viNDELGiu = 0;
  int totDELGiu = 0;
  String totsDELGiu = '';
  List<String> dellistaGiu = [];
  List<int> dellistaGiuInt = [];
  int sumDELGiu = 0;
  String chooseDelGiu = '';
  int chooseIntDelGiu = 0;
  //SAN
  String viSANGiu = '';
  int viNSANGiu = 0;
  int totSANGiu = 0;
  String totsSANGiu = '';
  List<String> sanlistaGiu = [];
  List<int> sanlistaGiuInt = [];
  int sumSANGiu = 0;
  String chooseSanGiu = '';
  int chooseIntSanGiu = 0;
  //IST
  String viISTGiu = '';
  int viNISTGiu = 0;
  int totISTGiu = 0;
  String totsISTGiu = '';
  List<String> istlistaGiu = [];
  List<int> istlistaGiuInt = [];
  int sumISTGiu = 0;
  String chooseIstGiu = '';
  int chooseIntIstGiu = 0;
  //APP
  String viAPPGiu = '';
  int viNAPPGiu = 0;
  int totAPPGiu = 0;
  String totsAPPGiu = '';
  List<String> applistaGiu = [];
  List<int> applistaGiuInt = [];
  int sumAPPGiu = 0;
  String chooseAppGiu = '';
  int chooseIntAppGiu = 0;
  //DIV
  String viDIVGiu = '';
  int viNDIVGiu = 0;
  int totDIVGiu = 0;
  String totsDIVGiu = '';
  List<String> divlistaGiu = [];
  List<int> divlistaGiuInt = [];
  int sumDIVGiu = 0;
  String chooseDivGiu = '';
  int chooseIntDivGiu = 0;
  //UTI
  String viUTIGiu = '';
  int viNUTIGiu = 0;
  int totUTIGiu = 0;
  String totsUTIGiu = '';
  List<String> utilistaGiu = [];
  List<int> utilistaGiuInt = [];
  int sumUTIGiu = 0;
  String chooseUtiGiu = '';
  int chooseIntUtiGiu = 0;
  //SPE
  String viSPEGiu = '';
  int viNSPEGiu = 0;
  int totSPEGiu = 0;
  String totsSPEGiu = '';
  List<String> spelistaGiu = [];
  List<int> spelistaGiuInt = [];
  int sumSPEGiu = 0;
  String chooseSpeGiu = '';
  int chooseIntSpeGiu = 0;

  var color_green = const Color.fromARGB(255, 29, 139, 33);

  @override
  void initState() {
    super.initState();
    rislistaGiu = UserSimplePreferencesGiugno.getLisRISGiu() ?? [];
    sumRISGiu = UserSimplePreferencesGiugno.getDatasumRISGiu() ?? 0;
    dellistaGiu = UserSimplePreferencesGiugno.getLisDELGiu() ?? [];
    sumDELGiu = UserSimplePreferencesGiugno.getDatasumDELGiu() ?? 0;
    sanlistaGiu = UserSimplePreferencesGiugno.getLisSANGiu() ?? [];
    sumSANGiu = UserSimplePreferencesGiugno.getDatasumSANGiu() ?? 0;
    istlistaGiu = UserSimplePreferencesGiugno.getLisISTGiu() ?? [];
    sumISTGiu = UserSimplePreferencesGiugno.getDatasumISTGiu() ?? 0;
    applistaGiu = UserSimplePreferencesGiugno.getLisAPPGiu() ?? [];
    sumAPPGiu = UserSimplePreferencesGiugno.getDatasumAPPGiu() ?? 0;
    divlistaGiu = UserSimplePreferencesGiugno.getLisDIVGiu() ?? [];
    sumDIVGiu = UserSimplePreferencesGiugno.getDatasumDIVGiu() ?? 0;
    utilistaGiu = UserSimplePreferencesGiugno.getLisUTIGiu() ?? [];
    sumUTIGiu = UserSimplePreferencesGiugno.getDatasumUTIGiu() ?? 0;
    spelistaGiu = UserSimplePreferencesGiugno.getLisSPEGiu() ?? [];
    sumSPEGiu = UserSimplePreferencesGiugno.getDatasumSPEGiu() ?? 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: color_green,
          title: const Text("Giugno"),
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
                        totRISGiu = viNRISGiu;
                        totsRISGiu = totRISGiu.toString();
                        rislistaGiu.add(totsRISGiu);
                        List<int> rislistaGiuInt =
                            rislistaGiu.map(int.parse).toList();
                        sumRISGiu = rislistaGiuInt.sum;
                      });
                      await UserSimplePreferencesGiugno.setDataLisRISGiu(
                          rislistaGiu);
                      await UserSimplePreferencesGiugno.setDatasumRISGiu(
                          sumRISGiu);
                    }),
                testoTots: 'La spesa totale è: $sumRISGiu',
                testoFormField: TextFormField(
                  initialValue: viRISGiu,
                  onChanged: (viRISGiu) =>
                      viNRISGiu = int.tryParse(viRISGiu) ?? 0,
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
                                            '$rislistaGiu',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                rislistaGiu.removeAt(
                                                    chooseIntRisGiu - 1);
                                                await UserSimplePreferencesGiugno
                                                    .setDataLisRISGiu(
                                                        rislistaGiu);
                                                print(rislistaGiu);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                rislistaGiu.clear();
                                                await UserSimplePreferencesGiugno
                                                    .setDataLisRISGiu(
                                                        rislistaGiu);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseRisGiu,
                                            onChanged: (chooseRisGiu) {
                                              chooseIntRisGiu =
                                                  int.tryParse(chooseRisGiu) ??
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
                        totDELGiu = viNDELGiu;
                        totsDELGiu = totDELGiu.toString();
                        dellistaGiu.add(totsDELGiu);
                        List<int> dellistaGiuInt =
                            dellistaGiu.map(int.parse).toList();
                        sumDELGiu = dellistaGiuInt.sum;
                      });
                      await UserSimplePreferencesGiugno.setDataLisDELGiu(
                          dellistaGiu);
                      await UserSimplePreferencesGiugno.setDatasumDELGiu(
                          sumDELGiu);
                    }),
                testoTots: 'La spesa totale è: $sumDELGiu',
                testoFormField: TextFormField(
                  initialValue: viDELGiu,
                  onChanged: (viDELGiu) =>
                      viNDELGiu = int.tryParse(viDELGiu) ?? 0,
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
                                            '$dellistaGiu',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                dellistaGiu.removeAt(
                                                    chooseIntRisGiu - 1);
                                                await UserSimplePreferencesGiugno
                                                    .setDataLisDELGiu(
                                                        dellistaGiu);
                                                print(dellistaGiu);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                dellistaGiu.clear();
                                                await UserSimplePreferencesGiugno
                                                    .setDataLisDELGiu(
                                                        dellistaGiu);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseDelGiu,
                                            onChanged: (chooseDelGiu) {
                                              chooseIntDelGiu =
                                                  int.tryParse(chooseDelGiu) ??
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
                        totSANGiu = viNSANGiu;
                        totsSANGiu = totSANGiu.toString();
                        sanlistaGiu.add(totsSANGiu);
                        List<int> sanlistaGiuInt =
                            sanlistaGiu.map(int.parse).toList();
                        sumSANGiu = sanlistaGiuInt.sum;
                      });
                      await UserSimplePreferencesGiugno.setDataLisSANGiu(
                          sanlistaGiu);
                      await UserSimplePreferencesGiugno.setDatasumSANGiu(
                          sumSANGiu);
                    }),
                testoTots: 'La spesa totale è: $sumSANGiu',
                testoFormField: TextFormField(
                  initialValue: viSANGiu,
                  onChanged: (viSANGiu) =>
                      viNSANGiu = int.tryParse(viSANGiu) ?? 0,
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
                                            '$sanlistaGiu',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                sanlistaGiu.removeAt(
                                                    chooseIntSanGiu - 1);
                                                await UserSimplePreferencesGiugno
                                                    .setDataLisSANGiu(
                                                        sanlistaGiu);
                                                print(sanlistaGiu);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                sanlistaGiu.clear();
                                                await UserSimplePreferencesGiugno
                                                    .setDataLisSANGiu(
                                                        sanlistaGiu);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseSanGiu,
                                            onChanged: (chooseSanGiu) {
                                              chooseIntSanGiu =
                                                  int.tryParse(chooseSanGiu) ??
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
                        totISTGiu = viNISTGiu;
                        totsISTGiu = totISTGiu.toString();
                        istlistaGiu.add(totsISTGiu);
                        List<int> istlistaGiuInt =
                            istlistaGiu.map(int.parse).toList();
                        sumISTGiu = istlistaGiuInt.sum;
                      });
                      await UserSimplePreferencesGiugno.setDataLisISTGiu(
                          istlistaGiu);
                      await UserSimplePreferencesGiugno.setDatasumISTGiu(
                          sumISTGiu);
                    }),
                testoTots: 'La spesa totale è: $sumISTGiu',
                testoFormField: TextFormField(
                  initialValue: viISTGiu,
                  onChanged: (viISTGiu) =>
                      viNISTGiu = int.tryParse(viISTGiu) ?? 0,
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
                                            '$istlistaGiu',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                istlistaGiu.removeAt(
                                                    chooseIntIstGiu - 1);
                                                await UserSimplePreferencesGiugno
                                                    .setDataLisISTGiu(
                                                        istlistaGiu);
                                                print(istlistaGiu);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                istlistaGiu.clear();
                                                await UserSimplePreferencesGiugno
                                                    .setDataLisISTGiu(
                                                        istlistaGiu);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseIstGiu,
                                            onChanged: (chooseIstGiu) {
                                              chooseIntIstGiu =
                                                  int.tryParse(chooseIstGiu) ??
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
                        totAPPGiu = viNAPPGiu;
                        totsAPPGiu = totAPPGiu.toString();
                        applistaGiu.add(totsAPPGiu);
                        List<int> applistaGiuInt =
                            applistaGiu.map(int.parse).toList();
                        sumAPPGiu = applistaGiuInt.sum;
                      });
                      await UserSimplePreferencesGiugno.setDataLiAPPGiu(
                          applistaGiu);
                      await UserSimplePreferencesGiugno.setDatasumAPPGiu(
                          sumAPPGiu);
                    }),
                testoTots: 'La spesa totale è: $sumAPPGiu',
                testoFormField: TextFormField(
                  initialValue: viAPPGiu,
                  onChanged: (viAPPGiu) =>
                      viNAPPGiu = int.tryParse(viAPPGiu) ?? 0,
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
                                            '$applistaGiu',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                applistaGiu.removeAt(
                                                    chooseIntAppGiu - 1);
                                                await UserSimplePreferencesGiugno
                                                    .setDataLiAPPGiu(
                                                        applistaGiu);
                                                print(applistaGiu);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                applistaGiu.clear();
                                                await UserSimplePreferencesGiugno
                                                    .setDataLiAPPGiu(
                                                        applistaGiu);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseAppGiu,
                                            onChanged: (chooseAppGiu) {
                                              chooseIntAppGiu =
                                                  int.tryParse(chooseAppGiu) ??
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
                        totDIVGiu = viNDIVGiu;
                        totsDIVGiu = totDIVGiu.toString();
                        divlistaGiu.add(totsDIVGiu);
                        List<int> divlistaGiuInt =
                            divlistaGiu.map(int.parse).toList();
                        sumDIVGiu = divlistaGiuInt.sum;
                      });
                      await UserSimplePreferencesGiugno.setDataLisDIVGiu(
                          divlistaGiu);
                      await UserSimplePreferencesGiugno.setDatasumDIVGiu(
                          sumDIVGiu);
                    }),
                testoTots: 'La spesa totale è: $sumDIVGiu',
                testoFormField: TextFormField(
                  initialValue: viDIVGiu,
                  onChanged: (viDIVGiu) =>
                      viNDIVGiu = int.tryParse(viDIVGiu) ?? 0,
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
                                            '$divlistaGiu',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                divlistaGiu.removeAt(
                                                    chooseIntDivGiu - 1);
                                                await UserSimplePreferencesGiugno
                                                    .setDataLisDIVGiu(
                                                        divlistaGiu);
                                                print(divlistaGiu);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                divlistaGiu.clear();
                                                await UserSimplePreferencesGiugno
                                                    .setDataLisDIVGiu(
                                                        divlistaGiu);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseDivGiu,
                                            onChanged: (chooseDivGiu) {
                                              chooseIntDivGiu =
                                                  int.tryParse(chooseDivGiu) ??
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
                        totUTIGiu = viNUTIGiu;
                        totsUTIGiu = totUTIGiu.toString();
                        utilistaGiu.add(totsUTIGiu);
                        List<int> utilistaGiuInt =
                            utilistaGiu.map(int.parse).toList();
                        sumUTIGiu = utilistaGiuInt.sum;
                      });
                      await UserSimplePreferencesGiugno.setDataLisDIVGiu(
                          utilistaGiu);
                      await UserSimplePreferencesGiugno.setDatasumDIVGiu(
                          sumDIVGiu);
                    }),
                testoTots: 'La spesa totale è: $totsUTIGiu',
                testoFormField: TextFormField(
                  initialValue: viUTIGiu,
                  onChanged: (viUTIGiu) =>
                      viNUTIGiu = int.tryParse(viUTIGiu) ?? 0,
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
                                            '$utilistaGiu',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                utilistaGiu.removeAt(
                                                    chooseIntUtiGiu - 1);
                                                await UserSimplePreferencesGiugno
                                                    .setDataLisDIVGiu(
                                                        utilistaGiu);
                                                print(utilistaGiu);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                utilistaGiu.clear();
                                                await UserSimplePreferencesGiugno
                                                    .setDataLisDIVGiu(
                                                        utilistaGiu);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseUtiGiu,
                                            onChanged: (chooseUtiGiu) {
                                              chooseIntUtiGiu =
                                                  int.tryParse(chooseUtiGiu) ??
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
                        totSPEGiu = viNSPEGiu;
                        totsSPEGiu = totSPEGiu.toString();
                        spelistaGiu.add(totsSPEGiu);
                        List<int> spelistaGiuInt =
                            spelistaGiu.map(int.parse).toList();
                        sumSPEGiu = spelistaGiuInt.sum;
                      });
                      await UserSimplePreferencesGiugno.setDataLisSPEGiu(
                          spelistaGiu);
                      await UserSimplePreferencesGiugno.setDatasumSPEGiu(
                          sumSPEGiu);
                    }),
                testoTots: 'La spesa totale è: $totsSPEGiu',
                testoFormField: TextFormField(
                  initialValue: viSPEGiu,
                  onChanged: (viSPEGiu) =>
                      viNSPEGiu = int.tryParse(viSPEGiu) ?? 0,
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
                                            '$spelistaGiu',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                spelistaGiu.removeAt(
                                                    chooseIntSpeGiu - 1);
                                                await UserSimplePreferencesGiugno
                                                    .setDataLisSPEGiu(
                                                        spelistaGiu);
                                                print(spelistaGiu);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                spelistaGiu.clear();
                                                await UserSimplePreferencesGiugno
                                                    .setDataLisSPEGiu(
                                                        spelistaGiu);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseSpeGiu,
                                            onChanged: (chooseSpeGiu) {
                                              chooseIntSpeGiu =
                                                  int.tryParse(chooseSpeGiu) ??
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
