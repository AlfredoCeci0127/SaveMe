import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widget/ExpenseBox.dart';
import 'package:flutter_application_1/Widget/UserPreferences/UserPreferencesMaggio.dart';
import 'package:collection/collection.dart';

class MaggioPage extends StatefulWidget {
  const MaggioPage({Key? key}) : super(key: key);

  @override
  State<MaggioPage> createState() => _MaggioPageState();
}

class _MaggioPageState extends State<MaggioPage> {
  final _formKey = GlobalKey<FormState>();
  //RIS
  String viRISMag = '';
  int viNRISMag = 0;
  String totsRISMag = '';
  int totRISMag = 0;
  List<String> rislistaMag = [];
  List<int> rislistaMagInt = [];
  int sumRISMag = 0;
  String chooseRisMag = '';
  int chooseIntRisMag = 0;
  //DEL
  String viDELMag = '';
  int viNDELMag = 0;
  int totDELMag = 0;
  String totsDELMag = '';
  List<String> dellistaMag = [];
  List<int> dellistaMagInt = [];
  int sumDELMag = 0;
  String chooseDelMag = '';
  int chooseIntDelMag = 0;
  //SAN
  String viSANMag = '';
  int viNSANMag = 0;
  int totSANMag = 0;
  String totsSANMag = '';
  List<String> sanlistaMag = [];
  List<int> sanlistaMagInt = [];
  int sumSANMag = 0;
  String chooseSanMag = '';
  int chooseIntSanMag = 0;
  //IST
  String viISTMag = '';
  int viNISTMag = 0;
  int totISTMag = 0;
  String totsISTMag = '';
  List<String> istlistaMag = [];
  List<int> istlistaMagInt = [];
  int sumISTMag = 0;
  String chooseIstMag = '';
  int chooseIntIstMag = 0;
  //APP
  String viAPPMag = '';
  int viNAPPMag = 0;
  int totAPPMag = 0;
  String totsAPPMag = '';
  List<String> applistaMag = [];
  List<int> applistaMagInt = [];
  int sumAPPMag = 0;
  String chooseAppMag = '';
  int chooseIntAppMag = 0;
  //DIV
  String viDIVMag = '';
  int viNDIVMag = 0;
  int totDIVMag = 0;
  String totsDIVMag = '';
  List<String> divlistaMag = [];
  List<int> divlistaMagInt = [];
  int sumDIVMag = 0;
  String chooseDivMag = '';
  int chooseIntDivMag = 0;
  //UTI
  String viUTIMag = '';
  int viNUTIMag = 0;
  int totUTIMag = 0;
  String totsUTIMag = '';
  List<String> utilistaMag = [];
  List<int> utilistaMagInt = [];
  int sumUTIMag = 0;
  String chooseUtiMag = '';
  int chooseIntUtiMag = 0;
  //SPE
  String viSPEMag = '';
  int viNSPEMag = 0;
  int totSPEMag = 0;
  String totsSPEMag = '';
  List<String> spelistaMag = [];
  List<int> spelistaMagInt = [];
  int sumSPEMag = 0;
  String chooseSpeMag = '';
  int chooseIntSpeMag = 0;

  var color_green = const Color.fromARGB(255, 29, 139, 33);

  @override
  void initState() {
    super.initState();
    rislistaMag = UserSimplePreferencesMaggio.getLisRISMag() ?? [];
    sumRISMag = UserSimplePreferencesMaggio.getDatasumRISMag() ?? 0;
    dellistaMag = UserSimplePreferencesMaggio.getLisDELMag() ?? [];
    sumDELMag = UserSimplePreferencesMaggio.getDatasumDELMag() ?? 0;
    sanlistaMag = UserSimplePreferencesMaggio.getLisSANMag() ?? [];
    sumSANMag = UserSimplePreferencesMaggio.getDatasumSANMag() ?? 0;
    istlistaMag = UserSimplePreferencesMaggio.getLisISTMag() ?? [];
    sumISTMag = UserSimplePreferencesMaggio.getDatasumISTMag() ?? 0;
    applistaMag = UserSimplePreferencesMaggio.getLisAPPMag() ?? [];
    sumAPPMag = UserSimplePreferencesMaggio.getDatasumAPPMag() ?? 0;
    divlistaMag = UserSimplePreferencesMaggio.getLisDIVMag() ?? [];
    sumDIVMag = UserSimplePreferencesMaggio.getDatasumDIVMag() ?? 0;
    utilistaMag = UserSimplePreferencesMaggio.getLisUTIMag() ?? [];
    sumUTIMag = UserSimplePreferencesMaggio.getDatasumUTIMag() ?? 0;
    spelistaMag = UserSimplePreferencesMaggio.getLisSPEMag() ?? [];
    sumSPEMag = UserSimplePreferencesMaggio.getDatasumSPEMag() ?? 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: color_green,
          title: const Text("Maggio"),
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
                        totRISMag = viNRISMag;
                        totsRISMag = totRISMag.toString();
                        rislistaMag.add(totsRISMag);
                        List<int> rislistaMagInt =
                            rislistaMag.map(int.parse).toList();
                        sumRISMag = rislistaMagInt.sum;
                      });
                      await UserSimplePreferencesMaggio.setDataLisRISMag(
                          rislistaMag);
                      await UserSimplePreferencesMaggio.setDatasumRISMag(
                          sumRISMag);
                    }),
                testoTots: 'La spesa totale è: $sumRISMag',
                testoFormField: TextFormField(
                  initialValue: viRISMag,
                  onChanged: (viRISMag) =>
                      viNRISMag = int.tryParse(viRISMag) ?? 0,
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
                                            '$rislistaMag',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                rislistaMag.removeAt(
                                                    chooseIntRisMag - 1);
                                                await UserSimplePreferencesMaggio
                                                    .setDataLisRISMag(
                                                        rislistaMag);
                                                print(rislistaMag);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                rislistaMag.clear();
                                                await UserSimplePreferencesMaggio
                                                    .setDataLisRISMag(
                                                        rislistaMag);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseRisMag,
                                            onChanged: (chooseRisMag) {
                                              chooseIntRisMag =
                                                  int.tryParse(chooseRisMag) ??
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
                        totDELMag = viNDELMag;
                        totsDELMag = totDELMag.toString();
                        dellistaMag.add(totsDELMag);
                        List<int> dellistaMagInt =
                            dellistaMag.map(int.parse).toList();
                        sumDELMag = dellistaMagInt.sum;
                      });
                      await UserSimplePreferencesMaggio.setDataLisDELMag(
                          dellistaMag);
                      await UserSimplePreferencesMaggio.setDatasumDELMag(
                          sumDELMag);
                    }),
                testoTots: 'La spesa totale è: $sumDELMag',
                testoFormField: TextFormField(
                  initialValue: viDELMag,
                  onChanged: (viDELMag) =>
                      viNDELMag = int.tryParse(viDELMag) ?? 0,
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
                                            '$dellistaMag',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                dellistaMag.removeAt(
                                                    chooseIntRisMag - 1);
                                                await UserSimplePreferencesMaggio
                                                    .setDataLisDELMag(
                                                        dellistaMag);
                                                print(dellistaMag);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                dellistaMag.clear();
                                                await UserSimplePreferencesMaggio
                                                    .setDataLisDELMag(
                                                        dellistaMag);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseDelMag,
                                            onChanged: (chooseDelMag) {
                                              chooseIntDelMag =
                                                  int.tryParse(chooseDelMag) ??
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
                        totSANMag = viNSANMag;
                        totsSANMag = totSANMag.toString();
                        sanlistaMag.add(totsSANMag);
                        List<int> sanlistaMagInt =
                            sanlistaMag.map(int.parse).toList();
                        sumSANMag = sanlistaMagInt.sum;
                      });
                      await UserSimplePreferencesMaggio.setDataLisSANMag(
                          sanlistaMag);
                      await UserSimplePreferencesMaggio.setDatasumSANMag(
                          sumSANMag);
                    }),
                testoTots: 'La spesa totale è: $sumSANMag',
                testoFormField: TextFormField(
                  initialValue: viSANMag,
                  onChanged: (viSANMag) =>
                      viNSANMag = int.tryParse(viSANMag) ?? 0,
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
                                            '$sanlistaMag',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                sanlistaMag.removeAt(
                                                    chooseIntSanMag - 1);
                                                await UserSimplePreferencesMaggio
                                                    .setDataLisSANMag(
                                                        sanlistaMag);
                                                print(sanlistaMag);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                sanlistaMag.clear();
                                                await UserSimplePreferencesMaggio
                                                    .setDataLisSANMag(
                                                        sanlistaMag);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseSanMag,
                                            onChanged: (chooseSanMag) {
                                              chooseIntSanMag =
                                                  int.tryParse(chooseSanMag) ??
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
                        totISTMag = viNISTMag;
                        totsISTMag = totISTMag.toString();
                        istlistaMag.add(totsISTMag);
                        List<int> istlistaMagInt =
                            istlistaMag.map(int.parse).toList();
                        sumISTMag = istlistaMagInt.sum;
                      });
                      await UserSimplePreferencesMaggio.setDataLisISTMag(
                          istlistaMag);
                      await UserSimplePreferencesMaggio.setDatasumISTMag(
                          sumISTMag);
                    }),
                testoTots: 'La spesa totale è: $sumISTMag',
                testoFormField: TextFormField(
                  initialValue: viISTMag,
                  onChanged: (viISTMag) =>
                      viNISTMag = int.tryParse(viISTMag) ?? 0,
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
                                            '$istlistaMag',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                istlistaMag.removeAt(
                                                    chooseIntIstMag - 1);
                                                await UserSimplePreferencesMaggio
                                                    .setDataLisISTMag(
                                                        istlistaMag);
                                                print(istlistaMag);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                istlistaMag.clear();
                                                await UserSimplePreferencesMaggio
                                                    .setDataLisISTMag(
                                                        istlistaMag);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseIstMag,
                                            onChanged: (chooseIstMag) {
                                              chooseIntIstMag =
                                                  int.tryParse(chooseIstMag) ??
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
                        totAPPMag = viNAPPMag;
                        totsAPPMag = totAPPMag.toString();
                        applistaMag.add(totsAPPMag);
                        List<int> applistaMagInt =
                            applistaMag.map(int.parse).toList();
                        sumAPPMag = applistaMagInt.sum;
                      });
                      await UserSimplePreferencesMaggio.setDataLiAPPMag(
                          applistaMag);
                      await UserSimplePreferencesMaggio.setDatasumAPPMag(
                          sumAPPMag);
                    }),
                testoTots: 'La spesa totale è: $sumAPPMag',
                testoFormField: TextFormField(
                  initialValue: viAPPMag,
                  onChanged: (viAPPMag) =>
                      viNAPPMag = int.tryParse(viAPPMag) ?? 0,
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
                                            '$applistaMag',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                applistaMag.removeAt(
                                                    chooseIntAppMag - 1);
                                                await UserSimplePreferencesMaggio
                                                    .setDataLiAPPMag(
                                                        applistaMag);
                                                print(applistaMag);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                applistaMag.clear();
                                                await UserSimplePreferencesMaggio
                                                    .setDataLiAPPMag(
                                                        applistaMag);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseAppMag,
                                            onChanged: (chooseAppMag) {
                                              chooseIntAppMag =
                                                  int.tryParse(chooseAppMag) ??
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
                        totDIVMag = viNDIVMag;
                        totsDIVMag = totDIVMag.toString();
                        divlistaMag.add(totsDIVMag);
                        List<int> divlistaMagInt =
                            divlistaMag.map(int.parse).toList();
                        sumDIVMag = divlistaMagInt.sum;
                      });
                      await UserSimplePreferencesMaggio.setDataLisDIVMag(
                          divlistaMag);
                      await UserSimplePreferencesMaggio.setDatasumDIVMag(
                          sumDIVMag);
                    }),
                testoTots: 'La spesa totale è: $sumDIVMag',
                testoFormField: TextFormField(
                  initialValue: viDIVMag,
                  onChanged: (viDIVMag) =>
                      viNDIVMag = int.tryParse(viDIVMag) ?? 0,
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
                                            '$divlistaMag',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                divlistaMag.removeAt(
                                                    chooseIntDivMag - 1);
                                                await UserSimplePreferencesMaggio
                                                    .setDataLisDIVMag(
                                                        divlistaMag);
                                                print(divlistaMag);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                divlistaMag.clear();
                                                await UserSimplePreferencesMaggio
                                                    .setDataLisDIVMag(
                                                        divlistaMag);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseDivMag,
                                            onChanged: (chooseDivMag) {
                                              chooseIntDivMag =
                                                  int.tryParse(chooseDivMag) ??
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
                        totUTIMag = viNUTIMag;
                        totsUTIMag = totUTIMag.toString();
                        utilistaMag.add(totsUTIMag);
                        List<int> utilistaMagInt =
                            utilistaMag.map(int.parse).toList();
                        sumUTIMag = utilistaMagInt.sum;
                      });
                      await UserSimplePreferencesMaggio.setDataLisDIVMag(
                          utilistaMag);
                      await UserSimplePreferencesMaggio.setDatasumDIVMag(
                          sumDIVMag);
                    }),
                testoTots: 'La spesa totale è: $totsUTIMag',
                testoFormField: TextFormField(
                  initialValue: viUTIMag,
                  onChanged: (viUTIMag) =>
                      viNUTIMag = int.tryParse(viUTIMag) ?? 0,
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
                                            '$utilistaMag',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                utilistaMag.removeAt(
                                                    chooseIntUtiMag - 1);
                                                await UserSimplePreferencesMaggio
                                                    .setDataLisDIVMag(
                                                        utilistaMag);
                                                print(utilistaMag);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                utilistaMag.clear();
                                                await UserSimplePreferencesMaggio
                                                    .setDataLisDIVMag(
                                                        utilistaMag);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseUtiMag,
                                            onChanged: (chooseUtiMag) {
                                              chooseIntUtiMag =
                                                  int.tryParse(chooseUtiMag) ??
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
                        totSPEMag = viNSPEMag;
                        totsSPEMag = totSPEMag.toString();
                        spelistaMag.add(totsSPEMag);
                        List<int> spelistaMagInt =
                            spelistaMag.map(int.parse).toList();
                        sumSPEMag = spelistaMagInt.sum;
                      });
                      await UserSimplePreferencesMaggio.setDataLisSPEMag(
                          spelistaMag);
                      await UserSimplePreferencesMaggio.setDatasumSPEMag(
                          sumSPEMag);
                    }),
                testoTots: 'La spesa totale è: $totsSPEMag',
                testoFormField: TextFormField(
                  initialValue: viSPEMag,
                  onChanged: (viSPEMag) =>
                      viNSPEMag = int.tryParse(viSPEMag) ?? 0,
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
                                            '$spelistaMag',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                spelistaMag.removeAt(
                                                    chooseIntSpeMag - 1);
                                                await UserSimplePreferencesMaggio
                                                    .setDataLisSPEMag(
                                                        spelistaMag);
                                                print(spelistaMag);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                spelistaMag.clear();
                                                await UserSimplePreferencesMaggio
                                                    .setDataLisSPEMag(
                                                        spelistaMag);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseSpeMag,
                                            onChanged: (chooseSpeMag) {
                                              chooseIntSpeMag =
                                                  int.tryParse(chooseSpeMag) ??
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
