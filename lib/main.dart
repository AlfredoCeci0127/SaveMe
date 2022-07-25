import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widget/UserPreferences/UserPreferencesAgosto.dart';
import 'package:flutter_application_1/Widget/UserPreferences/UserPreferencesAprile.dart';
import 'package:flutter_application_1/Widget/UserPreferences/UserPreferencesD&C.dart';
import 'package:flutter_application_1/Widget/UserPreferences/UserPreferencesDicembre.dart';
import 'package:flutter_application_1/Widget/UserPreferences/UserPreferencesFebbraio.dart';
import 'package:flutter_application_1/Widget/UserPreferences/UserPreferencesGiugno.dart';
import 'package:flutter_application_1/Widget/UserPreferences/UserPreferencesLuglio.dart';
import 'package:flutter_application_1/Widget/UserPreferences/UserPreferencesMaggio.dart';
import 'package:flutter_application_1/Widget/UserPreferences/UserPreferencesMarzo.dart';
import 'package:flutter_application_1/Widget/UserPreferences/UserPreferencesNovembre.dart';
import 'package:flutter_application_1/Widget/UserPreferences/UserPreferencesOttobre.dart';
import 'package:flutter_application_1/Widget/UserPreferences/UserSimplePreferences.dart';
import 'package:flutter_application_1/Widget/UserPreferences/UsertotaliExpense.dart';
import 'package:flutter_application_1/Widget/transaction.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Widget/UserPreferences/UserPreferencesSettembre.dart';
import 'page/Home.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await UserSimplePreferences.init();
  //Gennaio
  await UserSimplePreferences.initLisRIS();
  await UserSimplePreferences.initsumRIS();
  await UserSimplePreferences.initLisDEL();
  await UserSimplePreferences.initsumDEL();
  await UserSimplePreferences.initsumSAN();
  await UserSimplePreferences.initLisSAN();
  await UserSimplePreferences.initsumIST();
  await UserSimplePreferences.initLisIST();
  await UserSimplePreferences.initsumAPP();
  await UserSimplePreferences.initLisAPP();
  await UserSimplePreferences.initsumDIV();
  await UserSimplePreferences.initLisDIV();
  await UserSimplePreferences.initsumUTI();
  await UserSimplePreferences.initLisUTI();
  await UserSimplePreferences.initsumSPE();
  await UserSimplePreferences.initLisSPE();
  //Febbraio
  await UserSimplePreferencesFebbraio.initsumRISFeb();
  await UserSimplePreferencesFebbraio.initLisRISFeb();
  await UserSimplePreferencesFebbraio.initsumRISFeb();
  await UserSimplePreferencesFebbraio.initsumDELFeb();
  await UserSimplePreferencesFebbraio.initLisDELFeb();
  await UserSimplePreferencesFebbraio.initsumSANFeb();
  await UserSimplePreferencesFebbraio.initLisSANFeb();
  await UserSimplePreferencesFebbraio.initsumISTFeb();
  await UserSimplePreferencesFebbraio.initLisISTFeb();
  await UserSimplePreferencesFebbraio.initsumAPPFeb();
  await UserSimplePreferencesFebbraio.initLisAPPFeb();
  await UserSimplePreferencesFebbraio.initsumDIVFeb();
  await UserSimplePreferencesFebbraio.initLisDIVFeb();
  await UserSimplePreferencesFebbraio.initsumUTIFeb();
  await UserSimplePreferencesFebbraio.initLisUTIFeb();
  await UserSimplePreferencesFebbraio.initsumSPEFeb();
  await UserSimplePreferencesFebbraio.initLisSPEFeb();
  //Marzo

  await UserSimplePreferencesMarzo.initLisRISMar();
  await UserSimplePreferencesMarzo.initsumRISMar();

  await UserSimplePreferencesMarzo.initLisDELMar();
  await UserSimplePreferencesMarzo.initsumDELMar();

  await UserSimplePreferencesMarzo.initLisSANMar();
  await UserSimplePreferencesMarzo.initsumSANMar();

  await UserSimplePreferencesMarzo.initLisISTMar();
  await UserSimplePreferencesMarzo.initsumISTMar();

  await UserSimplePreferencesMarzo.initLisAPPMar();
  await UserSimplePreferencesMarzo.initsumAPPMar();

  await UserSimplePreferencesMarzo.initLisDIVMar();
  await UserSimplePreferencesMarzo.initsumDIVMar();

  await UserSimplePreferencesMarzo.initLisUTIMar();
  await UserSimplePreferencesMarzo.initsumUTIMar();

  await UserSimplePreferencesMarzo.initLisSPEMar();
  await UserSimplePreferencesMarzo.initsumSPEMar();

  //Aprile

  await UserSimplePreferencesAprile.initLisRISApr();
  await UserSimplePreferencesAprile.initsumRISApr();

  await UserSimplePreferencesAprile.initLisDELApr();
  await UserSimplePreferencesAprile.initsumDELApr();

  await UserSimplePreferencesAprile.initLisSANApr();
  await UserSimplePreferencesAprile.initsumSANApr();

  await UserSimplePreferencesAprile.initLisISTApr();
  await UserSimplePreferencesAprile.initsumISTApr();

  await UserSimplePreferencesAprile.initLisAPPApr();
  await UserSimplePreferencesAprile.initsumAPPApr();

  await UserSimplePreferencesAprile.initLisDIVApr();
  await UserSimplePreferencesAprile.initsumDIVApr();

  await UserSimplePreferencesAprile.initLisUTIApr();
  await UserSimplePreferencesAprile.initsumUTIApr();

  await UserSimplePreferencesAprile.initLisSPEApr();
  await UserSimplePreferencesAprile.initsumSPEApr();

  //Maggio

  await UserSimplePreferencesMaggio.initLisRISMag();
  await UserSimplePreferencesMaggio.initsumRISMag();

  await UserSimplePreferencesMaggio.initLisDELMag();
  await UserSimplePreferencesMaggio.initsumDELMag();

  await UserSimplePreferencesMaggio.initLisSANMag();
  await UserSimplePreferencesMaggio.initsumSANMag();

  await UserSimplePreferencesMaggio.initLisISTMag();
  await UserSimplePreferencesMaggio.initsumISTMag();

  await UserSimplePreferencesMaggio.initLisAPPMag();
  await UserSimplePreferencesMaggio.initsumAPPMag();

  await UserSimplePreferencesMaggio.initLisDIVMag();
  await UserSimplePreferencesMaggio.initsumDIVMag();

  await UserSimplePreferencesMaggio.initLisUTIMag();
  await UserSimplePreferencesMaggio.initsumUTIMag();

  await UserSimplePreferencesMaggio.initLisSPEMag();
  await UserSimplePreferencesMaggio.initsumSPEMag();

  //Giugno

  await UserSimplePreferencesGiugno.initLisRISGiu();
  await UserSimplePreferencesGiugno.initsumRISGiu();

  await UserSimplePreferencesGiugno.initLisDELGiu();
  await UserSimplePreferencesGiugno.initsumDELGiu();

  await UserSimplePreferencesGiugno.initLisSANGiu();
  await UserSimplePreferencesGiugno.initsumSANGiu();

  await UserSimplePreferencesGiugno.initLisISTGiu();
  await UserSimplePreferencesGiugno.initsumISTGiu();

  await UserSimplePreferencesGiugno.initLisAPPGiu();
  await UserSimplePreferencesGiugno.initsumAPPGiu();

  await UserSimplePreferencesGiugno.initLisDIVGiu();
  await UserSimplePreferencesGiugno.initsumDIVGiu();

  await UserSimplePreferencesGiugno.initLisUTIGiu();
  await UserSimplePreferencesGiugno.initsumUTIGiu();

  await UserSimplePreferencesGiugno.initLisSPEGiu();
  await UserSimplePreferencesGiugno.initsumSPEGiu();

  //Luglio
  await UserSimplePreferencesLugio.initLisRISLug();
  await UserSimplePreferencesLugio.initsumRISLug();

  await UserSimplePreferencesLugio.initLisDELLug();
  await UserSimplePreferencesLugio.initsumDELLug();

  await UserSimplePreferencesLugio.initLisSANLug();
  await UserSimplePreferencesLugio.initsumSANLug();

  await UserSimplePreferencesLugio.initLisISTLug();
  await UserSimplePreferencesLugio.initsumISTLug();

  await UserSimplePreferencesLugio.initLisAPPLug();
  await UserSimplePreferencesLugio.initsumAPPLug();

  await UserSimplePreferencesLugio.initLisDIVLug();
  await UserSimplePreferencesLugio.initsumDIVLug();

  await UserSimplePreferencesLugio.initLisUTILug();
  await UserSimplePreferencesLugio.initsumUTILug();

  await UserSimplePreferencesLugio.initLisSPELug();
  await UserSimplePreferencesLugio.initsumSPELug();
  //Agosto
  await UserSimplePreferencesAgosto.initLisRISAgo();
  await UserSimplePreferencesAgosto.initsumRISAgo();

  await UserSimplePreferencesAgosto.initLisDELAgo();
  await UserSimplePreferencesAgosto.initsumDELAgo();

  await UserSimplePreferencesAgosto.initLisSANAgo();
  await UserSimplePreferencesAgosto.initsumSANAgo();

  await UserSimplePreferencesAgosto.initLisISTAgo();
  await UserSimplePreferencesAgosto.initsumISTAgo();

  await UserSimplePreferencesAgosto.initLisAPPAgo();
  await UserSimplePreferencesAgosto.initsumAPPAgo();

  await UserSimplePreferencesAgosto.initLisDIVAgo();
  await UserSimplePreferencesAgosto.initsumDIVAgo();

  await UserSimplePreferencesAgosto.initLisUTIAgo();
  await UserSimplePreferencesAgosto.initsumUTIAgo();

  await UserSimplePreferencesAgosto.initLisSPEAgo();
  await UserSimplePreferencesAgosto.initsumSPEAgo();
  //Settembre
  await UserSimplePreferencesSettembre.initLisRISSet();
  await UserSimplePreferencesSettembre.initsumRISSet();

  await UserSimplePreferencesSettembre.initLisDELSet();
  await UserSimplePreferencesSettembre.initsumDELSet();

  await UserSimplePreferencesSettembre.initLisSANSet();
  await UserSimplePreferencesSettembre.initsumSANSet();

  await UserSimplePreferencesSettembre.initLisISTSet();
  await UserSimplePreferencesSettembre.initsumISTSet();

  await UserSimplePreferencesSettembre.initLisAPPSet();
  await UserSimplePreferencesSettembre.initsumAPPSet();

  await UserSimplePreferencesSettembre.initLisDIVSet();
  await UserSimplePreferencesSettembre.initsumDIVSet();

  await UserSimplePreferencesSettembre.initLisUTISet();
  await UserSimplePreferencesSettembre.initsumUTISet();

  await UserSimplePreferencesSettembre.initLisSPESet();
  await UserSimplePreferencesSettembre.initsumSPESet();
  //Ottobre
  await UserSimplePreferencesOttobre.initLisRISOtt();
  await UserSimplePreferencesOttobre.initsumRISOtt();

  await UserSimplePreferencesOttobre.initLisDELOtt();
  await UserSimplePreferencesOttobre.initsumDELOtt();

  await UserSimplePreferencesOttobre.initLisSANOtt();
  await UserSimplePreferencesOttobre.initsumSANOtt();

  await UserSimplePreferencesOttobre.initLisISTOtt();
  await UserSimplePreferencesOttobre.initsumISTOtt();

  await UserSimplePreferencesOttobre.initLisAPPOtt();
  await UserSimplePreferencesOttobre.initsumAPPOtt();

  await UserSimplePreferencesOttobre.initLisDIVOtt();
  await UserSimplePreferencesOttobre.initsumDIVOtt();

  await UserSimplePreferencesOttobre.initLisUTIOtt();
  await UserSimplePreferencesOttobre.initsumUTIOtt();

  await UserSimplePreferencesOttobre.initLisSPEOtt();
  await UserSimplePreferencesOttobre.initsumSPEOtt();
  //Novembre
  await UserSimplePreferencesNovembre.initLisRISNov();
  await UserSimplePreferencesNovembre.initsumRISNov();

  await UserSimplePreferencesNovembre.initLisDELNov();
  await UserSimplePreferencesNovembre.initsumDELNov();

  await UserSimplePreferencesNovembre.initLisSANNov();
  await UserSimplePreferencesNovembre.initsumSANNov();

  await UserSimplePreferencesNovembre.initLisISTNov();
  await UserSimplePreferencesNovembre.initsumISTNov();

  await UserSimplePreferencesNovembre.initLisAPPNov();
  await UserSimplePreferencesNovembre.initsumAPPNov();

  await UserSimplePreferencesNovembre.initLisDIVNov();
  await UserSimplePreferencesNovembre.initsumDIVNov();

  await UserSimplePreferencesNovembre.initLisUTINov();
  await UserSimplePreferencesNovembre.initsumUTINov();

  await UserSimplePreferencesNovembre.initLisSPENov();
  await UserSimplePreferencesNovembre.initsumSPENov();
  //Dicembre
  await UserSimplePreferencesDicembre.initLisRISDic();
  await UserSimplePreferencesDicembre.initsumRISDic();

  await UserSimplePreferencesDicembre.initLisDELDic();
  await UserSimplePreferencesDicembre.initsumDELDic();

  await UserSimplePreferencesDicembre.initLisSANDic();
  await UserSimplePreferencesDicembre.initsumSANDic();

  await UserSimplePreferencesDicembre.initLisISTDic();
  await UserSimplePreferencesDicembre.initsumISTDic();

  await UserSimplePreferencesDicembre.initLisAPPDic();
  await UserSimplePreferencesDicembre.initsumAPPDic();

  await UserSimplePreferencesDicembre.initLisDIVDic();
  await UserSimplePreferencesDicembre.initsumDIVDic();

  await UserSimplePreferencesDicembre.initLisUTIDic();
  await UserSimplePreferencesDicembre.initsumUTIDic();

  await UserSimplePreferencesDicembre.initLisSPEDic();
  await UserSimplePreferencesDicembre.initsumSPEDic();

  //Total
  await UsertotaliExpense.inittotalAPP();
  await UsertotaliExpense.inittotalRIS();
  await UsertotaliExpense.inittotalDEL();
  await UsertotaliExpense.inittotalSPE();
  await UsertotaliExpense.inittotalDIV();
  await UsertotaliExpense.inittotalIST();
  await UsertotaliExpense.inittotalUTI();
  await UsertotaliExpense.inittotalSAN();

  //Debiti e Crediti
  await UserPreferencesDebitorieCreditori.inituserlistaData();
  await UserPreferencesDebitorieCreditori.inituserlistaNomi();
  await UserPreferencesDebitorieCreditori.inituserlistaDescrizione();

  //Hive
  await Hive.initFlutter();

  Hive.registerAdapter(TransactionAdapter());
  await Hive.openBox<Transaction>('transactions');

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "",
        home: HomePage(name: ''),
        theme: ThemeData(
            textTheme:
                GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)));
  }
}
