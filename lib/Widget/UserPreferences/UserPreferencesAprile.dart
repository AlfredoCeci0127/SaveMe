import 'package:shared_preferences/shared_preferences.dart';

class UserSimplePreferencesAprile {
  //PRIMO
  //R
  //static late SharedPreferences _preferenceRISApr;
  static late SharedPreferences _preferenceLisRISApr;
  static late SharedPreferences _preferencesumRISApr;
  //D
  //static late SharedPreferences _preferenceDELApr;
  static late SharedPreferences _preferenceLisDELApr;
  static late SharedPreferences _preferencesumDELApr;
  //S
  //static late SharedPreferences _preferenceSANApr;
  static late SharedPreferences _preferenceLisSANApr;
  static late SharedPreferences _preferencesumSANApr;
  //I
  //static late SharedPreferences _preferenceISTApr;
  static late SharedPreferences _preferenceLisISTApr;
  static late SharedPreferences _preferencesumISTApr;
  //A
  //static late SharedPreferences _preferenceAPPApr;
  static late SharedPreferences _preferenceLisAPPApr;
  static late SharedPreferences _preferencesumAPPApr;
  //D
  //static late SharedPreferences _preferenceDIVApr;
  static late SharedPreferences _preferenceLisDIVApr;
  static late SharedPreferences _preferencesumDIVApr;
  //U
  //static late SharedPreferences _preferenceUTIApr;
  static late SharedPreferences _preferenceLisUTIApr;
  static late SharedPreferences _preferencesumUTIApr;
  //S
  //static late SharedPreferences _preferenceSPEApr;
  static late SharedPreferences _preferenceLisSPEApr;
  static late SharedPreferences _preferencesumSPEApr;

  //SECONDO
  //R
  //static const _keynameviRISApr = "viRISApr";
  static const _keyrislistaApr = "rislistaApr";
  static const _keysumRISApr = "sumRISApr";
  //D
  //static const _keynametotsDELApr = "totsDELApr";
  static const _keydellistaApr = "dellistaApr";
  static const _keysumDELApr = "sumDELApr";
  //S
  //static const _keynametotsSANApr = "totsSANApr";
  static const _keysanlistaApr = "sanlistaApr";
  static const _keysumSANApr = "sumSANApr";
  //I
  //static const _keynametotsISTApr = "totsISTApr";
  static const _keyistlistaApr = "istlistaApr";
  static const _keysumISTApr = "sumISTApr";
  //A
  //static const _keynametotsAPPApr = "totsAPPApr";
  static const _keyapplistaApr = "applistaApr";
  static const _keysumAPPApr = "sumAPPApr";
  //D
  //static const _keynametotsDIVApr = "totsDIVApr";
  static const _keydivlistaApr = "divlistaApr";
  static const _keysumDIVApr = "sumDIVApr";
  //U
  //static const _keynametotsUTIApr = "totsUTIApr";
  static const _keyutilistaApr = "utilistaApr";
  static const _keysumUTIApr = "sumUTIApr";
  //S
  //static const _keynametotsSPEApr = "totsSPEApr";
  static const _keyspelistaApr = "spelistaApr";
  static const _keysumSPEApr = "sumSPEApr";

//TERZO

//R

  static Future initLisRISApr() async {
    _preferenceLisRISApr = await SharedPreferences.getInstance();
  }

  static Future initsumRISApr() async {
    _preferencesumRISApr = await SharedPreferences.getInstance();
  }

//D

  static Future initLisDELApr() async {
    _preferenceLisDELApr = await SharedPreferences.getInstance();
  }

  static Future initsumDELApr() async {
    _preferencesumDELApr = await SharedPreferences.getInstance();
  }

//S

  static Future initLisSANApr() async {
    _preferenceLisSANApr = await SharedPreferences.getInstance();
  }

  static Future initsumSANApr() async {
    _preferencesumSANApr = await SharedPreferences.getInstance();
  }

//I

  static Future initLisISTApr() async {
    _preferenceLisISTApr = await SharedPreferences.getInstance();
  }

  static Future initsumISTApr() async {
    _preferencesumISTApr = await SharedPreferences.getInstance();
  }

//A

  static Future initLisAPPApr() async {
    _preferenceLisAPPApr = await SharedPreferences.getInstance();
  }

  static Future initsumAPPApr() async {
    _preferencesumAPPApr = await SharedPreferences.getInstance();
  }

//D

  static Future initLisDIVApr() async {
    _preferenceLisDIVApr = await SharedPreferences.getInstance();
  }

  static Future initsumDIVApr() async {
    _preferencesumDIVApr = await SharedPreferences.getInstance();
  }

//U

  static Future initLisUTIApr() async {
    _preferenceLisUTIApr = await SharedPreferences.getInstance();
  }

  static Future initsumUTIApr() async {
    _preferencesumUTIApr = await SharedPreferences.getInstance();
  }

//S

  static Future initLisSPEApr() async {
    _preferenceLisSPEApr = await SharedPreferences.getInstance();
  }

  static Future initsumSPEApr() async {
    _preferencesumSPEApr = await SharedPreferences.getInstance();
  }

//QUARTO

//R

  static Future setDataLisRISApr(List<String> rislistaApr) async {
    await _preferenceLisRISApr.setStringList(_keyrislistaApr, rislistaApr);
  }

  static Future setDatasumRISApr(int sumRISApr) async {
    await _preferencesumRISApr.setInt(_keysumRISApr, sumRISApr);
  }

//D

  static Future setDataLisDELApr(List<String> dellistaApr) async {
    await _preferenceLisDELApr.setStringList(_keydellistaApr, dellistaApr);
  }

  static Future setDatasumDELApr(int sumDELApr) async {
    await _preferencesumDELApr.setInt(_keysumDELApr, sumDELApr);
  }

//S

  static Future setDataLisSANApr(List<String> sanlistaApr) async {
    await _preferenceLisSANApr.setStringList(_keysanlistaApr, sanlistaApr);
  }

  static Future setDatasumSANApr(int sumSANApr) async {
    await _preferencesumSANApr.setInt(_keysumSANApr, sumSANApr);
  }

//I

  static Future setDataLisISTApr(List<String> istlistaApr) async {
    await _preferenceLisISTApr.setStringList(_keyistlistaApr, istlistaApr);
  }

  static Future setDatasumISTApr(int sumISTApr) async {
    await _preferencesumISTApr.setInt(_keysumISTApr, sumISTApr);
  }

//A

  static Future setDataLiAPPApr(List<String> applistaApr) async {
    await _preferenceLisAPPApr.setStringList(_keyapplistaApr, applistaApr);
  }

  static Future setDatasumAPPApr(int sumAPPApr) async {
    await _preferencesumAPPApr.setInt(_keysumAPPApr, sumAPPApr);
  }

//D

  static Future setDataLisDIVApr(List<String> divlistaApr) async {
    await _preferenceLisDIVApr.setStringList(_keydivlistaApr, divlistaApr);
  }

  static Future setDatasumDIVApr(int sumDIVApr) async {
    await _preferencesumDIVApr.setInt(_keysumDIVApr, sumDIVApr);
  }

//U

  static Future setDataLisUTIApr(List<String> utilistaApr) async {
    await _preferenceLisUTIApr.setStringList(_keyutilistaApr, utilistaApr);
  }

  static Future setDatasumUTIApr(int sumUTIApr) async {
    await _preferencesumUTIApr.setInt(_keysumUTIApr, sumUTIApr);
  }

//S

  static Future setDataLisSPEApr(List<String> spelistaApr) async {
    await _preferenceLisSPEApr.setStringList(_keyspelistaApr, spelistaApr);
  }

  static Future setDatasumSPEApr(int sumSPEApr) async {
    await _preferencesumSPEApr.setInt(_keysumSPEApr, sumSPEApr);
  }

//QUINTO
//R

  static List<String>? getLisRISApr() =>
      _preferenceLisRISApr.getStringList(_keyrislistaApr);
  static int? getDatasumRISApr() => _preferencesumRISApr.getInt(_keysumRISApr);
//D

  static List<String>? getLisDELApr() =>
      _preferenceLisDELApr.getStringList(_keydellistaApr);
  static int? getDatasumDELApr() => _preferencesumDELApr.getInt(_keysumDELApr);
//S

  static List<String>? getLisSANApr() =>
      _preferenceLisSANApr.getStringList(_keysanlistaApr);
  static int? getDatasumSANApr() => _preferencesumSANApr.getInt(_keysumSANApr);
//I

  static List<String>? getLisISTApr() =>
      _preferenceLisISTApr.getStringList(_keyistlistaApr);
  static int? getDatasumISTApr() => _preferencesumISTApr.getInt(_keysumISTApr);

//A

  static List<String>? getLisAPPApr() =>
      _preferenceLisAPPApr.getStringList(_keyapplistaApr);
  static int? getDatasumAPPApr() => _preferencesumAPPApr.getInt(_keysumAPPApr);

//D

  static List<String>? getLisDIVApr() =>
      _preferenceLisDIVApr.getStringList(_keydivlistaApr);
  static int? getDatasumDIVApr() => _preferencesumDIVApr.getInt(_keysumDIVApr);

//U

  static List<String>? getLisUTIApr() =>
      _preferenceLisUTIApr.getStringList(_keyutilistaApr);
  static int? getDatasumUTIApr() => _preferencesumUTIApr.getInt(_keysumUTIApr);

//S

  static List<String>? getLisSPEApr() =>
      _preferenceLisSPEApr.getStringList(_keyspelistaApr);
  static int? getDatasumSPEApr() => _preferencesumSPEApr.getInt(_keysumSPEApr);
}
