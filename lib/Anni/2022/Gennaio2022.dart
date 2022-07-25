import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widget/ExpenseBox.dart';
import 'package:flutter_application_1/Widget/UserPreferences/UserSimplePreferences.dart';
import 'package:collection/collection.dart';

class GennaioPage extends StatefulWidget {
  const GennaioPage({Key? key}) : super(key: key);

  @override
  State<GennaioPage> createState() => _GennaioPageState();
}

class _GennaioPageState extends State<GennaioPage> {
  final _formKey = GlobalKey<FormState>();
  //RIS
  String viRIS = '';
  int viNRIS = 0;
  String totsRIS = '';
  int totRIS = 0;
  List<String> rislista = [];
  List<int> rislistaInt = [];
  int sumRIS = 0;
  String chooseRis = '';
  int chooseIntRis = 0;
  //DEL
  String viDEL = '';
  int viNDEL = 0;
  int totDEL = 0;
  String totsDEL = '';
  List<String> dellista = [];
  List<int> dellistaInt = [];
  int sumDEL = 0;
  String chooseDel = '';
  int chooseIntDel = 0;
  //SAN
  String viSAN = '';
  int viNSAN = 0;
  int totSAN = 0;
  String totsSAN = '';
  List<String> sanlista = [];
  List<int> sanlistaInt = [];
  int sumSAN = 0;
  String chooseSan = '';
  int chooseIntSan = 0;
  //IST
  String viIST = '';
  int viNIST = 0;
  int totIST = 0;
  String totsIST = '';
  List<String> istlista = [];
  List<int> istlistaInt = [];
  int sumIST = 0;
  String chooseIst = '';
  int chooseIntIst = 0;
  //APP
  String viAPP = '';
  int viNAPP = 0;
  int totAPP = 0;
  String totsAPP = '';
  List<String> applista = [];
  List<int> applistaInt = [];
  int sumAPP = 0;
  String chooseApp = '';
  int chooseIntApp = 0;
  //DIV
  String viDIV = '';
  int viNDIV = 0;
  int totDIV = 0;
  String totsDIV = '';
  List<String> divlista = [];
  List<int> divlistaInt = [];
  int sumDIV = 0;
  String chooseDiv = '';
  int chooseIntDiv = 0;
  //UTI
  String viUTI = '';
  int viNUTI = 0;
  int totUTI = 0;
  String totsUTI = '';
  List<String> utilista = [];
  List<int> utilistaInt = [];
  int sumUTI = 0;
  String chooseUti = '';
  int chooseIntUti = 0;
  //SPE
  String viSPE = '';
  int viNSPE = 0;
  int totSPE = 0;
  String totsSPE = '';
  List<String> spelista = [];
  List<int> spelistaInt = [];
  int sumSPE = 0;
  String chooseSpe = '';
  int chooseIntSpe = 0;

  var color_green = const Color.fromARGB(255, 29, 139, 33);

  @override
  void initState() {
    super.initState();
    sumRIS = UserSimplePreferences.getDatasumRIS() ?? 0;
    rislista = UserSimplePreferences.getLisRIS() ?? [];
    sumDEL = UserSimplePreferences.getDatasumDEL() ?? 0;
    dellista = UserSimplePreferences.getLisRIS() ?? [];
    sumSAN = UserSimplePreferences.getDatasumSAN() ?? 0;
    sanlista = UserSimplePreferences.getLisRIS() ?? [];
    sumIST = UserSimplePreferences.getDatasumIST() ?? 0;
    istlista = UserSimplePreferences.getLisRIS() ?? [];
    sumAPP = UserSimplePreferences.getDatasumAPP() ?? 0;
    applista = UserSimplePreferences.getLisRIS() ?? [];
    sumDIV = UserSimplePreferences.getDatasumDIV() ?? 0;
    divlista = UserSimplePreferences.getLisRIS() ?? [];
    sumUTI = UserSimplePreferences.getDatasumUTI() ?? 0;
    utilista = UserSimplePreferences.getLisRIS() ?? [];
    sumSPE = UserSimplePreferences.getDatasumSPE() ?? 0;
    spelista = UserSimplePreferences.getLisRIS() ?? [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: color_green,
          title: const Text("Gennaio"),
        ),
        body: SingleChildScrollView(
            child: Center(
                child: Column(children: [
          const SizedBox(height: 20),
          ExpenseBox(
              text: 'Ristorante',
              buttonText: TextButton(
                  child: const Text('+ Aggiungi'),
                  onPressed: () async {
                    setState(() {
                      totRIS = viNRIS;
                      totsRIS = totRIS.toString();
                      rislista.add(totsRIS);
                      List<int> rislistaInt = rislista.map(int.parse).toList();
                      sumRIS = rislistaInt.sum;
                    });
                    await UserSimplePreferences.setDataLisRIS(rislista);
                    await UserSimplePreferences.setDatasumRIS(sumRIS);
                  }),
              testoTots: 'La spesa totale è: $sumRIS',
              testoFormField: TextFormField(
                initialValue: viRIS,
                onChanged: (viRIS) => viNRIS = int.tryParse(viRIS) ?? 0,
                decoration: const InputDecoration(hintText: 'Digita la spesa'),
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
                                      Column(children: [
                                        const Padding(
                                            padding: EdgeInsets.all(10),
                                            child: Text(
                                                'Digita il numero della posizione da rimuovere o rimuovi tutto')),
                                        Text(
                                          '$rislista',
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            TextButton(
                                                onPressed: () async {
                                                  rislista.removeAt(
                                                      chooseIntRis - 1);
                                                  await UserSimplePreferences
                                                      .setDataLisRIS(rislista);
                                                },
                                                child: const Text('Remove')),
                                            TextButton(
                                                onPressed: () async {
                                                  rislista.clear();
                                                  await UserSimplePreferences
                                                      .setDataLisRIS(rislista);
                                                },
                                                child: const Text('Remove All'))
                                          ],
                                        ),
                                      ]),
                                      TextFormField(
                                          initialValue: chooseRis,
                                          onChanged: (chooseRis) {
                                            chooseIntRis =
                                                int.tryParse(chooseRis) ?? 0;
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
                      totDEL = viNDEL;
                      totsDEL = totDEL.toString();
                      dellista.add(totsDEL);
                      List<int> dellistaInt = dellista.map(int.parse).toList();
                      sumDEL = dellistaInt.sum;
                    });
                    await UserSimplePreferences.setDataLisRIS(dellista);
                    await UserSimplePreferences.setDatasumRIS(sumDEL);
                  }),
              testoTots: 'La spesa totale è: $sumDEL',
              testoFormField: TextFormField(
                initialValue: viDEL,
                onChanged: (viDEL) => viNDEL = int.tryParse(viDEL) ?? 0,
                decoration: const InputDecoration(hintText: 'Digita la spesa'),
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
                                      Column(children: [
                                        const Padding(
                                            padding: EdgeInsets.all(10),
                                            child: Text(
                                                'Digita il numero della posizione da rimuovere o rimuovi tutto')),
                                        Text(
                                          '$dellista',
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            TextButton(
                                                onPressed: () async {
                                                  dellista.removeAt(
                                                      chooseIntRis - 1);
                                                  await UserSimplePreferences
                                                      .setDataLisRIS(dellista);
                                                  print(dellista);
                                                },
                                                child: const Text('Remove')),
                                            TextButton(
                                                onPressed: () async {
                                                  dellista.clear();
                                                  await UserSimplePreferences
                                                      .setDataLisRIS(dellista);
                                                },
                                                child:
                                                    const Text('Remove All')),
                                          ],
                                        )
                                      ]),
                                      TextFormField(
                                          initialValue: chooseDel,
                                          onChanged: (chooseDel) {
                                            chooseIntDel =
                                                int.tryParse(chooseDel) ?? 0;
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
                      totSAN = viNSAN;
                      totsSAN = totSAN.toString();
                      sanlista.add(totsSAN);
                      List<int> sanlistaInt = sanlista.map(int.parse).toList();
                      sumSAN = sanlistaInt.sum;
                    });
                    await UserSimplePreferences.setDataLisRIS(sanlista);
                    await UserSimplePreferences.setDatasumRIS(sumSAN);
                  }),
              testoTots: 'La spesa totale è: $sumSAN',
              testoFormField: TextFormField(
                initialValue: viSAN,
                onChanged: (viSAN) => viNSAN = int.tryParse(viSAN) ?? 0,
                decoration: const InputDecoration(hintText: 'Digita la spesa'),
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
                                      Column(children: [
                                        const Padding(
                                            padding: EdgeInsets.all(10),
                                            child: Text(
                                                'Digita il numero della posizione da rimuovere o rimuovi tutto')),
                                        Text(
                                          '$sanlista',
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            TextButton(
                                                onPressed: () async {
                                                  sanlista.removeAt(
                                                      chooseIntSan - 1);
                                                  await UserSimplePreferences
                                                      .setDataLisRIS(sanlista);
                                                  print(sanlista);
                                                },
                                                child: const Text('Remove')),
                                            TextButton(
                                                onPressed: () async {
                                                  sanlista.clear();
                                                  await UserSimplePreferences
                                                      .setDataLisRIS(sanlista);
                                                },
                                                child:
                                                    const Text('Remove All')),
                                          ],
                                        )
                                      ]),
                                      TextFormField(
                                          initialValue: chooseSan,
                                          onChanged: (chooseSan) {
                                            chooseIntSan =
                                                int.tryParse(chooseSan) ?? 0;
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
                      totIST = viNIST;
                      totsIST = totIST.toString();
                      istlista.add(totsIST);
                      List<int> istlistaInt = istlista.map(int.parse).toList();
                      sumIST = istlistaInt.sum;
                    });
                    await UserSimplePreferences.setDataLisRIS(istlista);
                    await UserSimplePreferences.setDatasumRIS(sumIST);
                  }),
              testoTots: 'La spesa totale è: $sumIST',
              testoFormField: TextFormField(
                initialValue: viIST,
                onChanged: (viIST) => viNIST = int.tryParse(viIST) ?? 0,
                decoration: const InputDecoration(hintText: 'Digita la spesa'),
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
                                      Column(children: [
                                        const Padding(
                                            padding: EdgeInsets.all(10),
                                            child: Text(
                                                'Digita il numero della posizione da rimuovere o rimuovi tutto')),
                                        Text(
                                          '$istlista',
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            TextButton(
                                                onPressed: () async {
                                                  istlista.removeAt(
                                                      chooseIntIst - 1);
                                                  await UserSimplePreferences
                                                      .setDataLisRIS(istlista);
                                                  print(istlista);
                                                },
                                                child: const Text('Remove')),
                                            TextButton(
                                                onPressed: () async {
                                                  istlista.clear();
                                                  await UserSimplePreferences
                                                      .setDataLisRIS(istlista);
                                                },
                                                child:
                                                    const Text('Remove All')),
                                          ],
                                        )
                                      ]),
                                      TextFormField(
                                          initialValue: chooseIst,
                                          onChanged: (chooseIst) {
                                            chooseIntIst =
                                                int.tryParse(chooseIst) ?? 0;
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
                      totAPP = viNAPP;
                      totsAPP = totAPP.toString();
                      applista.add(totsAPP);
                      List<int> applistaInt = applista.map(int.parse).toList();
                      sumAPP = applistaInt.sum;
                    });
                    await UserSimplePreferences.setDataLisRIS(applista);
                    await UserSimplePreferences.setDatasumRIS(sumAPP);
                  }),
              testoTots: 'La spesa totale è: $sumAPP',
              testoFormField: TextFormField(
                initialValue: viAPP,
                onChanged: (viAPP) => viNAPP = int.tryParse(viAPP) ?? 0,
                decoration: const InputDecoration(hintText: 'Digita la spesa'),
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
                                      Column(children: [
                                        const Padding(
                                            padding: EdgeInsets.all(10),
                                            child: Text(
                                                'Digita il numero della posizione da rimuovere o rimuovi tutto')),
                                        Text(
                                          '$applista',
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            TextButton(
                                                onPressed: () async {
                                                  applista.removeAt(
                                                      chooseIntApp - 1);
                                                  await UserSimplePreferences
                                                      .setDataLisRIS(applista);
                                                  print(applista);
                                                },
                                                child: const Text('Remove')),
                                            TextButton(
                                                onPressed: () async {
                                                  applista.clear();
                                                  await UserSimplePreferences
                                                      .setDataLisRIS(applista);
                                                },
                                                child:
                                                    const Text('Remove All')),
                                          ],
                                        )
                                      ]),
                                      TextFormField(
                                          initialValue: chooseApp,
                                          onChanged: (chooseApp) {
                                            chooseIntApp =
                                                int.tryParse(chooseApp) ?? 0;
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
                      totDIV = viNDIV;
                      totsDIV = totDIV.toString();
                      divlista.add(totsDIV);
                      List<int> divlistaInt = divlista.map(int.parse).toList();
                      sumDIV = divlistaInt.sum;
                    });
                    await UserSimplePreferences.setDataLisRIS(divlista);
                    await UserSimplePreferences.setDatasumRIS(sumDIV);
                  }),
              testoTots: 'La spesa totale è: $sumDIV',
              testoFormField: TextFormField(
                initialValue: viDIV,
                onChanged: (viDIV) => viNDIV = int.tryParse(viDIV) ?? 0,
                decoration: const InputDecoration(hintText: 'Digita la spesa'),
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
                                      Column(children: [
                                        const Padding(
                                            padding: EdgeInsets.all(10),
                                            child: Text(
                                                'Digita il numero della posizione da rimuovere o rimuovi tutto')),
                                        Text(
                                          '$divlista',
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            TextButton(
                                                onPressed: () async {
                                                  divlista.removeAt(
                                                      chooseIntDiv - 1);
                                                  await UserSimplePreferences
                                                      .setDataLisRIS(divlista);
                                                  print(divlista);
                                                },
                                                child: const Text('Remove')),
                                            TextButton(
                                                onPressed: () async {
                                                  divlista.clear();
                                                  await UserSimplePreferences
                                                      .setDataLisRIS(divlista);
                                                },
                                                child:
                                                    const Text('Remove All')),
                                          ],
                                        )
                                      ]),
                                      TextFormField(
                                          initialValue: chooseDiv,
                                          onChanged: (chooseDiv) {
                                            chooseIntDiv =
                                                int.tryParse(chooseDiv) ?? 0;
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
                      totUTI = viNUTI;
                      totsUTI = totUTI.toString();
                      utilista.add(totsUTI);
                      List<int> utilistaInt = utilista.map(int.parse).toList();
                      sumUTI = utilistaInt.sum;
                    });
                    await UserSimplePreferences.setDataLisRIS(utilista);
                    await UserSimplePreferences.setDatasumRIS(sumUTI);
                  }),
              testoTots: 'La spesa totale è: $totsUTI',
              testoFormField: TextFormField(
                initialValue: viUTI,
                onChanged: (viUTI) => viNUTI = int.tryParse(viUTI) ?? 0,
                decoration: const InputDecoration(hintText: 'Digita la spesa'),
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
                                      Column(children: [
                                        const Padding(
                                            padding: EdgeInsets.all(10),
                                            child: Text(
                                                'Digita il numero della posizione da rimuovere o rimuovi tutto')),
                                        Text(
                                          '$utilista',
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            TextButton(
                                                onPressed: () async {
                                                  utilista.removeAt(
                                                      chooseIntUti - 1);
                                                  await UserSimplePreferences
                                                      .setDataLisRIS(utilista);
                                                  print(utilista);
                                                },
                                                child: const Text('Remove')),
                                            TextButton(
                                                onPressed: () async {
                                                  utilista.clear();
                                                  await UserSimplePreferences
                                                      .setDataLisRIS(utilista);
                                                },
                                                child:
                                                    const Text('Remove All')),
                                          ],
                                        )
                                      ]),
                                      TextFormField(
                                          initialValue: chooseUti,
                                          onChanged: (chooseUti) {
                                            chooseIntUti =
                                                int.tryParse(chooseUti) ?? 0;
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
                      totSPE = viNSPE;
                      totsSPE = totSPE.toString();
                      spelista.add(totsSPE);
                      List<int> spelistaInt = spelista.map(int.parse).toList();
                      sumSPE = spelistaInt.sum;
                    });
                    await UserSimplePreferences.setDataLisRIS(spelista);
                    await UserSimplePreferences.setDatasumRIS(sumSPE);
                  }),
              testoTots: 'La spesa totale è: $totsSPE',
              testoFormField: TextFormField(
                initialValue: viSPE,
                onChanged: (viSPE) => viNSPE = int.tryParse(viSPE) ?? 0,
                decoration: const InputDecoration(hintText: 'Digita la spesa'),
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
                                      Column(children: [
                                        const Padding(
                                            padding: EdgeInsets.all(10),
                                            child: Text(
                                                'Digita il numero della posizione da rimuovere o rimuovi tutto')),
                                        Text(
                                          '$spelista',
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            TextButton(
                                                onPressed: () async {
                                                  spelista.removeAt(
                                                      chooseIntSpe - 1);
                                                  await UserSimplePreferences
                                                      .setDataLisRIS(spelista);
                                                  print(spelista);
                                                },
                                                child: const Text('Remove')),
                                            TextButton(
                                                onPressed: () async {
                                                  spelista.clear();
                                                  await UserSimplePreferences
                                                      .setDataLisRIS(spelista);
                                                },
                                                child:
                                                    const Text('Remove All')),
                                          ],
                                        )
                                      ]),
                                      TextFormField(
                                          initialValue: chooseSpe,
                                          onChanged: (chooseSpe) {
                                            chooseIntSpe =
                                                int.tryParse(chooseSpe) ?? 0;
                                          })
                                    ]))
                          ]));
                        });
                  },
                  icon: const Icon(Icons.data_saver_on),
                  alignment: Alignment.topCenter)),
        ]))));
  }
}
