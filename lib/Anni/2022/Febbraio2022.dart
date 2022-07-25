import 'package:flutter/material.dart';
import 'package:collection/collection.dart';
import 'package:flutter_application_1/Widget/UserPreferences/UserPreferencesFebbraio.dart';
import 'package:flutter_application_1/Widget/ExpenseBox.dart';

class FebbraioPage extends StatefulWidget {
  const FebbraioPage({Key? key}) : super(key: key);

  @override
  State<FebbraioPage> createState() => _FebbraioPageState();
}

class _FebbraioPageState extends State<FebbraioPage> {
  final _formKey = GlobalKey<FormState>();
  //RIS
  String viRISFeb = '';
  int viNRISFeb = 0;
  String totsRISFeb = '';
  int totRISFeb = 0;
  List<String> rislistaFeb = [];
  List<int> rislistaFebInt = [];
  int sumRISFeb = 0;
  String chooseRisFeb = '';
  int chooseIntRisFeb = 0;
  //DEL
  String viDELFeb = '';
  int viNDELFeb = 0;
  int totDELFeb = 0;
  String totsDELFeb = '';
  List<String> dellistaFeb = [];
  List<int> dellistaFebInt = [];
  int sumDELFeb = 0;
  String chooseDelFeb = '';
  int chooseIntDelFeb = 0;
  //SAN
  String viSANFeb = '';
  int viNSANFeb = 0;
  int totSANFeb = 0;
  String totsSANFeb = '';
  List<String> sanlistaFeb = [];
  List<int> sanlistaFebInt = [];
  int sumSANFeb = 0;
  String chooseSanFeb = '';
  int chooseIntSanFeb = 0;
  //IST
  String viISTFeb = '';
  int viNISTFeb = 0;
  int totISTFeb = 0;
  String totsISTFeb = '';
  List<String> istlistaFeb = [];
  List<int> istlistaFebInt = [];
  int sumISTFeb = 0;
  String chooseIstFeb = '';
  int chooseIntIstFeb = 0;
  //APP
  String viAPPFeb = '';
  int viNAPPFeb = 0;
  int totAPPFeb = 0;
  String totsAPPFeb = '';
  List<String> applistaFeb = [];
  List<int> applistaFebInt = [];
  int sumAPPFeb = 0;
  String chooseAppFeb = '';
  int chooseIntAppFeb = 0;
  //DIV
  String viDIVFeb = '';
  int viNDIVFeb = 0;
  int totDIVFeb = 0;
  String totsDIVFeb = '';
  List<String> divlistaFeb = [];
  List<int> divlistaFebInt = [];
  int sumDIVFeb = 0;
  String chooseDivFeb = '';
  int chooseIntDivFeb = 0;
  //UTI
  String viUTIFeb = '';
  int viNUTIFeb = 0;
  int totUTIFeb = 0;
  String totsUTIFeb = '';
  List<String> utilistaFeb = [];
  List<int> utilistaFebInt = [];
  int sumUTIFeb = 0;
  String chooseUtiFeb = '';
  int chooseIntUtiFeb = 0;
  //SPE
  String viSPEFeb = '';
  int viNSPEFeb = 0;
  int totSPEFeb = 0;
  String totsSPEFeb = '';
  List<String> spelistaFeb = [];
  List<int> spelistaFebInt = [];
  int sumSPEFeb = 0;
  String chooseSpeFeb = '';
  int chooseIntSpeFeb = 0;

  var color_green = const Color.fromARGB(255, 29, 139, 33);

  @override
  void initState() {
    super.initState();
    sumRISFeb = UserSimplePreferencesFebbraio.getDatasumRISFeb() ?? 0;
    rislistaFeb = UserSimplePreferencesFebbraio.getLisRISFeb() ?? [];
    sumDELFeb = UserSimplePreferencesFebbraio.getDatasumDELFeb() ?? 0;
    dellistaFeb = UserSimplePreferencesFebbraio.getLisRISFeb() ?? [];
    sumSANFeb = UserSimplePreferencesFebbraio.getDatasumSANFeb() ?? 0;
    sanlistaFeb = UserSimplePreferencesFebbraio.getLisRISFeb() ?? [];
    sumISTFeb = UserSimplePreferencesFebbraio.getDatasumISTFeb() ?? 0;
    istlistaFeb = UserSimplePreferencesFebbraio.getLisRISFeb() ?? [];
    sumAPPFeb = UserSimplePreferencesFebbraio.getDatasumAPPFeb() ?? 0;
    applistaFeb = UserSimplePreferencesFebbraio.getLisRISFeb() ?? [];
    sumDIVFeb = UserSimplePreferencesFebbraio.getDatasumDIVFeb() ?? 0;
    divlistaFeb = UserSimplePreferencesFebbraio.getLisRISFeb() ?? [];
    sumUTIFeb = UserSimplePreferencesFebbraio.getDatasumUTIFeb() ?? 0;
    utilistaFeb = UserSimplePreferencesFebbraio.getLisRISFeb() ?? [];
    sumSPEFeb = UserSimplePreferencesFebbraio.getDatasumSPEFeb() ?? 0;
    spelistaFeb = UserSimplePreferencesFebbraio.getLisRISFeb() ?? [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: color_green,
          title: const Text("Febbraio"),
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
                        totRISFeb = viNRISFeb;
                        totsRISFeb = totRISFeb.toString();
                        rislistaFeb.add(totsRISFeb);
                        List<int> rislistaFebInt =
                            rislistaFeb.map(int.parse).toList();
                        sumRISFeb = rislistaFebInt.sum;
                      });
                      await UserSimplePreferencesFebbraio.setDataLisRISFeb(
                          rislistaFeb);
                      await UserSimplePreferencesFebbraio.setDatasumRISFeb(
                          sumRISFeb);
                    }),
                testoTots: 'La spesa totale è: $sumRISFeb',
                testoFormField: TextFormField(
                  initialValue: viRISFeb,
                  onChanged: (viRISFeb) =>
                      viNRISFeb = int.tryParse(viRISFeb) ?? 0,
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
                                            '$rislistaFeb',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                rislistaFeb.removeAt(
                                                    chooseIntRisFeb - 1);
                                                await UserSimplePreferencesFebbraio
                                                    .setDataLisRISFeb(
                                                        rislistaFeb);
                                                print(rislistaFeb);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                rislistaFeb.clear();
                                                await UserSimplePreferencesFebbraio
                                                    .setDataLisRISFeb(
                                                        rislistaFeb);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseRisFeb,
                                            onChanged: (chooseRisFeb) {
                                              chooseIntRisFeb =
                                                  int.tryParse(chooseRisFeb) ??
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
                        totDELFeb = viNDELFeb;
                        totsDELFeb = totDELFeb.toString();
                        dellistaFeb.add(totsDELFeb);
                        List<int> dellistaFebInt =
                            dellistaFeb.map(int.parse).toList();
                        sumDELFeb = dellistaFebInt.sum;
                      });
                      await UserSimplePreferencesFebbraio.setDataLisDELFeb(
                          dellistaFeb);
                      await UserSimplePreferencesFebbraio.setDatasumDELFeb(
                          sumDELFeb);
                    }),
                testoTots: 'La spesa totale è: $sumDELFeb',
                testoFormField: TextFormField(
                  initialValue: viDELFeb,
                  onChanged: (viDELFeb) =>
                      viNDELFeb = int.tryParse(viDELFeb) ?? 0,
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
                                            '$dellistaFeb',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                dellistaFeb.removeAt(
                                                    chooseIntRisFeb - 1);
                                                await UserSimplePreferencesFebbraio
                                                    .setDataLisDELFeb(
                                                        dellistaFeb);
                                                print(dellistaFeb);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                dellistaFeb.clear();
                                                await UserSimplePreferencesFebbraio
                                                    .setDataLisDELFeb(
                                                        dellistaFeb);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseDelFeb,
                                            onChanged: (chooseDelFeb) {
                                              chooseIntDelFeb =
                                                  int.tryParse(chooseDelFeb) ??
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
                        totSANFeb = viNSANFeb;
                        totsSANFeb = totSANFeb.toString();
                        sanlistaFeb.add(totsSANFeb);
                        List<int> sanlistaFebInt =
                            sanlistaFeb.map(int.parse).toList();
                        sumSANFeb = sanlistaFebInt.sum;
                      });
                      await UserSimplePreferencesFebbraio.setDataLisSANFeb(
                          sanlistaFeb);
                      await UserSimplePreferencesFebbraio.setDatasumSANFeb(
                          sumSANFeb);
                    }),
                testoTots: 'La spesa totale è: $sumSANFeb',
                testoFormField: TextFormField(
                  initialValue: viSANFeb,
                  onChanged: (viSANFeb) =>
                      viNSANFeb = int.tryParse(viSANFeb) ?? 0,
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
                                            '$sanlistaFeb',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                sanlistaFeb.removeAt(
                                                    chooseIntSanFeb - 1);
                                                await UserSimplePreferencesFebbraio
                                                    .setDataLisSANFeb(
                                                        sanlistaFeb);
                                                print(sanlistaFeb);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                sanlistaFeb.clear();
                                                await UserSimplePreferencesFebbraio
                                                    .setDataLisSANFeb(
                                                        sanlistaFeb);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseSanFeb,
                                            onChanged: (chooseSanFeb) {
                                              chooseIntSanFeb =
                                                  int.tryParse(chooseSanFeb) ??
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
                        totISTFeb = viNISTFeb;
                        totsISTFeb = totISTFeb.toString();
                        istlistaFeb.add(totsISTFeb);
                        List<int> istlistaFebInt =
                            istlistaFeb.map(int.parse).toList();
                        sumISTFeb = istlistaFebInt.sum;
                      });
                      await UserSimplePreferencesFebbraio.setDataLisISTFeb(
                          istlistaFeb);
                      await UserSimplePreferencesFebbraio.setDatasumISTFeb(
                          sumISTFeb);
                    }),
                testoTots: 'La spesa totale è: $sumISTFeb',
                testoFormField: TextFormField(
                  initialValue: viISTFeb,
                  onChanged: (viISTFeb) =>
                      viNISTFeb = int.tryParse(viISTFeb) ?? 0,
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
                                            '$istlistaFeb',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                istlistaFeb.removeAt(
                                                    chooseIntIstFeb - 1);
                                                await UserSimplePreferencesFebbraio
                                                    .setDataLisISTFeb(
                                                        istlistaFeb);
                                                print(istlistaFeb);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                istlistaFeb.clear();
                                                await UserSimplePreferencesFebbraio
                                                    .setDataLisISTFeb(
                                                        istlistaFeb);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseIstFeb,
                                            onChanged: (chooseIstFeb) {
                                              chooseIntIstFeb =
                                                  int.tryParse(chooseIstFeb) ??
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
                        totAPPFeb = viNAPPFeb;
                        totsAPPFeb = totAPPFeb.toString();
                        applistaFeb.add(totsAPPFeb);
                        List<int> applistaFebInt =
                            applistaFeb.map(int.parse).toList();
                        sumAPPFeb = applistaFebInt.sum;
                      });
                      await UserSimplePreferencesFebbraio.setDataLiAPPFeb(
                          applistaFeb);
                      await UserSimplePreferencesFebbraio.setDatasumAPPFeb(
                          sumAPPFeb);
                    }),
                testoTots: 'La spesa totale è: $sumAPPFeb',
                testoFormField: TextFormField(
                  initialValue: viAPPFeb,
                  onChanged: (viAPPFeb) =>
                      viNAPPFeb = int.tryParse(viAPPFeb) ?? 0,
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
                                            '$applistaFeb',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                applistaFeb.removeAt(
                                                    chooseIntAppFeb - 1);
                                                await UserSimplePreferencesFebbraio
                                                    .setDataLiAPPFeb(
                                                        applistaFeb);
                                                print(applistaFeb);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                applistaFeb.clear();
                                                await UserSimplePreferencesFebbraio
                                                    .setDataLiAPPFeb(
                                                        applistaFeb);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseAppFeb,
                                            onChanged: (chooseAppFeb) {
                                              chooseIntAppFeb =
                                                  int.tryParse(chooseAppFeb) ??
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
                        totDIVFeb = viNDIVFeb;
                        totsDIVFeb = totDIVFeb.toString();
                        divlistaFeb.add(totsDIVFeb);
                        List<int> divlistaFebInt =
                            divlistaFeb.map(int.parse).toList();
                        sumDIVFeb = divlistaFebInt.sum;
                      });
                      await UserSimplePreferencesFebbraio.setDataLisDIVFeb(
                          divlistaFeb);
                      await UserSimplePreferencesFebbraio.setDatasumDIVFeb(
                          sumDIVFeb);
                    }),
                testoTots: 'La spesa totale è: $sumDIVFeb',
                testoFormField: TextFormField(
                  initialValue: viDIVFeb,
                  onChanged: (viDIVFeb) =>
                      viNDIVFeb = int.tryParse(viDIVFeb) ?? 0,
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
                                            '$divlistaFeb',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                divlistaFeb.removeAt(
                                                    chooseIntDivFeb - 1);
                                                await UserSimplePreferencesFebbraio
                                                    .setDataLisDIVFeb(
                                                        divlistaFeb);
                                                print(divlistaFeb);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                divlistaFeb.clear();
                                                await UserSimplePreferencesFebbraio
                                                    .setDataLisDIVFeb(
                                                        divlistaFeb);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseDivFeb,
                                            onChanged: (chooseDivFeb) {
                                              chooseIntDivFeb =
                                                  int.tryParse(chooseDivFeb) ??
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
                        totUTIFeb = viNUTIFeb;
                        totsUTIFeb = totUTIFeb.toString();
                        utilistaFeb.add(totsUTIFeb);
                        List<int> utilistaFebInt =
                            utilistaFeb.map(int.parse).toList();
                        sumUTIFeb = utilistaFebInt.sum;
                      });
                      await UserSimplePreferencesFebbraio.setDataLisDIVFeb(
                          utilistaFeb);
                      await UserSimplePreferencesFebbraio.setDatasumDIVFeb(
                          sumDIVFeb);
                    }),
                testoTots: 'La spesa totale è: $totsUTIFeb',
                testoFormField: TextFormField(
                  initialValue: viUTIFeb,
                  onChanged: (viUTIFeb) =>
                      viNUTIFeb = int.tryParse(viUTIFeb) ?? 0,
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
                                            '$utilistaFeb',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                utilistaFeb.removeAt(
                                                    chooseIntUtiFeb - 1);
                                                await UserSimplePreferencesFebbraio
                                                    .setDataLisDIVFeb(
                                                        utilistaFeb);
                                                print(utilistaFeb);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                utilistaFeb.clear();
                                                await UserSimplePreferencesFebbraio
                                                    .setDataLisDIVFeb(
                                                        utilistaFeb);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseUtiFeb,
                                            onChanged: (chooseUtiFeb) {
                                              chooseIntUtiFeb =
                                                  int.tryParse(chooseUtiFeb) ??
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
                        totSPEFeb = viNSPEFeb;
                        totsSPEFeb = totSPEFeb.toString();
                        spelistaFeb.add(totsSPEFeb);
                        List<int> spelistaFebInt =
                            spelistaFeb.map(int.parse).toList();
                        sumSPEFeb = spelistaFebInt.sum;
                      });
                      await UserSimplePreferencesFebbraio.setDataLisSPEFeb(
                          spelistaFeb);
                      await UserSimplePreferencesFebbraio.setDatasumSPEFeb(
                          sumSPEFeb);
                    }),
                testoTots: 'La spesa totale è: $totsSPEFeb',
                testoFormField: TextFormField(
                  initialValue: viSPEFeb,
                  onChanged: (viSPEFeb) =>
                      viNSPEFeb = int.tryParse(viSPEFeb) ?? 0,
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
                                            '$spelistaFeb',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                spelistaFeb.removeAt(
                                                    chooseIntSpeFeb - 1);
                                                await UserSimplePreferencesFebbraio
                                                    .setDataLisSPEFeb(
                                                        spelistaFeb);
                                                print(spelistaFeb);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                spelistaFeb.clear();
                                                await UserSimplePreferencesFebbraio
                                                    .setDataLisSPEFeb(
                                                        spelistaFeb);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseSpeFeb,
                                            onChanged: (chooseSpeFeb) {
                                              chooseIntSpeFeb =
                                                  int.tryParse(chooseSpeFeb) ??
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
