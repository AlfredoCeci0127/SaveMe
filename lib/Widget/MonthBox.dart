import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/Widget/MonthSeriesBox.dart';
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
import 'package:intl/intl.dart';
import 'TimeSeriesWidget.dart';
import 'UserPreferences/UserSimplePreferences.dart';

class MonthBox extends StatefulWidget {
  const MonthBox({Key? key}) : super(key: key);

  @override
  State<MonthBox> createState() => _MonthBoxState();
}

class _MonthBoxState extends State<MonthBox> {
  static final DateTime now = DateTime.now();
  static final forma = DateFormat("yyyy-MM-dd");
  static String Mese = forma.format(now);
  static String SQMese = Mese.substring(5, 7);
  static List Mesi = [
    "Gennaio",
    "Febbraio",
    "Marzo",
    "Aprile",
    "Maggio",
    "Giugno",
    "Luglio",
    "Agosto",
    "Settembre",
    "Ottobre",
    "Novembre",
    "Dicembre",
    "Gennaio",
    "Febbraio",
    "Marzo",
    "Aprile",
    "Maggio",
    "Giugno",
    "Luglio",
    "Agosto",
    "Settembre",
    "Ottobre",
    "Novembre",
    "Dicembre"
  ];
  static int NQMese = int.parse(SQMese);
  @override
  Widget build(BuildContext context) {
    if (NQMese == 1) {
      return GennaioBox(
          sumRIS: 0,
          sumDIV: 0,
          sumAPP: 0,
          sumSPE: 0,
          sumUTI: 0,
          sumIST: 0,
          sumSAN: 0,
          sumDEL: 0);
    } else if (NQMese == 2) {
      return FebbraioBox(
          sumRISFeb: 0,
          sumDIVFeb: 0,
          sumAPPFeb: 0,
          sumSPEFeb: 0,
          sumUTIFeb: 0,
          sumISTFeb: 0,
          sumSANFeb: 0,
          sumDELFeb: 0);
    } else if (NQMese == 3) {
      return MarzoBox(
          sumRISMar: 0,
          sumSANMar: 0,
          sumDIVMar: 0,
          sumSPEMar: 0,
          sumUTIMar: 0,
          sumISTMar: 0,
          sumDELMar: 0,
          sumAPPMar: 0);
    } else if (NQMese == 4) {
      return AprileBox(
          sumRISApr: 0,
          sumDIVApr: 0,
          sumAPPApr: 0,
          sumSPEApr: 0,
          sumUTIApr: 0,
          sumISTApr: 0,
          sumSANApr: 0,
          sumDELApr: 0);
    } else if (NQMese == 5) {
      return MaggioBox(
          sumRISMag: 0,
          sumDIVMag: 0,
          sumAPPMag: 0,
          sumSPEMag: 0,
          sumUTIMag: 0,
          sumISTMag: 0,
          sumSANMag: 0,
          sumDELMag: 0);
    } else if (NQMese == 6) {
      return GiugnoBox(
          sumRISGiu: 0,
          sumDIVGiu: 0,
          sumAPPGiu: 0,
          sumSPEGiu: 0,
          sumUTIGiu: 0,
          sumISTGiu: 0,
          sumSANGiu: 0,
          sumDELGiu: 0);
    } else if (NQMese == 7) {
      return LuglioBox(
          sumRISLug: 0,
          sumDIVLug: 0,
          sumAPPLug: 0,
          sumSPELug: 0,
          sumUTILug: 0,
          sumISTLug: 0,
          sumSANLug: 0,
          sumDELLug: 0);
    } else if (NQMese == 8) {
      return AgostoBox(
          sumRISAgo: 0,
          sumDIVAgo: 0,
          sumAPPAgo: 0,
          sumSPEAgo: 0,
          sumUTIAgo: 0,
          sumISTAgo: 0,
          sumSANAgo: 0,
          sumDELAgo: 0);
    } else if (NQMese == 9) {
      return SettembreBox(
          sumRISSet: 0,
          sumDIVSet: 0,
          sumAPPSet: 0,
          sumSPESet: 0,
          sumUTISet: 0,
          sumISTSet: 0,
          sumSANSet: 0,
          sumDELSet: 0);
    } else if (NQMese == 10) {
      return OttobreBox(
          sumRISOtt: 0,
          sumDIVOtt: 0,
          sumAPPOtt: 0,
          sumSPEOtt: 0,
          sumUTIOtt: 0,
          sumISTOtt: 0,
          sumSANOtt: 0,
          sumDELOtt: 0);
    } else if (NQMese == 11) {
      return NovembreBox(
          sumRISNov: 0,
          sumDIVNov: 0,
          sumAPPNov: 0,
          sumSPENov: 0,
          sumUTINov: 0,
          sumISTNov: 0,
          sumSANNov: 0,
          sumDELNov: 0);
    } else {
      return DicembreBox(
          sumRISDic: 0,
          sumDIVDic: 0,
          sumAPPDic: 0,
          sumSPEDic: 0,
          sumUTIDic: 0,
          sumISTDic: 0,
          sumSANDic: 0,
          sumDELDic: 0);
    }
  }
}

class GennaioBox extends StatefulWidget {
  int sumRIS;
  int sumSAN;
  int sumSPE;
  int sumAPP;
  int sumDEL;
  int sumUTI;
  int sumIST;
  int sumDIV;
  GennaioBox({
    Key? key,
    required this.sumRIS,
    required this.sumDIV,
    required this.sumAPP,
    required this.sumSPE,
    required this.sumUTI,
    required this.sumIST,
    required this.sumSAN,
    required this.sumDEL,
  }) : super(key: key);

  @override
  State<GennaioBox> createState() => _GennaioBoxState();
}

class _GennaioBoxState extends State<GennaioBox> {
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
  }

  late var totalGen = widget.sumRIS +
      widget.sumDEL +
      widget.sumSAN +
      widget.sumAPP +
      widget.sumSPE +
      widget.sumUTI +
      widget.sumIST +
      widget.sumDIV;

  @override
  Widget build(BuildContext context) {
    return MonthSeriesBox(
        month_color: Colors.red[800],
        text_month: 'Gennaio:',
        text1: '''

Ristorante: ${widget.sumRIS}
Bar: ${widget.sumDEL}
Sanità: ${widget.sumSAN}
Apparel: ${widget.sumAPP}
Spesa: ${widget.sumSPE}
Divertimento: ${widget.sumDIV}
Utilities: ${widget.sumUTI}
Istruzione: ${widget.sumIST}''',
        text2: "\n\nLa spesa totale di Gennaio ammonta a: $totalGen");
  }
}

class FebbraioBox extends StatefulWidget {
  int sumRISFeb;
  int sumSANFeb;
  int sumSPEFeb;
  int sumAPPFeb;
  int sumDELFeb;
  int sumUTIFeb;
  int sumISTFeb;
  int sumDIVFeb;
  FebbraioBox({
    Key? key,
    required this.sumRISFeb,
    required this.sumDIVFeb,
    required this.sumAPPFeb,
    required this.sumSPEFeb,
    required this.sumUTIFeb,
    required this.sumISTFeb,
    required this.sumSANFeb,
    required this.sumDELFeb,
  }) : super(key: key);

  @override
  State<FebbraioBox> createState() => _FebbraioBoxState();
}

class _FebbraioBoxState extends State<FebbraioBox> {
  @override
  void initState() {
    super.initState();
    widget.sumRISFeb = UserSimplePreferencesFebbraio.getDatasumRISFeb() ?? 0;
    widget.sumDELFeb = UserSimplePreferencesFebbraio.getDatasumDELFeb() ?? 0;
    widget.sumSANFeb = UserSimplePreferencesFebbraio.getDatasumSANFeb() ?? 0;
    widget.sumAPPFeb = UserSimplePreferencesFebbraio.getDatasumAPPFeb() ?? 0;
    widget.sumSPEFeb = UserSimplePreferencesFebbraio.getDatasumSPEFeb() ?? 0;
    widget.sumUTIFeb = UserSimplePreferencesFebbraio.getDatasumUTIFeb() ?? 0;
    widget.sumISTFeb = UserSimplePreferencesFebbraio.getDatasumISTFeb() ?? 0;
    widget.sumDIVFeb = UserSimplePreferencesFebbraio.getDatasumDIVFeb() ?? 0;
  }

  late var totalFeb = widget.sumRISFeb +
      widget.sumDELFeb +
      widget.sumSANFeb +
      widget.sumAPPFeb +
      widget.sumSPEFeb +
      widget.sumUTIFeb +
      widget.sumISTFeb +
      widget.sumDIVFeb;

  @override
  Widget build(BuildContext context) {
    return MonthSeriesBox(
        month_color: Colors.purple[600],
        text_month: 'Febbraio:',
        text1: '''

Ristorante: ${widget.sumRISFeb}
Bar: ${widget.sumDELFeb}
Sanità: ${widget.sumSANFeb}
Apparel: ${widget.sumAPPFeb}
Spesa: ${widget.sumSPEFeb}
Divertimento: ${widget.sumDIVFeb}
Utilities: ${widget.sumUTIFeb}
Istruzione: ${widget.sumISTFeb}''',
        text2: "\n\nLa spesa totale di Febbraio ammonta a: $totalFeb");
  }
}

class MarzoBox extends StatefulWidget {
  int sumRISMar;
  int sumSANMar;
  int sumSPEMar;
  int sumDELMar;
  int sumAPPMar;
  int sumUTIMar;
  int sumISTMar;
  int sumDIVMar;
  MarzoBox({
    Key? key,
    required this.sumRISMar,
    required this.sumSANMar,
    required this.sumDIVMar,
    required this.sumSPEMar,
    required this.sumUTIMar,
    required this.sumISTMar,
    required this.sumDELMar,
    required this.sumAPPMar,
  }) : super(key: key);

  @override
  State<MarzoBox> createState() => _MarzoBoxState();
}

class _MarzoBoxState extends State<MarzoBox> {
  @override
  void initState() {
    super.initState();
    widget.sumRISMar = UserSimplePreferencesMarzo.getDatasumRISMar() ?? 0;
    widget.sumDELMar = UserSimplePreferencesMarzo.getDatasumDELMar() ?? 0;
    widget.sumSANMar = UserSimplePreferencesMarzo.getDatasumSANMar() ?? 0;
    widget.sumAPPMar = UserSimplePreferencesMarzo.getDatasumAPPMar() ?? 0;
    widget.sumSPEMar = UserSimplePreferencesMarzo.getDatasumSPEMar() ?? 0;
    widget.sumUTIMar = UserSimplePreferencesMarzo.getDatasumUTIMar() ?? 0;
    widget.sumISTMar = UserSimplePreferencesMarzo.getDatasumISTMar() ?? 0;
    widget.sumDIVMar = UserSimplePreferencesMarzo.getDatasumDIVMar() ?? 0;
  }

  late var totalMar = widget.sumRISMar +
      widget.sumDELMar +
      widget.sumSANMar +
      widget.sumAPPMar +
      widget.sumSPEMar +
      widget.sumUTIMar +
      widget.sumISTMar +
      widget.sumDIVMar;

  @override
  Widget build(BuildContext context) {
    return MonthSeriesBox(
        month_color: Colors.lightBlue,
        text_month: 'Marzo:',
        text1: '''

Ristorante: ${widget.sumRISMar}
Bar: ${widget.sumDELMar}
Sanità: ${widget.sumSANMar}
Apparel: ${widget.sumAPPMar}
Spesa: ${widget.sumSPEMar}
Divertimento: ${widget.sumDIVMar}
Utilities: ${widget.sumUTIMar}
Istruzione: ${widget.sumISTMar}''',
        text2: "\n\nLa spesa totale di Marzo ammonta a: $totalMar");
  }
}

class AprileBox extends StatefulWidget {
  int sumRISApr;
  int sumSANApr;
  int sumSPEApr;
  int sumDELApr;
  int sumAPPApr;
  int sumUTIApr;
  int sumISTApr;
  int sumDIVApr;
  AprileBox({
    Key? key,
    required this.sumRISApr,
    required this.sumDIVApr,
    required this.sumAPPApr,
    required this.sumSPEApr,
    required this.sumUTIApr,
    required this.sumISTApr,
    required this.sumSANApr,
    required this.sumDELApr,
  }) : super(key: key);

  @override
  State<AprileBox> createState() => _AprileBoxState();
}

class _AprileBoxState extends State<AprileBox> {
  @override
  void initState() {
    super.initState();
    widget.sumRISApr = UserSimplePreferencesAprile.getDatasumRISApr() ?? 0;
    widget.sumDELApr = UserSimplePreferencesAprile.getDatasumDELApr() ?? 0;
    widget.sumSANApr = UserSimplePreferencesAprile.getDatasumSANApr() ?? 0;
    widget.sumAPPApr = UserSimplePreferencesAprile.getDatasumAPPApr() ?? 0;
    widget.sumSPEApr = UserSimplePreferencesAprile.getDatasumSPEApr() ?? 0;
    widget.sumUTIApr = UserSimplePreferencesAprile.getDatasumUTIApr() ?? 0;
    widget.sumISTApr = UserSimplePreferencesAprile.getDatasumISTApr() ?? 0;
    widget.sumDIVApr = UserSimplePreferencesAprile.getDatasumDIVApr() ?? 0;
  }

  late var totalApr = widget.sumRISApr +
      widget.sumDELApr +
      widget.sumSANApr +
      widget.sumAPPApr +
      widget.sumSPEApr +
      widget.sumUTIApr +
      widget.sumISTApr +
      widget.sumDIVApr;

  @override
  Widget build(BuildContext context) {
    return MonthSeriesBox(
        month_color: Colors.white60,
        text_month: 'Aprile:',
        text1: '''

Ristorante: ${widget.sumRISApr}
Bar: ${widget.sumDELApr}
Sanità: ${widget.sumSANApr}
Apparel: ${widget.sumAPPApr}
Spesa: ${widget.sumSPEApr}
Divertimento: ${widget.sumDIVApr}
Utilities: ${widget.sumUTIApr}
Istruzione: ${widget.sumISTApr}''',
        text2: "\n\nLa spesa totale di Aprile ammonta a: $totalApr");
  }
}

class MaggioBox extends StatefulWidget {
  int sumRISMag;
  int sumSANMag;
  int sumSPEMag;
  int sumDELMag;
  int sumAPPMag;
  int sumUTIMag;
  int sumISTMag;
  int sumDIVMag;
  MaggioBox({
    Key? key,
    required this.sumRISMag,
    required this.sumDIVMag,
    required this.sumAPPMag,
    required this.sumSPEMag,
    required this.sumUTIMag,
    required this.sumISTMag,
    required this.sumSANMag,
    required this.sumDELMag,
  }) : super(key: key);

  @override
  State<MaggioBox> createState() => _MaggioBoxState();
}

class _MaggioBoxState extends State<MaggioBox> {
  @override
  void initState() {
    super.initState();
    widget.sumRISMag = UserSimplePreferencesMaggio.getDatasumRISMag() ?? 0;
    widget.sumDELMag = UserSimplePreferencesMaggio.getDatasumDELMag() ?? 0;
    widget.sumSANMag = UserSimplePreferencesMaggio.getDatasumSANMag() ?? 0;
    widget.sumAPPMag = UserSimplePreferencesMaggio.getDatasumAPPMag() ?? 0;
    widget.sumSPEMag = UserSimplePreferencesMaggio.getDatasumSPEMag() ?? 0;
    widget.sumUTIMag = UserSimplePreferencesMaggio.getDatasumUTIMag() ?? 0;
    widget.sumISTMag = UserSimplePreferencesMaggio.getDatasumISTMag() ?? 0;
    widget.sumDIVMag = UserSimplePreferencesMaggio.getDatasumDIVMag() ?? 0;
  }

  late var totalMag = widget.sumRISMag +
      widget.sumDELMag +
      widget.sumSANMag +
      widget.sumAPPMag +
      widget.sumSPEMag +
      widget.sumUTIMag +
      widget.sumISTMag +
      widget.sumDIVMag;

  @override
  Widget build(BuildContext context) {
    return MonthSeriesBox(
        month_color: Colors.green[900],
        text_month: 'Maggio:',
        text1: '''

Ristorante: ${widget.sumRISMag}
Bar: ${widget.sumDELMag}
Sanità: ${widget.sumSANMag}
Apparel: ${widget.sumAPPMag}
Spesa: ${widget.sumSPEMag}
Divertimento: ${widget.sumDIVMag}
Utilities: ${widget.sumUTIMag}
Istruzione: ${widget.sumISTMag}''',
        text2: "\n\nLa spesa totale di Maggio ammonta a: $totalMag");
  }
}

class GiugnoBox extends StatefulWidget {
  int sumRISGiu;
  int sumSANGiu;
  int sumSPEGiu;
  int sumDELGiu;
  int sumAPPGiu;
  int sumUTIGiu;
  int sumISTGiu;
  int sumDIVGiu;
  GiugnoBox({
    Key? key,
    required this.sumRISGiu,
    required this.sumDIVGiu,
    required this.sumAPPGiu,
    required this.sumSPEGiu,
    required this.sumUTIGiu,
    required this.sumISTGiu,
    required this.sumSANGiu,
    required this.sumDELGiu,
  }) : super(key: key);

  @override
  State<GiugnoBox> createState() => _GiugnoBoxState();
}

class _GiugnoBoxState extends State<GiugnoBox> {
  @override
  void initState() {
    super.initState();
    widget.sumRISGiu = UserSimplePreferencesGiugno.getDatasumRISGiu() ?? 0;
    widget.sumDELGiu = UserSimplePreferencesGiugno.getDatasumDELGiu() ?? 0;
    widget.sumSANGiu = UserSimplePreferencesGiugno.getDatasumSANGiu() ?? 0;
    widget.sumAPPGiu = UserSimplePreferencesGiugno.getDatasumAPPGiu() ?? 0;
    widget.sumSPEGiu = UserSimplePreferencesGiugno.getDatasumSPEGiu() ?? 0;
    widget.sumUTIGiu = UserSimplePreferencesGiugno.getDatasumUTIGiu() ?? 0;
    widget.sumISTGiu = UserSimplePreferencesGiugno.getDatasumISTGiu() ?? 0;
    widget.sumDIVGiu = UserSimplePreferencesGiugno.getDatasumDIVGiu() ?? 0;
  }

  late var totalGiu = widget.sumRISGiu +
      widget.sumDELGiu +
      widget.sumSANGiu +
      widget.sumAPPGiu +
      widget.sumSPEGiu +
      widget.sumUTIGiu +
      widget.sumISTGiu +
      widget.sumDIVGiu;

  @override
  Widget build(BuildContext context) {
    return MonthSeriesBox(
        month_color: Colors.purpleAccent[100],
        text_month: 'Giugno:',
        text1: '''

Ristorante: ${widget.sumRISGiu}
Bar: ${widget.sumDELGiu}
Sanità: ${widget.sumSANGiu}
Apparel: ${widget.sumAPPGiu}
Spesa: ${widget.sumSPEGiu}
Divertimento: ${widget.sumDIVGiu}
Utilities: ${widget.sumUTIGiu}
Istruzione: ${widget.sumISTGiu}''',
        text2: "\n\nLa spesa totale di Giugno ammonta a: $totalGiu");
  }
}

class LuglioBox extends StatefulWidget {
  int sumRISLug;
  int sumSANLug;
  int sumSPELug;
  int sumDELLug;
  int sumAPPLug;
  int sumUTILug;
  int sumISTLug;
  int sumDIVLug;
  LuglioBox({
    Key? key,
    required this.sumRISLug,
    required this.sumDIVLug,
    required this.sumAPPLug,
    required this.sumSPELug,
    required this.sumUTILug,
    required this.sumISTLug,
    required this.sumSANLug,
    required this.sumDELLug,
  }) : super(key: key);

  @override
  State<LuglioBox> createState() => _LuglioBoxState();
}

class _LuglioBoxState extends State<LuglioBox> {
  @override
  void initState() {
    super.initState();
    widget.sumRISLug = UserSimplePreferencesLugio.getDatasumRISLug() ?? 0;
    widget.sumDELLug = UserSimplePreferencesLugio.getDatasumDELLug() ?? 0;
    widget.sumSANLug = UserSimplePreferencesLugio.getDatasumSANLug() ?? 0;
    widget.sumAPPLug = UserSimplePreferencesLugio.getDatasumAPPLug() ?? 0;
    widget.sumSPELug = UserSimplePreferencesLugio.getDatasumSPELug() ?? 0;
    widget.sumUTILug = UserSimplePreferencesLugio.getDatasumUTILug() ?? 0;
    widget.sumISTLug = UserSimplePreferencesLugio.getDatasumISTLug() ?? 0;
    widget.sumDIVLug = UserSimplePreferencesLugio.getDatasumDIVLug() ?? 0;
  }

  late var totalLug = widget.sumRISLug +
      widget.sumDELLug +
      widget.sumSANLug +
      widget.sumAPPLug +
      widget.sumSPELug +
      widget.sumUTILug +
      widget.sumISTLug +
      widget.sumDIVLug;

  @override
  Widget build(BuildContext context) {
    return MonthSeriesBox(
        month_color: Colors.red[700],
        text_month: 'Luglio:',
        text1: '''

\nRistorante: ${widget.sumRISLug}
Bar: ${widget.sumDELLug}
Sanità: ${widget.sumSANLug}
Apparel: ${widget.sumAPPLug}
Spesa: ${widget.sumSPELug}
Divertimento: ${widget.sumDIVLug}
Utilities: ${widget.sumUTILug}
Istruzione: ${widget.sumISTLug}''',
        text2: "\n\nLa spesa totale di Luglio ammonta a: $totalLug");
  }
}

class AgostoBox extends StatefulWidget {
  int sumRISAgo;
  int sumSANAgo;
  int sumSPEAgo;
  int sumDELAgo;
  int sumAPPAgo;
  int sumUTIAgo;
  int sumISTAgo;
  int sumDIVAgo;
  AgostoBox({
    Key? key,
    required this.sumRISAgo,
    required this.sumDIVAgo,
    required this.sumAPPAgo,
    required this.sumSPEAgo,
    required this.sumUTIAgo,
    required this.sumISTAgo,
    required this.sumSANAgo,
    required this.sumDELAgo,
  }) : super(key: key);

  @override
  State<AgostoBox> createState() => _AgostoBoxState();
}

class _AgostoBoxState extends State<AgostoBox> {
  @override
  void initState() {
    super.initState();
    widget.sumRISAgo = UserSimplePreferencesAgosto.getDatasumRISAgo() ?? 0;
    widget.sumDELAgo = UserSimplePreferencesAgosto.getDatasumDELAgo() ?? 0;
    widget.sumSANAgo = UserSimplePreferencesAgosto.getDatasumSANAgo() ?? 0;
    widget.sumAPPAgo = UserSimplePreferencesAgosto.getDatasumAPPAgo() ?? 0;
    widget.sumSPEAgo = UserSimplePreferencesAgosto.getDatasumSPEAgo() ?? 0;
    widget.sumUTIAgo = UserSimplePreferencesAgosto.getDatasumUTIAgo() ?? 0;
    widget.sumISTAgo = UserSimplePreferencesAgosto.getDatasumISTAgo() ?? 0;
    widget.sumDIVAgo = UserSimplePreferencesAgosto.getDatasumDIVAgo() ?? 0;
  }

  late var totalAgo = widget.sumRISAgo +
      widget.sumDELAgo +
      widget.sumSANAgo +
      widget.sumAPPAgo +
      widget.sumSPEAgo +
      widget.sumUTIAgo +
      widget.sumISTAgo +
      widget.sumDIVAgo;

  @override
  Widget build(BuildContext context) {
    return MonthSeriesBox(
        month_color: Colors.lightGreen,
        text_month: 'Agosto:',
        text1: '''

Ristorante: ${widget.sumRISAgo}
Bar: ${widget.sumDELAgo}
Sanità: ${widget.sumSANAgo}
Apparel: ${widget.sumAPPAgo}
Spesa: ${widget.sumSPEAgo}
Divertimento: ${widget.sumDIVAgo}
Utilities: ${widget.sumUTIAgo}
Istruzione: ${widget.sumISTAgo}''',
        text2: "\n\nLa spesa totale di Agosto ammonta a: $totalAgo");
  }
}

class SettembreBox extends StatefulWidget {
  int sumRISSet;
  int sumSANSet;
  int sumSPESet;
  int sumDELSet;
  int sumAPPSet;
  int sumUTISet;
  int sumISTSet;
  int sumDIVSet;
  SettembreBox({
    Key? key,
    required this.sumRISSet,
    required this.sumDIVSet,
    required this.sumAPPSet,
    required this.sumSPESet,
    required this.sumUTISet,
    required this.sumISTSet,
    required this.sumSANSet,
    required this.sumDELSet,
  }) : super(key: key);

  @override
  State<SettembreBox> createState() => _SettembreBoxState();
}

class _SettembreBoxState extends State<SettembreBox> {
  @override
  void initState() {
    super.initState();
    widget.sumRISSet = UserSimplePreferencesSettembre.getDatasumRISSet() ?? 0;
    widget.sumDELSet = UserSimplePreferencesSettembre.getDatasumDELSet() ?? 0;
    widget.sumSANSet = UserSimplePreferencesSettembre.getDatasumSANSet() ?? 0;
    widget.sumAPPSet = UserSimplePreferencesSettembre.getDatasumAPPSet() ?? 0;
    widget.sumSPESet = UserSimplePreferencesSettembre.getDatasumSPESet() ?? 0;
    widget.sumUTISet = UserSimplePreferencesSettembre.getDatasumUTISet() ?? 0;
    widget.sumISTSet = UserSimplePreferencesSettembre.getDatasumISTSet() ?? 0;
    widget.sumDIVSet = UserSimplePreferencesSettembre.getDatasumDIVSet() ?? 0;
  }

  late var totalSet = widget.sumRISSet +
      widget.sumDELSet +
      widget.sumSANSet +
      widget.sumAPPSet +
      widget.sumSPESet +
      widget.sumUTISet +
      widget.sumISTSet +
      widget.sumDIVSet;

  @override
  Widget build(BuildContext context) {
    return MonthSeriesBox(
        month_color: Color.fromARGB(255, 65, 68, 100),
        text_month: 'Settembre:',
        text1: '''

Ristorante: ${widget.sumRISSet}
Bar: ${widget.sumDELSet}
Sanità: ${widget.sumSANSet}
Apparel: ${widget.sumAPPSet}
Spesa: ${widget.sumSPESet}
Divertimento: ${widget.sumDIVSet}
Utilities: ${widget.sumUTISet}
Istruzione: ${widget.sumISTSet}''',
        text2: "\n\nLa spesa totale di Settembre ammonta a: $totalSet");
  }
}

class OttobreBox extends StatefulWidget {
  int sumRISOtt;
  int sumSANOtt;
  int sumSPEOtt;
  int sumDELOtt;
  int sumAPPOtt;
  int sumUTIOtt;
  int sumISTOtt;
  int sumDIVOtt;
  OttobreBox({
    Key? key,
    required this.sumRISOtt,
    required this.sumDIVOtt,
    required this.sumAPPOtt,
    required this.sumSPEOtt,
    required this.sumUTIOtt,
    required this.sumISTOtt,
    required this.sumSANOtt,
    required this.sumDELOtt,
  }) : super(key: key);

  @override
  State<OttobreBox> createState() => _OttobreBoxState();
}

class _OttobreBoxState extends State<OttobreBox> {
  @override
  void initState() {
    super.initState();
    widget.sumRISOtt = UserSimplePreferencesOttobre.getDatasumRISOtt() ?? 0;
    widget.sumDELOtt = UserSimplePreferencesOttobre.getDatasumDELOtt() ?? 0;
    widget.sumSANOtt = UserSimplePreferencesOttobre.getDatasumSANOtt() ?? 0;
    widget.sumAPPOtt = UserSimplePreferencesOttobre.getDatasumAPPOtt() ?? 0;
    widget.sumSPEOtt = UserSimplePreferencesOttobre.getDatasumSPEOtt() ?? 0;
    widget.sumUTIOtt = UserSimplePreferencesOttobre.getDatasumUTIOtt() ?? 0;
    widget.sumISTOtt = UserSimplePreferencesOttobre.getDatasumISTOtt() ?? 0;
    widget.sumDIVOtt = UserSimplePreferencesOttobre.getDatasumDIVOtt() ?? 0;
  }

  late var totalOtt = widget.sumRISOtt +
      widget.sumDELOtt +
      widget.sumSANOtt +
      widget.sumAPPOtt +
      widget.sumSPEOtt +
      widget.sumUTIOtt +
      widget.sumISTOtt +
      widget.sumDIVOtt;

  @override
  Widget build(BuildContext context) {
    return MonthSeriesBox(
        month_color: Colors.pink[700],
        text_month: 'Ottobre:',
        text1: '''

Ristorante: ${widget.sumRISOtt}
Bar: ${widget.sumDELOtt}
Sanità: ${widget.sumSANOtt}
Apparel: ${widget.sumAPPOtt}
Spesa: ${widget.sumSPEOtt}
Divertimento: ${widget.sumDIVOtt}
Utilities: ${widget.sumUTIOtt}
Istruzione: ${widget.sumISTOtt}''',
        text2: "\n\nLa spesa totale di Ottobre ammonta a: $totalOtt");
  }
}

class NovembreBox extends StatefulWidget {
  int sumRISNov;
  int sumSANNov;
  int sumSPENov;
  int sumDELNov;
  int sumAPPNov;
  int sumUTINov;
  int sumISTNov;
  int sumDIVNov;
  NovembreBox({
    Key? key,
    required this.sumRISNov,
    required this.sumDIVNov,
    required this.sumAPPNov,
    required this.sumSPENov,
    required this.sumUTINov,
    required this.sumISTNov,
    required this.sumSANNov,
    required this.sumDELNov,
  }) : super(key: key);

  @override
  State<NovembreBox> createState() => _NovembreBoxState();
}

class _NovembreBoxState extends State<NovembreBox> {
  @override
  void initState() {
    super.initState();
    widget.sumRISNov = UserSimplePreferencesNovembre.getDatasumRISNov() ?? 0;
    widget.sumDELNov = UserSimplePreferencesNovembre.getDatasumDELNov() ?? 0;
    widget.sumSANNov = UserSimplePreferencesNovembre.getDatasumSANNov() ?? 0;
    widget.sumAPPNov = UserSimplePreferencesNovembre.getDatasumAPPNov() ?? 0;
    widget.sumSPENov = UserSimplePreferencesNovembre.getDatasumSPENov() ?? 0;
    widget.sumUTINov = UserSimplePreferencesNovembre.getDatasumUTINov() ?? 0;
    widget.sumISTNov = UserSimplePreferencesNovembre.getDatasumISTNov() ?? 0;
    widget.sumDIVNov = UserSimplePreferencesNovembre.getDatasumDIVNov() ?? 0;
  }

  late var totalNov = widget.sumRISNov +
      widget.sumDELNov +
      widget.sumSANNov +
      widget.sumAPPNov +
      widget.sumSPENov +
      widget.sumUTINov +
      widget.sumISTNov +
      widget.sumDIVNov;

  @override
  Widget build(BuildContext context) {
    return MonthSeriesBox(
        month_color: Colors.yellow,
        text_month: 'Novembre:',
        text1: '''

Ristorante: ${widget.sumRISNov}
Bar: ${widget.sumDELNov}
Sanità: ${widget.sumSANNov}
Apparel: ${widget.sumAPPNov}
Spesa: ${widget.sumSPENov}
Divertimento: ${widget.sumDIVNov}
Utilities: ${widget.sumUTINov}
Istruzione: ${widget.sumISTNov}''',
        text2: "\n\nLa spesa totale di Novembre ammonta a: $totalNov");
  }
}

class DicembreBox extends StatefulWidget {
  int sumRISDic;
  int sumSANDic;
  int sumSPEDic;
  int sumDELDic;
  int sumAPPDic;
  int sumUTIDic;
  int sumISTDic;
  int sumDIVDic;
  DicembreBox({
    Key? key,
    required this.sumRISDic,
    required this.sumDIVDic,
    required this.sumAPPDic,
    required this.sumSPEDic,
    required this.sumUTIDic,
    required this.sumISTDic,
    required this.sumSANDic,
    required this.sumDELDic,
  }) : super(key: key);

  @override
  State<DicembreBox> createState() => _DicembreBoxState();
}

class _DicembreBoxState extends State<DicembreBox> {
  @override
  void initState() {
    super.initState();
    widget.sumRISDic = UserSimplePreferencesDicembre.getDatasumRISDic() ?? 0;
    widget.sumDELDic = UserSimplePreferencesDicembre.getDatasumDELDic() ?? 0;
    widget.sumSANDic = UserSimplePreferencesDicembre.getDatasumSANDic() ?? 0;
    widget.sumAPPDic = UserSimplePreferencesDicembre.getDatasumAPPDic() ?? 0;
    widget.sumSPEDic = UserSimplePreferencesDicembre.getDatasumSPEDic() ?? 0;
    widget.sumUTIDic = UserSimplePreferencesDicembre.getDatasumUTIDic() ?? 0;
    widget.sumISTDic = UserSimplePreferencesDicembre.getDatasumISTDic() ?? 0;
    widget.sumDIVDic = UserSimplePreferencesDicembre.getDatasumDIVDic() ?? 0;
  }

  late var totalDic = widget.sumRISDic +
      widget.sumDELDic +
      widget.sumSANDic +
      widget.sumAPPDic +
      widget.sumSPEDic +
      widget.sumUTIDic +
      widget.sumISTDic +
      widget.sumDIVDic;

  @override
  Widget build(BuildContext context) {
    return MonthSeriesBox(
        month_color: Colors.blue[200],
        text_month: 'Dicembre:',
        text1: '''

Ristorante: ${widget.sumRISDic}
Bar: ${widget.sumDELDic}
Sanità: ${widget.sumSANDic}
Apparel: ${widget.sumAPPDic}
Spesa: ${widget.sumSPEDic}
Divertimento: ${widget.sumDIVDic}
Utilities: ${widget.sumUTIDic}
Istruzione: ${widget.sumISTDic}''',
        text2: "\n\nLa spesa totale di Dicembre ammonta a: $totalDic");
  }
}
