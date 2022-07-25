import 'package:flutter/material.dart';
import 'package:collection/collection.dart';
import 'package:flutter_application_1/Widget/ExpenseBox.dart';
import 'package:flutter_application_1/Widget/UserPreferences/UserPreferencesDicembre.dart';

class DicembrePage extends StatefulWidget {
  const DicembrePage({Key? key}) : super(key: key);

  @override
  State<DicembrePage> createState() => _DicembrePageState();
}

class _DicembrePageState extends State<DicembrePage> {
  final _formKey = GlobalKey<FormState>();
  //RIS
  String viRISDic = '';
  int viNRISDic = 0;
  String totsRISDic = '';
  int totRISDic = 0;
  List<String> rislistaDic = [];
  List<int> rislistaDicInt = [];
  int sumRISDic = 0;
  String chooseRisDic = '';
  int chooseIntRisDic = 0;
  //DEL
  String viDELDic = '';
  int viNDELDic = 0;
  int totDELDic = 0;
  String totsDELDic = '';
  List<String> dellistaDic = [];
  List<int> dellistaDicInt = [];
  int sumDELDic = 0;
  String chooseDelDic = '';
  int chooseIntDelDic = 0;
  //SAN
  String viSANDic = '';
  int viNSANDic = 0;
  int totSANDic = 0;
  String totsSANDic = '';
  List<String> sanlistaDic = [];
  List<int> sanlistaDicInt = [];
  int sumSANDic = 0;
  String chooseSanDic = '';
  int chooseIntSanDic = 0;
  //IST
  String viISTDic = '';
  int viNISTDic = 0;
  int totISTDic = 0;
  String totsISTDic = '';
  List<String> istlistaDic = [];
  List<int> istlistaDicInt = [];
  int sumISTDic = 0;
  String chooseIstDic = '';
  int chooseIntIstDic = 0;
  //APP
  String viAPPDic = '';
  int viNAPPDic = 0;
  int totAPPDic = 0;
  String totsAPPDic = '';
  List<String> applistaDic = [];
  List<int> applistaDicInt = [];
  int sumAPPDic = 0;
  String chooseAppDic = '';
  int chooseIntAppDic = 0;
  //DIV
  String viDIVDic = '';
  int viNDIVDic = 0;
  int totDIVDic = 0;
  String totsDIVDic = '';
  List<String> divlistaDic = [];
  List<int> divlistaDicInt = [];
  int sumDIVDic = 0;
  String chooseDivDic = '';
  int chooseIntDivDic = 0;
  //UTI
  String viUTIDic = '';
  int viNUTIDic = 0;
  int totUTIDic = 0;
  String totsUTIDic = '';
  List<String> utilistaDic = [];
  List<int> utilistaDicInt = [];
  int sumUTIDic = 0;
  String chooseUtiDic = '';
  int chooseIntUtiDic = 0;
  //SPE
  String viSPEDic = '';
  int viNSPEDic = 0;
  int totSPEDic = 0;
  String totsSPEDic = '';
  List<String> spelistaDic = [];
  List<int> spelistaDicInt = [];
  int sumSPEDic = 0;
  String chooseSpeDic = '';
  int chooseIntSpeDic = 0;

  var color_green = const Color.fromARGB(255, 29, 139, 33);

  @override
  void initState() {
    super.initState();
    sumRISDic = UserSimplePreferencesDicembre.getDatasumRISDic() ?? 0;
    rislistaDic = UserSimplePreferencesDicembre.getLisRISDic() ?? [];
    sumDELDic = UserSimplePreferencesDicembre.getDatasumDELDic() ?? 0;
    dellistaDic = UserSimplePreferencesDicembre.getLisRISDic() ?? [];
    sumSANDic = UserSimplePreferencesDicembre.getDatasumSANDic() ?? 0;
    sanlistaDic = UserSimplePreferencesDicembre.getLisRISDic() ?? [];
    sumISTDic = UserSimplePreferencesDicembre.getDatasumISTDic() ?? 0;
    istlistaDic = UserSimplePreferencesDicembre.getLisRISDic() ?? [];
    sumAPPDic = UserSimplePreferencesDicembre.getDatasumAPPDic() ?? 0;
    applistaDic = UserSimplePreferencesDicembre.getLisRISDic() ?? [];
    sumDIVDic = UserSimplePreferencesDicembre.getDatasumDIVDic() ?? 0;
    divlistaDic = UserSimplePreferencesDicembre.getLisRISDic() ?? [];
    sumUTIDic = UserSimplePreferencesDicembre.getDatasumUTIDic() ?? 0;
    utilistaDic = UserSimplePreferencesDicembre.getLisRISDic() ?? [];
    sumSPEDic = UserSimplePreferencesDicembre.getDatasumSPEDic() ?? 0;
    spelistaDic = UserSimplePreferencesDicembre.getLisRISDic() ?? [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: color_green,
          title: const Text("Dicembre"),
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
                        totRISDic = viNRISDic;
                        totsRISDic = totRISDic.toString();
                        rislistaDic.add(totsRISDic);
                        List<int> rislistaDicInt =
                            rislistaDic.map(int.parse).toList();
                        sumRISDic = rislistaDicInt.sum;
                      });
                      await UserSimplePreferencesDicembre.setDataLisRISDic(
                          rislistaDic);
                      await UserSimplePreferencesDicembre.setDatasumRISDic(
                          sumRISDic);
                    }),
                testoTots: 'La spesa totale è: $sumRISDic',
                testoFormField: TextFormField(
                  initialValue: viRISDic,
                  onChanged: (viRISDic) =>
                      viNRISDic = int.tryParse(viRISDic) ?? 0,
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
                                            '$rislistaDic',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                rislistaDic.removeAt(
                                                    chooseIntRisDic - 1);
                                                await UserSimplePreferencesDicembre
                                                    .setDataLisRISDic(
                                                        rislistaDic);
                                                print(rislistaDic);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                rislistaDic.clear();
                                                await UserSimplePreferencesDicembre
                                                    .setDataLisRISDic(
                                                        rislistaDic);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseRisDic,
                                            onChanged: (chooseRisDic) {
                                              chooseIntRisDic =
                                                  int.tryParse(chooseRisDic) ??
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
                        totDELDic = viNDELDic;
                        totsDELDic = totDELDic.toString();
                        dellistaDic.add(totsDELDic);
                        List<int> dellistaDicInt =
                            dellistaDic.map(int.parse).toList();
                        sumDELDic = dellistaDicInt.sum;
                      });
                      await UserSimplePreferencesDicembre.setDataLisDELDic(
                          dellistaDic);
                      await UserSimplePreferencesDicembre.setDatasumDELDic(
                          sumDELDic);
                    }),
                testoTots: 'La spesa totale è: $sumDELDic',
                testoFormField: TextFormField(
                  initialValue: viDELDic,
                  onChanged: (viDELDic) =>
                      viNDELDic = int.tryParse(viDELDic) ?? 0,
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
                                            '$dellistaDic',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                dellistaDic.removeAt(
                                                    chooseIntRisDic - 1);
                                                await UserSimplePreferencesDicembre
                                                    .setDataLisDELDic(
                                                        dellistaDic);
                                                print(dellistaDic);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                dellistaDic.clear();
                                                await UserSimplePreferencesDicembre
                                                    .setDataLisDELDic(
                                                        dellistaDic);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseDelDic,
                                            onChanged: (chooseDelDic) {
                                              chooseIntDelDic =
                                                  int.tryParse(chooseDelDic) ??
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
                        totSANDic = viNSANDic;
                        totsSANDic = totSANDic.toString();
                        sanlistaDic.add(totsSANDic);
                        List<int> sanlistaDicInt =
                            sanlistaDic.map(int.parse).toList();
                        sumSANDic = sanlistaDicInt.sum;
                      });
                      await UserSimplePreferencesDicembre.setDataLisSANDic(
                          sanlistaDic);
                      await UserSimplePreferencesDicembre.setDatasumSANDic(
                          sumSANDic);
                    }),
                testoTots: 'La spesa totale è: $sumSANDic',
                testoFormField: TextFormField(
                  initialValue: viSANDic,
                  onChanged: (viSANDic) =>
                      viNSANDic = int.tryParse(viSANDic) ?? 0,
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
                                            '$sanlistaDic',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                sanlistaDic.removeAt(
                                                    chooseIntSanDic - 1);
                                                await UserSimplePreferencesDicembre
                                                    .setDataLisSANDic(
                                                        sanlistaDic);
                                                print(sanlistaDic);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                sanlistaDic.clear();
                                                await UserSimplePreferencesDicembre
                                                    .setDataLisSANDic(
                                                        sanlistaDic);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseSanDic,
                                            onChanged: (chooseSanDic) {
                                              chooseIntSanDic =
                                                  int.tryParse(chooseSanDic) ??
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
                        totISTDic = viNISTDic;
                        totsISTDic = totISTDic.toString();
                        istlistaDic.add(totsISTDic);
                        List<int> istlistaDicInt =
                            istlistaDic.map(int.parse).toList();
                        sumISTDic = istlistaDicInt.sum;
                      });
                      await UserSimplePreferencesDicembre.setDataLisISTDic(
                          istlistaDic);
                      await UserSimplePreferencesDicembre.setDatasumISTDic(
                          sumISTDic);
                    }),
                testoTots: 'La spesa totale è: $sumISTDic',
                testoFormField: TextFormField(
                  initialValue: viISTDic,
                  onChanged: (viISTDic) =>
                      viNISTDic = int.tryParse(viISTDic) ?? 0,
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
                                            '$istlistaDic',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                istlistaDic.removeAt(
                                                    chooseIntIstDic - 1);
                                                await UserSimplePreferencesDicembre
                                                    .setDataLisISTDic(
                                                        istlistaDic);
                                                print(istlistaDic);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                istlistaDic.clear();
                                                await UserSimplePreferencesDicembre
                                                    .setDataLisISTDic(
                                                        istlistaDic);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseIstDic,
                                            onChanged: (chooseIstDic) {
                                              chooseIntIstDic =
                                                  int.tryParse(chooseIstDic) ??
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
                        totAPPDic = viNAPPDic;
                        totsAPPDic = totAPPDic.toString();
                        applistaDic.add(totsAPPDic);
                        List<int> applistaDicInt =
                            applistaDic.map(int.parse).toList();
                        sumAPPDic = applistaDicInt.sum;
                      });
                      await UserSimplePreferencesDicembre.setDataLiAPPDic(
                          applistaDic);
                      await UserSimplePreferencesDicembre.setDatasumAPPDic(
                          sumAPPDic);
                    }),
                testoTots: 'La spesa totale è: $sumAPPDic',
                testoFormField: TextFormField(
                  initialValue: viAPPDic,
                  onChanged: (viAPPDic) =>
                      viNAPPDic = int.tryParse(viAPPDic) ?? 0,
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
                                            '$applistaDic',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                applistaDic.removeAt(
                                                    chooseIntAppDic - 1);
                                                await UserSimplePreferencesDicembre
                                                    .setDataLiAPPDic(
                                                        applistaDic);
                                                print(applistaDic);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                applistaDic.clear();
                                                await UserSimplePreferencesDicembre
                                                    .setDataLiAPPDic(
                                                        applistaDic);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseAppDic,
                                            onChanged: (chooseAppDic) {
                                              chooseIntAppDic =
                                                  int.tryParse(chooseAppDic) ??
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
                        totDIVDic = viNDIVDic;
                        totsDIVDic = totDIVDic.toString();
                        divlistaDic.add(totsDIVDic);
                        List<int> divlistaDicInt =
                            divlistaDic.map(int.parse).toList();
                        sumDIVDic = divlistaDicInt.sum;
                      });
                      await UserSimplePreferencesDicembre.setDataLisDIVDic(
                          divlistaDic);
                      await UserSimplePreferencesDicembre.setDatasumDIVDic(
                          sumDIVDic);
                    }),
                testoTots: 'La spesa totale è: $sumDIVDic',
                testoFormField: TextFormField(
                  initialValue: viDIVDic,
                  onChanged: (viDIVDic) =>
                      viNDIVDic = int.tryParse(viDIVDic) ?? 0,
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
                                            '$divlistaDic',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                divlistaDic.removeAt(
                                                    chooseIntDivDic - 1);
                                                await UserSimplePreferencesDicembre
                                                    .setDataLisDIVDic(
                                                        divlistaDic);
                                                print(divlistaDic);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                divlistaDic.clear();
                                                await UserSimplePreferencesDicembre
                                                    .setDataLisDIVDic(
                                                        divlistaDic);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseDivDic,
                                            onChanged: (chooseDivDic) {
                                              chooseIntDivDic =
                                                  int.tryParse(chooseDivDic) ??
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
                        totUTIDic = viNUTIDic;
                        totsUTIDic = totUTIDic.toString();
                        utilistaDic.add(totsUTIDic);
                        List<int> utilistaDicInt =
                            utilistaDic.map(int.parse).toList();
                        sumUTIDic = utilistaDicInt.sum;
                      });
                      await UserSimplePreferencesDicembre.setDataLisDIVDic(
                          utilistaDic);
                      await UserSimplePreferencesDicembre.setDatasumDIVDic(
                          sumDIVDic);
                    }),
                testoTots: 'La spesa totale è: $totsUTIDic',
                testoFormField: TextFormField(
                  initialValue: viUTIDic,
                  onChanged: (viUTIDic) =>
                      viNUTIDic = int.tryParse(viUTIDic) ?? 0,
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
                                            '$utilistaDic',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                utilistaDic.removeAt(
                                                    chooseIntUtiDic - 1);
                                                await UserSimplePreferencesDicembre
                                                    .setDataLisDIVDic(
                                                        utilistaDic);
                                                print(utilistaDic);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                utilistaDic.clear();
                                                await UserSimplePreferencesDicembre
                                                    .setDataLisDIVDic(
                                                        utilistaDic);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseUtiDic,
                                            onChanged: (chooseUtiDic) {
                                              chooseIntUtiDic =
                                                  int.tryParse(chooseUtiDic) ??
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
                        totSPEDic = viNSPEDic;
                        totsSPEDic = totSPEDic.toString();
                        spelistaDic.add(totsSPEDic);
                        List<int> spelistaDicInt =
                            spelistaDic.map(int.parse).toList();
                        sumSPEDic = spelistaDicInt.sum;
                      });
                      await UserSimplePreferencesDicembre.setDataLisSPEDic(
                          spelistaDic);
                      await UserSimplePreferencesDicembre.setDatasumSPEDic(
                          sumSPEDic);
                    }),
                testoTots: 'La spesa totale è: $totsSPEDic',
                testoFormField: TextFormField(
                  initialValue: viSPEDic,
                  onChanged: (viSPEDic) =>
                      viNSPEDic = int.tryParse(viSPEDic) ?? 0,
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
                                            '$spelistaDic',
                                          ),
                                          TextButton(
                                              onPressed: () async {
                                                spelistaDic.removeAt(
                                                    chooseIntSpeDic - 1);
                                                await UserSimplePreferencesDicembre
                                                    .setDataLisSPEDic(
                                                        spelistaDic);
                                                print(spelistaDic);
                                              },
                                              child: const Text('Remove')),
                                          TextButton(
                                              onPressed: () async {
                                                spelistaDic.clear();
                                                await UserSimplePreferencesDicembre
                                                    .setDataLisSPEDic(
                                                        spelistaDic);
                                              },
                                              child: const Text('Remove All'))
                                        ]),
                                        TextFormField(
                                            initialValue: chooseSpeDic,
                                            onChanged: (chooseSpeDic) {
                                              chooseIntSpeDic =
                                                  int.tryParse(chooseSpeDic) ??
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
