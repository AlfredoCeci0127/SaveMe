import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widget/UserPreferences/UserPreferencesMarzo.dart';
import 'package:collection/collection.dart';
import 'package:flutter_application_1/Widget/ExpenseBox.dart';

class MarzoPage extends StatefulWidget {
  const MarzoPage({Key? key}) : super(key: key);

  @override
  State<MarzoPage> createState() => _MarzoPageState();
}

class _MarzoPageState extends State<MarzoPage> {
  final _formKey = GlobalKey<FormState>();
  //RIS
  String viRISMar = '';
  int viNRISMar = 0;
  String totsRISMar = '';
  int totRISMar = 0;
  List<String> rislistaMar = [];
  List<int> rislistaMarInt = [];
  int sumRISMar = 0;
  String chooseRisMar = '';
  int chooseIntRisMar = 0;
  //DEL
  String viDELMar = '';
  int viNDELMar = 0;
  int totDELMar = 0;
  String totsDELMar = '';
  List<String> dellistaMar = [];
  List<int> dellistaMarInt = [];
  int sumDELMar = 0;
  String chooseDelMar = '';
  int chooseIntDelMar = 0;
  //SAN
  String viSANMar = '';
  int viNSANMar = 0;
  int totSANMar = 0;
  String totsSANMar = '';
  List<String> sanlistaMar = [];
  List<int> sanlistaMarInt = [];
  int sumSANMar = 0;
  String chooseSanMar = '';
  int chooseIntSanMar = 0;
  //IST
  String viISTMar = '';
  int viNISTMar = 0;
  int totISTMar = 0;
  String totsISTMar = '';
  List<String> istlistaMar = [];
  List<int> istlistaMarInt = [];
  int sumISTMar = 0;
  String chooseIstMar = '';
  int chooseIntIstMar = 0;
  //APP
  String viAPPMar = '';
  int viNAPPMar = 0;
  int totAPPMar = 0;
  String totsAPPMar = '';
  List<String> applistaMar = [];
  List<int> applistaMarInt = [];
  int sumAPPMar = 0;
  String chooseAppMar = '';
  int chooseIntAppMar = 0;
  //DIV
  String viDIVMar = '';
  int viNDIVMar = 0;
  int totDIVMar = 0;
  String totsDIVMar = '';
  List<String> divlistaMar = [];
  List<int> divlistaMarInt = [];
  int sumDIVMar = 0;
  String chooseDivMar = '';
  int chooseIntDivMar = 0;
  //UTI
  String viUTIMar = '';
  int viNUTIMar = 0;
  int totUTIMar = 0;
  String totsUTIMar = '';
  List<String> utilistaMar = [];
  List<int> utilistaMarInt = [];
  int sumUTIMar = 0;
  String chooseUtiMar = '';
  int chooseIntUtiMar = 0;
  //SPE
  String viSPEMar = '';
  int viNSPEMar = 0;
  int totSPEMar = 0;
  String totsSPEMar = '';
  List<String> spelistaMar = [];
  List<int> spelistaMarInt = [];
  int sumSPEMar = 0;
  String chooseSpeMar = '';
  int chooseIntSpeMar = 0;

  var color_green = const Color.fromARGB(255, 29, 139, 33);

  @override
  void initState() {
    super.initState();
    rislistaMar = UserSimplePreferencesMarzo.getLisRISMar() ?? [];
    sumRISMar = UserSimplePreferencesMarzo.getDatasumRISMar() ?? 0;
    dellistaMar = UserSimplePreferencesMarzo.getLisDELMar() ?? [];
    sumDELMar = UserSimplePreferencesMarzo.getDatasumDELMar() ?? 0;
    sanlistaMar = UserSimplePreferencesMarzo.getLisSANMar() ?? [];
    sumSANMar = UserSimplePreferencesMarzo.getDatasumSANMar() ?? 0;
    istlistaMar = UserSimplePreferencesMarzo.getLisISTMar() ?? [];
    sumISTMar = UserSimplePreferencesMarzo.getDatasumISTMar() ?? 0;
    applistaMar = UserSimplePreferencesMarzo.getLisAPPMar() ?? [];
    sumAPPMar = UserSimplePreferencesMarzo.getDatasumAPPMar() ?? 0;
    divlistaMar = UserSimplePreferencesMarzo.getLisDIVMar() ?? [];
    sumDIVMar = UserSimplePreferencesMarzo.getDatasumDIVMar() ?? 0;
    utilistaMar = UserSimplePreferencesMarzo.getLisUTIMar() ?? [];
    sumUTIMar = UserSimplePreferencesMarzo.getDatasumUTIMar() ?? 0;
    spelistaMar = UserSimplePreferencesMarzo.getLisSPEMar() ?? [];
    sumSPEMar = UserSimplePreferencesMarzo.getDatasumSPEMar() ?? 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: color_green,
          title: const Text("Marzo"),
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
                        totRISMar = viNRISMar;
                        totsRISMar = totRISMar.toString();
                        rislistaMar.add(totsRISMar);
                        List<int> rislistaMarInt =
                            rislistaMar.map(int.parse).toList();
                        sumRISMar = rislistaMarInt.sum;
                      });
                      await UserSimplePreferencesMarzo.setDataLisRISMar(
                          rislistaMar);
                      await UserSimplePreferencesMarzo.setDatasumRISMar(
                          sumRISMar);
                    }),
                testoTots: 'La spesa totale è: $sumRISMar',
                testoFormField: TextFormField(
                  initialValue: viRISMar,
                  onChanged: (viRISMar) =>
                      viNRISMar = int.tryParse(viRISMar) ?? 0,
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
                                            '$rislistaMar',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                rislistaMar.removeAt(
                                                    chooseIntRisMar - 1);
                                                await UserSimplePreferencesMarzo
                                                    .setDataLisRISMar(
                                                        rislistaMar);
                                                print(rislistaMar);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                rislistaMar.clear();
                                                await UserSimplePreferencesMarzo
                                                    .setDataLisRISMar(
                                                        rislistaMar);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseRisMar,
                                            onChanged: (chooseRisMar) {
                                              chooseIntRisMar =
                                                  int.tryParse(chooseRisMar) ??
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
                        totDELMar = viNDELMar;
                        totsDELMar = totDELMar.toString();
                        dellistaMar.add(totsDELMar);
                        List<int> dellistaMarInt =
                            dellistaMar.map(int.parse).toList();
                        sumDELMar = dellistaMarInt.sum;
                      });
                      await UserSimplePreferencesMarzo.setDataLisDELMar(
                          dellistaMar);
                      await UserSimplePreferencesMarzo.setDatasumDELMar(
                          sumDELMar);
                    }),
                testoTots: 'La spesa totale è: $sumDELMar',
                testoFormField: TextFormField(
                  initialValue: viDELMar,
                  onChanged: (viDELMar) =>
                      viNDELMar = int.tryParse(viDELMar) ?? 0,
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
                                            '$dellistaMar',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                dellistaMar.removeAt(
                                                    chooseIntRisMar - 1);
                                                await UserSimplePreferencesMarzo
                                                    .setDataLisDELMar(
                                                        dellistaMar);
                                                print(dellistaMar);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                dellistaMar.clear();
                                                await UserSimplePreferencesMarzo
                                                    .setDataLisDELMar(
                                                        dellistaMar);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseDelMar,
                                            onChanged: (chooseDelMar) {
                                              chooseIntDelMar =
                                                  int.tryParse(chooseDelMar) ??
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
                        totSANMar = viNSANMar;
                        totsSANMar = totSANMar.toString();
                        sanlistaMar.add(totsSANMar);
                        List<int> sanlistaMarInt =
                            sanlistaMar.map(int.parse).toList();
                        sumSANMar = sanlistaMarInt.sum;
                      });
                      await UserSimplePreferencesMarzo.setDataLisSANMar(
                          sanlistaMar);
                      await UserSimplePreferencesMarzo.setDatasumSANMar(
                          sumSANMar);
                    }),
                testoTots: 'La spesa totale è: $sumSANMar',
                testoFormField: TextFormField(
                  initialValue: viSANMar,
                  onChanged: (viSANMar) =>
                      viNSANMar = int.tryParse(viSANMar) ?? 0,
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
                                            '$sanlistaMar',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                sanlistaMar.removeAt(
                                                    chooseIntSanMar - 1);
                                                await UserSimplePreferencesMarzo
                                                    .setDataLisSANMar(
                                                        sanlistaMar);
                                                print(sanlistaMar);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                sanlistaMar.clear();
                                                await UserSimplePreferencesMarzo
                                                    .setDataLisSANMar(
                                                        sanlistaMar);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseSanMar,
                                            onChanged: (chooseSanMar) {
                                              chooseIntSanMar =
                                                  int.tryParse(chooseSanMar) ??
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
                        totISTMar = viNISTMar;
                        totsISTMar = totISTMar.toString();
                        istlistaMar.add(totsISTMar);
                        List<int> istlistaMarInt =
                            istlistaMar.map(int.parse).toList();
                        sumISTMar = istlistaMarInt.sum;
                      });
                      await UserSimplePreferencesMarzo.setDataLisISTMar(
                          istlistaMar);
                      await UserSimplePreferencesMarzo.setDatasumISTMar(
                          sumISTMar);
                    }),
                testoTots: 'La spesa totale è: $sumISTMar',
                testoFormField: TextFormField(
                  initialValue: viISTMar,
                  onChanged: (viISTMar) =>
                      viNISTMar = int.tryParse(viISTMar) ?? 0,
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
                                            '$istlistaMar',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                istlistaMar.removeAt(
                                                    chooseIntIstMar - 1);
                                                await UserSimplePreferencesMarzo
                                                    .setDataLisISTMar(
                                                        istlistaMar);
                                                print(istlistaMar);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                istlistaMar.clear();
                                                await UserSimplePreferencesMarzo
                                                    .setDataLisISTMar(
                                                        istlistaMar);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseIstMar,
                                            onChanged: (chooseIstMar) {
                                              chooseIntIstMar =
                                                  int.tryParse(chooseIstMar) ??
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
                        totAPPMar = viNAPPMar;
                        totsAPPMar = totAPPMar.toString();
                        applistaMar.add(totsAPPMar);
                        List<int> applistaMarInt =
                            applistaMar.map(int.parse).toList();
                        sumAPPMar = applistaMarInt.sum;
                      });
                      await UserSimplePreferencesMarzo.setDataLiAPPMar(
                          applistaMar);
                      await UserSimplePreferencesMarzo.setDatasumAPPMar(
                          sumAPPMar);
                    }),
                testoTots: 'La spesa totale è: $sumAPPMar',
                testoFormField: TextFormField(
                  initialValue: viAPPMar,
                  onChanged: (viAPPMar) =>
                      viNAPPMar = int.tryParse(viAPPMar) ?? 0,
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
                                            '$applistaMar',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                applistaMar.removeAt(
                                                    chooseIntAppMar - 1);
                                                await UserSimplePreferencesMarzo
                                                    .setDataLiAPPMar(
                                                        applistaMar);
                                                print(applistaMar);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                applistaMar.clear();
                                                await UserSimplePreferencesMarzo
                                                    .setDataLiAPPMar(
                                                        applistaMar);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseAppMar,
                                            onChanged: (chooseAppMar) {
                                              chooseIntAppMar =
                                                  int.tryParse(chooseAppMar) ??
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
                        totDIVMar = viNDIVMar;
                        totsDIVMar = totDIVMar.toString();
                        divlistaMar.add(totsDIVMar);
                        List<int> divlistaMarInt =
                            divlistaMar.map(int.parse).toList();
                        sumDIVMar = divlistaMarInt.sum;
                      });
                      await UserSimplePreferencesMarzo.setDataLisDIVMar(
                          divlistaMar);
                      await UserSimplePreferencesMarzo.setDatasumDIVMar(
                          sumDIVMar);
                    }),
                testoTots: 'La spesa totale è: $sumDIVMar',
                testoFormField: TextFormField(
                  initialValue: viDIVMar,
                  onChanged: (viDIVMar) =>
                      viNDIVMar = int.tryParse(viDIVMar) ?? 0,
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
                                            '$divlistaMar',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                divlistaMar.removeAt(
                                                    chooseIntDivMar - 1);
                                                await UserSimplePreferencesMarzo
                                                    .setDataLisDIVMar(
                                                        divlistaMar);
                                                print(divlistaMar);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                divlistaMar.clear();
                                                await UserSimplePreferencesMarzo
                                                    .setDataLisDIVMar(
                                                        divlistaMar);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseDivMar,
                                            onChanged: (chooseDivMar) {
                                              chooseIntDivMar =
                                                  int.tryParse(chooseDivMar) ??
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
                        totUTIMar = viNUTIMar;
                        totsUTIMar = totUTIMar.toString();
                        utilistaMar.add(totsUTIMar);
                        List<int> utilistaMarInt =
                            utilistaMar.map(int.parse).toList();
                        sumUTIMar = utilistaMarInt.sum;
                      });
                      await UserSimplePreferencesMarzo.setDataLisDIVMar(
                          utilistaMar);
                      await UserSimplePreferencesMarzo.setDatasumDIVMar(
                          sumDIVMar);
                    }),
                testoTots: 'La spesa totale è: $totsUTIMar',
                testoFormField: TextFormField(
                  initialValue: viUTIMar,
                  onChanged: (viUTIMar) =>
                      viNUTIMar = int.tryParse(viUTIMar) ?? 0,
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
                                            '$utilistaMar',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                utilistaMar.removeAt(
                                                    chooseIntUtiMar - 1);
                                                await UserSimplePreferencesMarzo
                                                    .setDataLisDIVMar(
                                                        utilistaMar);
                                                print(utilistaMar);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                utilistaMar.clear();
                                                await UserSimplePreferencesMarzo
                                                    .setDataLisDIVMar(
                                                        utilistaMar);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseUtiMar,
                                            onChanged: (chooseUtiMar) {
                                              chooseIntUtiMar =
                                                  int.tryParse(chooseUtiMar) ??
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
                        totSPEMar = viNSPEMar;
                        totsSPEMar = totSPEMar.toString();
                        spelistaMar.add(totsSPEMar);
                        List<int> spelistaMarInt =
                            spelistaMar.map(int.parse).toList();
                        sumSPEMar = spelistaMarInt.sum;
                      });
                      await UserSimplePreferencesMarzo.setDataLisSPEMar(
                          spelistaMar);
                      await UserSimplePreferencesMarzo.setDatasumSPEMar(
                          sumSPEMar);
                    }),
                testoTots: 'La spesa totale è: $totsSPEMar',
                testoFormField: TextFormField(
                  initialValue: viSPEMar,
                  onChanged: (viSPEMar) =>
                      viNSPEMar = int.tryParse(viSPEMar) ?? 0,
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
                                            '$spelistaMar',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                spelistaMar.removeAt(
                                                    chooseIntSpeMar - 1);
                                                await UserSimplePreferencesMarzo
                                                    .setDataLisSPEMar(
                                                        spelistaMar);
                                                print(spelistaMar);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                spelistaMar.clear();
                                                await UserSimplePreferencesMarzo
                                                    .setDataLisSPEMar(
                                                        spelistaMar);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseSpeMar,
                                            onChanged: (chooseSpeMar) {
                                              chooseIntSpeMar =
                                                  int.tryParse(chooseSpeMar) ??
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
