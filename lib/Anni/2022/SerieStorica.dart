import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widget/TimeSeriesWidget.dart';
import 'package:flutter_application_1/Widget/UserPreferences/UserPreferencesAgosto.dart';
import 'package:flutter_application_1/Widget/UserPreferences/UserPreferencesAprile.dart';
import 'package:flutter_application_1/Widget/UserPreferences/UserPreferencesDicembre.dart';
import 'package:flutter_application_1/Widget/UserPreferences/UserPreferencesFebbraio.dart';
import 'package:flutter_application_1/Widget/UserPreferences/UserPreferencesGiugno.dart';
import 'package:flutter_application_1/Widget/UserPreferences/UserPreferencesLuglio.dart';
import 'package:flutter_application_1/Widget/UserPreferences/UserPreferencesMaggio.dart';
import 'package:flutter_application_1/Widget/UserPreferences/UserPreferencesMarzo.dart';
import 'package:flutter_application_1/Widget/UserPreferences/UserPreferencesNovembre.dart';
import 'package:flutter_application_1/Widget/UserPreferences/UserPreferencesOttobre.dart';
import 'package:flutter_application_1/Widget/UserPreferences/UserPreferencesSettembre.dart';
import 'package:flutter_application_1/Widget/UserPreferences/UsertotaliExpense.dart';
import '../../Widget/UserPreferences/UserSimplePreferences.dart';

class Timeseries extends StatefulWidget {
  //
  int sumRIS;
  int sumSAN;
  int sumSPE;
  int sumAPP;
  int sumDEL;
  int sumUTI;
  int sumIST;
  int sumDIV;
  //
  int sumRISFeb;
  int sumSANFeb;
  int sumSPEFeb;
  int sumAPPFeb;
  int sumDELFeb;
  int sumUTIFeb;
  int sumISTFeb;
  int sumDIVFeb;
  //
  int sumRISMar;
  int sumSANMar;
  int sumSPEMar;
  int sumDELMar;
  int sumAPPMar;
  int sumUTIMar;
  int sumISTMar;
  int sumDIVMar;
  //
  int sumRISApr;
  int sumSANApr;
  int sumSPEApr;
  int sumDELApr;
  int sumAPPApr;
  int sumUTIApr;
  int sumISTApr;
  int sumDIVApr;
  //
  int sumRISMag;
  int sumSANMag;
  int sumSPEMag;
  int sumDELMag;
  int sumAPPMag;
  int sumUTIMag;
  int sumISTMag;
  int sumDIVMag;
  //
  int sumRISGiu;
  int sumSANGiu;
  int sumSPEGiu;
  int sumDELGiu;
  int sumAPPGiu;
  int sumUTIGiu;
  int sumISTGiu;
  int sumDIVGiu;
  //
  int sumRISLug;
  int sumSANLug;
  int sumSPELug;
  int sumDELLug;
  int sumAPPLug;
  int sumUTILug;
  int sumISTLug;
  int sumDIVLug;
  //
  int sumRISAgo;
  int sumSANAgo;
  int sumSPEAgo;
  int sumDELAgo;
  int sumAPPAgo;
  int sumUTIAgo;
  int sumISTAgo;
  int sumDIVAgo;
  //
  int sumRISSet;
  int sumSANSet;
  int sumSPESet;
  int sumDELSet;
  int sumAPPSet;
  int sumUTISet;
  int sumISTSet;
  int sumDIVSet;
  //
  int sumRISOtt;
  int sumSANOtt;
  int sumSPEOtt;
  int sumDELOtt;
  int sumAPPOtt;
  int sumUTIOtt;
  int sumISTOtt;
  int sumDIVOtt;
  //
  int sumRISNov;
  int sumSANNov;
  int sumSPENov;
  int sumDELNov;
  int sumAPPNov;
  int sumUTINov;
  int sumISTNov;
  int sumDIVNov;
  //
  int sumRISDic;
  int sumSANDic;
  int sumSPEDic;
  int sumDELDic;
  int sumAPPDic;
  int sumUTIDic;
  int sumISTDic;
  int sumDIVDic;
  //

  Timeseries({
    Key? key,
    //
    required this.sumRIS,
    required this.sumDIV,
    required this.sumAPP,
    required this.sumSPE,
    required this.sumUTI,
    required this.sumIST,
    required this.sumSAN,
    required this.sumDEL,
    //
    required this.sumRISFeb,
    required this.sumDIVFeb,
    required this.sumAPPFeb,
    required this.sumSPEFeb,
    required this.sumUTIFeb,
    required this.sumISTFeb,
    required this.sumSANFeb,
    required this.sumDELFeb,
    //
    required this.sumRISApr,
    required this.sumDIVApr,
    required this.sumAPPApr,
    required this.sumSPEApr,
    required this.sumUTIApr,
    required this.sumISTApr,
    required this.sumSANApr,
    required this.sumDELApr,
    //
    required this.sumRISMag,
    required this.sumDIVMag,
    required this.sumAPPMag,
    required this.sumSPEMag,
    required this.sumUTIMag,
    required this.sumISTMag,
    required this.sumSANMag,
    required this.sumDELMag,
    //
    required this.sumRISGiu,
    required this.sumDIVGiu,
    required this.sumAPPGiu,
    required this.sumSPEGiu,
    required this.sumUTIGiu,
    required this.sumISTGiu,
    required this.sumSANGiu,
    required this.sumDELGiu,
    //
    required this.sumRISLug,
    required this.sumDIVLug,
    required this.sumAPPLug,
    required this.sumSPELug,
    required this.sumUTILug,
    required this.sumISTLug,
    required this.sumSANLug,
    required this.sumDELLug,
    //
    required this.sumRISAgo,
    required this.sumDIVAgo,
    required this.sumAPPAgo,
    required this.sumSPEAgo,
    required this.sumUTIAgo,
    required this.sumISTAgo,
    required this.sumSANAgo,
    required this.sumDELAgo,
    //
    required this.sumRISMar,
    required this.sumSANMar,
    required this.sumDIVMar,
    required this.sumSPEMar,
    required this.sumUTIMar,
    required this.sumISTMar,
    required this.sumDELMar,
    required this.sumAPPMar,
    //
    required this.sumRISSet,
    required this.sumDIVSet,
    required this.sumAPPSet,
    required this.sumSPESet,
    required this.sumUTISet,
    required this.sumISTSet,
    required this.sumSANSet,
    required this.sumDELSet,
    //
    required this.sumRISOtt,
    required this.sumDIVOtt,
    required this.sumAPPOtt,
    required this.sumSPEOtt,
    required this.sumUTIOtt,
    required this.sumISTOtt,
    required this.sumSANOtt,
    required this.sumDELOtt,
    //
    required this.sumRISNov,
    required this.sumDIVNov,
    required this.sumAPPNov,
    required this.sumSPENov,
    required this.sumUTINov,
    required this.sumISTNov,
    required this.sumSANNov,
    required this.sumDELNov,
    //
    required this.sumRISDic,
    required this.sumDIVDic,
    required this.sumAPPDic,
    required this.sumSPEDic,
    required this.sumUTIDic,
    required this.sumISTDic,
    required this.sumSANDic,
    required this.sumDELDic,
    //
  }) : super(key: key);

  @override
  State<Timeseries> createState() => _TimeseriesState();
}

class _TimeseriesState extends State<Timeseries> {
  @override
  void initState() {
    super.initState();
    widget.sumRIS = UserSimplePreferences.getDatasumRIS() ?? 0;
    widget.sumDEL = UserSimplePreferences.getDatasumDEL() ?? 0;
    widget.sumSAN = UserSimplePreferences.getDatasumSAN() ?? 0;
    widget.sumAPP = UserSimplePreferences.getDatasumAPP() ?? 0;
    widget.sumSPE = UserSimplePreferences.getDatasumSPE() ?? 0;
    widget.sumUTI = UserSimplePreferences.getDatasumUTI() ?? 0;
    widget.sumIST = UserSimplePreferences.getDatasumIST() ?? 0;
    widget.sumDIV = UserSimplePreferences.getDatasumDIV() ?? 0;
    widget.sumRISFeb = UserSimplePreferencesFebbraio.getDatasumRISFeb() ?? 0;
    widget.sumDELFeb = UserSimplePreferencesFebbraio.getDatasumDELFeb() ?? 0;
    widget.sumSANFeb = UserSimplePreferencesFebbraio.getDatasumSANFeb() ?? 0;
    widget.sumAPPFeb = UserSimplePreferencesFebbraio.getDatasumAPPFeb() ?? 0;
    widget.sumSPEFeb = UserSimplePreferencesFebbraio.getDatasumSPEFeb() ?? 0;
    widget.sumUTIFeb = UserSimplePreferencesFebbraio.getDatasumUTIFeb() ?? 0;
    widget.sumISTFeb = UserSimplePreferencesFebbraio.getDatasumISTFeb() ?? 0;
    widget.sumDIVFeb = UserSimplePreferencesFebbraio.getDatasumDIVFeb() ?? 0;
    widget.sumRISMar = UserSimplePreferencesMarzo.getDatasumRISMar() ?? 0;
    widget.sumDELMar = UserSimplePreferencesMarzo.getDatasumDELMar() ?? 0;
    widget.sumSANMar = UserSimplePreferencesMarzo.getDatasumSANMar() ?? 0;
    widget.sumAPPMar = UserSimplePreferencesMarzo.getDatasumAPPMar() ?? 0;
    widget.sumRISMar = UserSimplePreferencesMarzo.getDatasumRISMar() ?? 0;
    widget.sumSPEMar = UserSimplePreferencesMarzo.getDatasumSPEMar() ?? 0;
    widget.sumUTIMar = UserSimplePreferencesMarzo.getDatasumUTIMar() ?? 0;
    widget.sumISTMar = UserSimplePreferencesMarzo.getDatasumISTMar() ?? 0;
    widget.sumDIVMar = UserSimplePreferencesMarzo.getDatasumDIVMar() ?? 0;
    widget.sumRISApr = UserSimplePreferencesAprile.getDatasumRISApr() ?? 0;
    widget.sumDELApr = UserSimplePreferencesAprile.getDatasumDELApr() ?? 0;
    widget.sumSANApr = UserSimplePreferencesAprile.getDatasumSANApr() ?? 0;
    widget.sumAPPApr = UserSimplePreferencesAprile.getDatasumAPPApr() ?? 0;
    widget.sumRISApr = UserSimplePreferencesAprile.getDatasumRISApr() ?? 0;
    widget.sumSPEApr = UserSimplePreferencesAprile.getDatasumSPEApr() ?? 0;
    widget.sumUTIApr = UserSimplePreferencesAprile.getDatasumUTIApr() ?? 0;
    widget.sumISTApr = UserSimplePreferencesAprile.getDatasumISTApr() ?? 0;
    widget.sumDIVApr = UserSimplePreferencesAprile.getDatasumDIVApr() ?? 0;
    widget.sumRISMag = UserSimplePreferencesMaggio.getDatasumRISMag() ?? 0;
    widget.sumDELMag = UserSimplePreferencesMaggio.getDatasumDELMag() ?? 0;
    widget.sumSANMag = UserSimplePreferencesMaggio.getDatasumSANMag() ?? 0;
    widget.sumAPPMag = UserSimplePreferencesMaggio.getDatasumAPPMag() ?? 0;
    widget.sumRISMag = UserSimplePreferencesMaggio.getDatasumRISMag() ?? 0;
    widget.sumSPEMag = UserSimplePreferencesMaggio.getDatasumSPEMag() ?? 0;
    widget.sumUTIMag = UserSimplePreferencesMaggio.getDatasumUTIMag() ?? 0;
    widget.sumISTMag = UserSimplePreferencesMaggio.getDatasumISTMag() ?? 0;
    widget.sumDIVMag = UserSimplePreferencesMaggio.getDatasumDIVMag() ?? 0;
    widget.sumRISGiu = UserSimplePreferencesGiugno.getDatasumRISGiu() ?? 0;
    widget.sumDELGiu = UserSimplePreferencesGiugno.getDatasumDELGiu() ?? 0;
    widget.sumSANGiu = UserSimplePreferencesGiugno.getDatasumSANGiu() ?? 0;
    widget.sumAPPGiu = UserSimplePreferencesGiugno.getDatasumAPPGiu() ?? 0;
    widget.sumRISGiu = UserSimplePreferencesGiugno.getDatasumRISGiu() ?? 0;
    widget.sumSPEGiu = UserSimplePreferencesGiugno.getDatasumSPEGiu() ?? 0;
    widget.sumUTIGiu = UserSimplePreferencesGiugno.getDatasumUTIGiu() ?? 0;
    widget.sumISTGiu = UserSimplePreferencesGiugno.getDatasumISTGiu() ?? 0;
    widget.sumDIVGiu = UserSimplePreferencesGiugno.getDatasumDIVGiu() ?? 0;
    widget.sumRISLug = UserSimplePreferencesLugio.getDatasumRISLug() ?? 0;
    widget.sumDELLug = UserSimplePreferencesLugio.getDatasumDELLug() ?? 0;
    widget.sumSANLug = UserSimplePreferencesLugio.getDatasumSANLug() ?? 0;
    widget.sumAPPLug = UserSimplePreferencesLugio.getDatasumAPPLug() ?? 0;
    widget.sumRISLug = UserSimplePreferencesLugio.getDatasumRISLug() ?? 0;
    widget.sumSPELug = UserSimplePreferencesLugio.getDatasumSPELug() ?? 0;
    widget.sumUTILug = UserSimplePreferencesLugio.getDatasumUTILug() ?? 0;
    widget.sumISTLug = UserSimplePreferencesLugio.getDatasumISTLug() ?? 0;
    widget.sumDIVLug = UserSimplePreferencesLugio.getDatasumDIVLug() ?? 0;
    widget.sumRISAgo = UserSimplePreferencesAgosto.getDatasumRISAgo() ?? 0;
    widget.sumDELAgo = UserSimplePreferencesAgosto.getDatasumDELAgo() ?? 0;
    widget.sumSANAgo = UserSimplePreferencesAgosto.getDatasumSANAgo() ?? 0;
    widget.sumAPPAgo = UserSimplePreferencesAgosto.getDatasumAPPAgo() ?? 0;
    widget.sumRISAgo = UserSimplePreferencesAgosto.getDatasumRISAgo() ?? 0;
    widget.sumSPEAgo = UserSimplePreferencesAgosto.getDatasumSPEAgo() ?? 0;
    widget.sumUTIAgo = UserSimplePreferencesAgosto.getDatasumUTIAgo() ?? 0;
    widget.sumISTAgo = UserSimplePreferencesAgosto.getDatasumISTAgo() ?? 0;
    widget.sumDIVAgo = UserSimplePreferencesAgosto.getDatasumDIVAgo() ?? 0;
    widget.sumRISSet = UserSimplePreferencesSettembre.getDatasumRISSet() ?? 0;
    widget.sumDELSet = UserSimplePreferencesSettembre.getDatasumDELSet() ?? 0;
    widget.sumSANSet = UserSimplePreferencesSettembre.getDatasumSANSet() ?? 0;
    widget.sumAPPSet = UserSimplePreferencesSettembre.getDatasumAPPSet() ?? 0;
    widget.sumRISSet = UserSimplePreferencesSettembre.getDatasumRISSet() ?? 0;
    widget.sumSPESet = UserSimplePreferencesSettembre.getDatasumSPESet() ?? 0;
    widget.sumUTISet = UserSimplePreferencesSettembre.getDatasumUTISet() ?? 0;
    widget.sumISTSet = UserSimplePreferencesSettembre.getDatasumISTSet() ?? 0;
    widget.sumDIVSet = UserSimplePreferencesSettembre.getDatasumDIVSet() ?? 0;
    widget.sumRISOtt = UserSimplePreferencesOttobre.getDatasumRISOtt() ?? 0;
    widget.sumDELOtt = UserSimplePreferencesOttobre.getDatasumDELOtt() ?? 0;
    widget.sumSANOtt = UserSimplePreferencesOttobre.getDatasumSANOtt() ?? 0;
    widget.sumAPPOtt = UserSimplePreferencesOttobre.getDatasumAPPOtt() ?? 0;
    widget.sumRISOtt = UserSimplePreferencesOttobre.getDatasumRISOtt() ?? 0;
    widget.sumSPEOtt = UserSimplePreferencesOttobre.getDatasumSPEOtt() ?? 0;
    widget.sumUTIOtt = UserSimplePreferencesOttobre.getDatasumUTIOtt() ?? 0;
    widget.sumISTOtt = UserSimplePreferencesOttobre.getDatasumISTOtt() ?? 0;
    widget.sumDIVOtt = UserSimplePreferencesOttobre.getDatasumDIVOtt() ?? 0;
    widget.sumRISNov = UserSimplePreferencesNovembre.getDatasumRISNov() ?? 0;
    widget.sumDELNov = UserSimplePreferencesNovembre.getDatasumDELNov() ?? 0;
    widget.sumSANNov = UserSimplePreferencesNovembre.getDatasumSANNov() ?? 0;
    widget.sumAPPNov = UserSimplePreferencesNovembre.getDatasumAPPNov() ?? 0;
    widget.sumRISNov = UserSimplePreferencesNovembre.getDatasumRISNov() ?? 0;
    widget.sumSPENov = UserSimplePreferencesNovembre.getDatasumSPENov() ?? 0;
    widget.sumUTINov = UserSimplePreferencesNovembre.getDatasumUTINov() ?? 0;
    widget.sumISTNov = UserSimplePreferencesNovembre.getDatasumISTNov() ?? 0;
    widget.sumDIVNov = UserSimplePreferencesNovembre.getDatasumDIVNov() ?? 0;
    widget.sumRISDic = UserSimplePreferencesDicembre.getDatasumRISDic() ?? 0;
    widget.sumDELDic = UserSimplePreferencesDicembre.getDatasumDELDic() ?? 0;
    widget.sumSANDic = UserSimplePreferencesDicembre.getDatasumSANDic() ?? 0;
    widget.sumAPPDic = UserSimplePreferencesDicembre.getDatasumAPPDic() ?? 0;
    widget.sumRISDic = UserSimplePreferencesDicembre.getDatasumRISDic() ?? 0;
    widget.sumSPEDic = UserSimplePreferencesDicembre.getDatasumSPEDic() ?? 0;
    widget.sumUTIDic = UserSimplePreferencesDicembre.getDatasumUTIDic() ?? 0;
    widget.sumISTDic = UserSimplePreferencesDicembre.getDatasumISTDic() ?? 0;
    widget.sumDIVDic = UserSimplePreferencesDicembre.getDatasumDIVDic() ?? 0;
  }

  late var totalRIS = widget.sumRIS +
      widget.sumRISFeb +
      widget.sumRISMar +
      widget.sumRISApr +
      widget.sumRISMag +
      widget.sumRISGiu +
      widget.sumRISLug +
      widget.sumRISAgo +
      widget.sumRISSet +
      widget.sumRISOtt +
      widget.sumRISNov +
      widget.sumRISDic;

  late var totalDEL = widget.sumDEL +
      widget.sumDELFeb +
      widget.sumDELMar +
      widget.sumDELApr +
      widget.sumDELMag +
      widget.sumDELGiu +
      widget.sumDELLug +
      widget.sumDELAgo +
      widget.sumDELSet +
      widget.sumDELOtt +
      widget.sumDELNov +
      widget.sumDELDic;

  late var totalSPE = widget.sumSPE +
      widget.sumSPEFeb +
      widget.sumSPEMar +
      widget.sumSPEApr +
      widget.sumSPEMag +
      widget.sumSPEGiu +
      widget.sumSPELug +
      widget.sumSPEAgo +
      widget.sumSPESet +
      widget.sumSPEOtt +
      widget.sumSPENov +
      widget.sumSPEDic;

  late var totalSAN = widget.sumSAN +
      widget.sumSANFeb +
      widget.sumSANMar +
      widget.sumSANApr +
      widget.sumSANMag +
      widget.sumSANGiu +
      widget.sumSANLug +
      widget.sumSANAgo +
      widget.sumSANSet +
      widget.sumSANOtt +
      widget.sumSANNov +
      widget.sumSANDic;

  late var totalIST = widget.sumIST +
      widget.sumISTFeb +
      widget.sumISTMar +
      widget.sumISTApr +
      widget.sumISTMag +
      widget.sumISTGiu +
      widget.sumISTLug +
      widget.sumISTAgo +
      widget.sumISTSet +
      widget.sumISTOtt +
      widget.sumISTNov +
      widget.sumISTDic;

  late var totalUTI = widget.sumUTI +
      widget.sumUTIFeb +
      widget.sumUTIMar +
      widget.sumUTIApr +
      widget.sumUTIMag +
      widget.sumUTIGiu +
      widget.sumUTILug +
      widget.sumUTIAgo +
      widget.sumUTISet +
      widget.sumUTIOtt +
      widget.sumUTINov +
      widget.sumUTIDic;

  late var totalDIV = widget.sumDIV +
      widget.sumDIVFeb +
      widget.sumDIVMar +
      widget.sumDIVApr +
      widget.sumDIVMag +
      widget.sumDIVGiu +
      widget.sumDIVLug +
      widget.sumDIVAgo +
      widget.sumDIVSet +
      widget.sumDIVOtt +
      widget.sumDIVNov +
      widget.sumDIVDic;

  late var totalAPP = widget.sumAPP +
      widget.sumAPPFeb +
      widget.sumAPPMar +
      widget.sumAPPApr +
      widget.sumAPPMag +
      widget.sumAPPGiu +
      widget.sumAPPLug +
      widget.sumAPPAgo +
      widget.sumAPPSet +
      widget.sumAPPOtt +
      widget.sumAPPNov +
      widget.sumAPPDic;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text("Serie Storiche"),
        ),
        body: SingleChildScrollView(
            child: Container(
          child: Center(
            child: Column(children: [
              const SizedBox(height: 15),
              /*SizedBox(
                  height: 40,
                  child: TextButton(
                      onPressed: () async {
                        await UsertotaliExpense.setDatatotalAPP(totalAPP);
                        await UsertotaliExpense.setDatatotalRIS(totalRIS);
                        await UsertotaliExpense.setDatatotalDEL(totalDEL);
                        await UsertotaliExpense.setDatatotalSAN(totalSAN);
                        await UsertotaliExpense.setDatatotalDIV(totalDIV);
                        await UsertotaliExpense.setDatatotalIST(totalIST);
                        await UsertotaliExpense.setDatatotalUTI(totalUTI);
                        await UsertotaliExpense.setDatatotalSPE(totalSPE);
                      },
                      child: const Text('Salva'))),*/
              const SizedBox(height: 5),
              TimeSeriesWidget(text: '''La tua serie storica per il RISTORANTE é
                        Gennaio: ${widget.sumRIS}
                        Febbraio: ${widget.sumRISFeb}
                        Marzo: ${widget.sumRISMar}
                        Aprile: ${widget.sumRISApr}
                        Maggio: ${widget.sumRISMag}
                        Giugno: ${widget.sumRISGiu}
                        Luglio: ${widget.sumRISLug}
                        Agosto: ${widget.sumRISAgo}
                        Settembre: ${widget.sumRISSet}
                        Ottobre: ${widget.sumRISOtt}
                        Novembre: ${widget.sumRISNov}
                        Dicembre: ${widget.sumRISDic}
                      
La spesa totale di Gennaio ammonta a: $totalRIS
                        '''),
              const SizedBox(height: 15),
              TimeSeriesWidget(text: '''La tua serie storica per il Bar é
                        Gennaio: ${widget.sumDEL}
                        Febbraio: ${widget.sumDELFeb}
                        Marzo: ${widget.sumDELMar}
                        Aprile: ${widget.sumDELApr}
                        Maggio: ${widget.sumDELMag}
                        Giugno: ${widget.sumDELGiu}
                        Luglio: ${widget.sumDELLug}
                        Agosto: ${widget.sumDELAgo}
                        Settembre: ${widget.sumDELSet}
                        Ottobre: ${widget.sumDELOtt}
                        Novembre: ${widget.sumDELNov}
                        Dicembre: ${widget.sumDELDic}
                      
La spesa totale di Gennaio ammonta a: $totalDEL
                        '''),
              const SizedBox(height: 15),
              TimeSeriesWidget(text: '''La tua serie storica per la SANITÀ é
                        Gennaio: ${widget.sumSAN}
                        Febbraio: ${widget.sumSANFeb}
                        Marzo: ${widget.sumSANMar}
                        Aprile: ${widget.sumSANApr}
                        Maggio: ${widget.sumSANMag}
                        Giugno: ${widget.sumSANGiu}
                        Luglio: ${widget.sumSANLug}
                        Agosto: ${widget.sumSANAgo}
                        Settembre: ${widget.sumSANSet}
                        Ottobre: ${widget.sumSANOtt}
                        Novembre: ${widget.sumSANNov}
                        Dicembre: ${widget.sumSANDic}
                      
La spesa totale di Gennaio ammonta a: $totalSAN
                        '''),
              const SizedBox(height: 15),
              TimeSeriesWidget(text: '''La tua serie storica per l'UTILITY é
                        Gennaio: ${widget.sumUTI}
                        Febbraio: ${widget.sumUTIFeb}
                        Marzo: ${widget.sumUTIMar}
                        Aprile: ${widget.sumUTIApr}
                        Maggio: ${widget.sumUTIMag}
                        Giugno: ${widget.sumUTIGiu}
                        Luglio: ${widget.sumUTILug}
                        Agosto: ${widget.sumUTIAgo}
                        Settembre: ${widget.sumUTISet}
                        Ottobre: ${widget.sumUTIOtt}
                        Novembre: ${widget.sumUTINov}
                        Dicembre: ${widget.sumUTIDic}
                      
La spesa totale di Gennaio ammonta a: $totalUTI
                        '''),
              const SizedBox(height: 15),
              TimeSeriesWidget(text: '''La tua serie storica per APPAREL é
                        Gennaio: ${widget.sumAPP}
                        Febbraio: ${widget.sumAPPFeb}
                        Marzo: ${widget.sumAPPMar}
                        Aprile: ${widget.sumAPPApr}
                        Maggio: ${widget.sumAPPMag}
                        Giugno: ${widget.sumAPPGiu}
                        Luglio: ${widget.sumAPPLug}
                        Agosto: ${widget.sumAPPAgo}
                        Settembre: ${widget.sumAPPSet}
                        Ottobre: ${widget.sumAPPOtt}
                        Novembre: ${widget.sumAPPNov}
                        Dicembre: ${widget.sumAPPDic}
                      
La spesa totale di Gennaio ammonta a: $totalAPP 
                        '''),
              const SizedBox(height: 15),
              TimeSeriesWidget(
                  text: '''La tua serie storica per il DIVERTIMENTO é
                        Gennaio: ${widget.sumDIV}
                        Febbraio: ${widget.sumDIVFeb}
                        Marzo: ${widget.sumDIVMar}
                        Aprile: ${widget.sumDIVApr}
                        Maggio: ${widget.sumDIVMag}
                        Giugno: ${widget.sumDIVGiu}
                        Luglio: ${widget.sumDIVLug}
                        Agosto: ${widget.sumDIVAgo}
                        Settembre: ${widget.sumDIVSet}
                        Ottobre: ${widget.sumDIVOtt}
                        Novembre: ${widget.sumDIVNov}
                        Dicembre: ${widget.sumDIVDic}
                      
La spesa totale di Gennaio ammonta a: $totalDIV
                        '''),
              const SizedBox(height: 15),
              TimeSeriesWidget(text: '''La tua serie storica per la SPESA é
                        Gennaio: ${widget.sumSPE}
                        Febbraio: ${widget.sumSPEFeb}
                        Marzo: ${widget.sumSPEMar}
                        Aprile: ${widget.sumSPEApr}
                        Maggio: ${widget.sumSPEMag}
                        Giugno: ${widget.sumSPEGiu}
                        Luglio: ${widget.sumSPELug}
                        Agosto: ${widget.sumSPEAgo}
                        Settembre: ${widget.sumSPESet}
                        Ottobre: ${widget.sumSPEOtt}
                        Novembre: ${widget.sumSPENov}
                        Dicembre: ${widget.sumSPEDic}
                      
La spesa totale di Gennaio ammonta a: $totalSPE
                        '''),
              const SizedBox(height: 15),
              TimeSeriesWidget(text: '''La tua serie storica per l'ISTRUZIONE é
                        Gennaio: ${widget.sumIST}
                        Febbraio: ${widget.sumISTFeb}
                        Marzo: ${widget.sumISTMar}
                        Aprile: ${widget.sumISTApr}
                        Maggio: ${widget.sumISTMag}
                        Giugno: ${widget.sumISTGiu}
                        Luglio: ${widget.sumISTLug}
                        Agosto: ${widget.sumISTAgo}
                        Settembre: ${widget.sumISTSet}
                        Ottobre: ${widget.sumISTOtt}
                        Novembre: ${widget.sumISTNov}
                        Dicembre: ${widget.sumISTDic}
                      
La spesa totale di Gennaio ammonta a: $totalIST
                        '''),
              const SizedBox(height: 100),
            ]),
          ),
        )));
  }
}
