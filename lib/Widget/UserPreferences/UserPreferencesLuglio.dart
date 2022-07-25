import 'package:shared_preferences/shared_preferences.dart';

class UserSimplePreferencesLugio {
  //PRIMO
  //R
  static late SharedPreferences _preferenceLisRISLug;
  static late SharedPreferences _preferencesumRISLug;
  //D
  static late SharedPreferences _preferenceLisDELLug;
  static late SharedPreferences _preferencesumDELLug;
  //S
  static late SharedPreferences _preferenceLisSANLug;
  static late SharedPreferences _preferencesumSANLug;
  //I
  static late SharedPreferences _preferenceLisISTLug;
  static late SharedPreferences _preferencesumISTLug;
  //A
  static late SharedPreferences _preferenceLisAPPLug;
  static late SharedPreferences _preferencesumAPPLug;
  //D
  static late SharedPreferences _preferenceLisDIVLug;
  static late SharedPreferences _preferencesumDIVLug;
  //U
  static late SharedPreferences _preferenceLisUTILug;
  static late SharedPreferences _preferencesumUTILug;
  //S
  static late SharedPreferences _preferenceLisSPELug;
  static late SharedPreferences _preferencesumSPELug;

  //SECONDO
  //R
  static const _keyviRISLug = "viRISLug";
  static const _keyrislistaLug = "rislistaLug";
  static const _keysumRISLug = "sumRISLug";
  //D
  static const _keysumDELLug = "sumDELLug";
  static const _keydellistaLug = "dellistaLug";
  //S
  static const _keysumSANLug = "sumSANLug";
  static const _keysanlistaLug = "sanlistaLug";
  //I
  static const _keysumISTLug = "sumISTLug";
  static const _keyistlistaLug = "istlistaLug";
  //A
  static const _keysumAPPLug = "sumAPPLug";
  static const _keyapplistaLug = "applistaLug";
  //D
  static const _keysumDIVLug = "sumDIVLug";
  static const _keydivlistaLug = "divlistaLug";
  //U
  static const _keysumUTILug = "sumUTILug";
  static const _keyutilistaLug = "utilistaLug";
  //S
  static const _keysumSPELug = "sumSPELug";
  static const _keyspelistaLug = "spelistaLug";

//TERZO

//R

  static Future initLisRISLug() async {
    _preferenceLisRISLug = await SharedPreferences.getInstance();
  }

  static Future initsumRISLug() async {
    _preferencesumRISLug = await SharedPreferences.getInstance();
  }

//D
  static Future initsumDELLug() async {
    _preferencesumDELLug = await SharedPreferences.getInstance();
  }

  static Future initLisDELLug() async {
    _preferenceLisDELLug = await SharedPreferences.getInstance();
  }

//S
  static Future initsumSANLug() async {
    _preferencesumSANLug = await SharedPreferences.getInstance();
  }

  static Future initLisSANLug() async {
    _preferenceLisSANLug = await SharedPreferences.getInstance();
  }

//I
  static Future initsumISTLug() async {
    _preferencesumISTLug = await SharedPreferences.getInstance();
  }

  static Future initLisISTLug() async {
    _preferenceLisISTLug = await SharedPreferences.getInstance();
  }

//A
  static Future initsumAPPLug() async {
    _preferencesumAPPLug = await SharedPreferences.getInstance();
  }

  static Future initLisAPPLug() async {
    _preferenceLisAPPLug = await SharedPreferences.getInstance();
  }

//D
  static Future initsumDIVLug() async {
    _preferencesumDIVLug = await SharedPreferences.getInstance();
  }

  static Future initLisDIVLug() async {
    _preferenceLisDIVLug = await SharedPreferences.getInstance();
  }

//U
  static Future initsumUTILug() async {
    _preferencesumUTILug = await SharedPreferences.getInstance();
  }

  static Future initLisUTILug() async {
    _preferenceLisUTILug = await SharedPreferences.getInstance();
  }

//S
  static Future initsumSPELug() async {
    _preferencesumSPELug = await SharedPreferences.getInstance();
  }

  static Future initLisSPELug() async {
    _preferenceLisSPELug = await SharedPreferences.getInstance();
  }

//QUARTO

//R

  static Future setDataLisRISLug(List<String> rislistaLug) async {
    await _preferenceLisRISLug.setStringList(_keyrislistaLug, rislistaLug);
  }

  static Future setDatasumRISLug(int sumRISLug) async {
    await _preferencesumRISLug.setInt(_keysumRISLug, sumRISLug);
  }

//D
  static Future setDatasumDELLug(int sumDELLug) async {
    await _preferencesumDELLug.setInt(_keysumDELLug, sumDELLug);
  }

  static Future setDataLisDELLug(List<String> dellistaLug) async {
    await _preferenceLisDELLug.setStringList(_keydellistaLug, dellistaLug);
  }

//S
  static Future setDatasumSANLug(int sumSANLug) async {
    await _preferencesumSANLug.setInt(_keysumSANLug, sumSANLug);
  }

  static Future setDataLisSANLug(List<String> sanlistaLug) async {
    await _preferenceLisSANLug.setStringList(_keysanlistaLug, sanlistaLug);
  }

//I
  static Future setDatasumISTLug(int sumISTLug) async {
    await _preferencesumISTLug.setInt(_keysumISTLug, sumISTLug);
  }

  static Future setDataLisISTLug(List<String> istlistaLug) async {
    await _preferenceLisISTLug.setStringList(_keyistlistaLug, istlistaLug);
  }

//A
  static Future setDatasumAPPLug(int sumAPPLug) async {
    await _preferencesumAPPLug.setInt(_keysumAPPLug, sumAPPLug);
  }

  static Future setDataLiAPPLug(List<String> applistaLug) async {
    await _preferenceLisAPPLug.setStringList(_keyapplistaLug, applistaLug);
  }

//D
  static Future setDatasumDIVLug(int sumDIVLug) async {
    await _preferencesumDIVLug.setInt(_keysumDIVLug, sumDIVLug);
  }

  static Future setDataLisDIVLug(List<String> divlistaLug) async {
    await _preferenceLisDIVLug.setStringList(_keydivlistaLug, divlistaLug);
  }

//U
  static Future setDatasumUTILug(int sumUTILug) async {
    await _preferencesumUTILug.setInt(_keysumUTILug, sumUTILug);
  }

  static Future setDataLisUTILug(List<String> utilistaLug) async {
    await _preferenceLisUTILug.setStringList(_keyutilistaLug, utilistaLug);
  }

//S
  static Future setDatasumSPELug(int sumSPELug) async {
    await _preferencesumSPELug.setInt(_keysumSPELug, sumSPELug);
  }

  static Future setDataLisSPELug(List<String> spelistaLug) async {
    await _preferenceLisSPELug.setStringList(_keyspelistaLug, spelistaLug);
  }

//QUINTO
//R
  static List<String>? getLisRISLug() =>
      _preferenceLisRISLug.getStringList(_keyrislistaLug);
  static int? getDatasumRISLug() => _preferencesumRISLug.getInt(_keysumRISLug);
//D
  static int? getDatasumDELLug() => _preferencesumDELLug.getInt(_keysumDELLug);
  static List<String>? getLisDELLug() =>
      _preferenceLisDELLug.getStringList(_keydellistaLug);
//S
  static int? getDatasumSANLug() => _preferencesumSANLug.getInt(_keysumSANLug);
  static List<String>? getLisSANLug() =>
      _preferenceLisSANLug.getStringList(_keysanlistaLug);

//I
  static int? getDatasumISTLug() => _preferencesumISTLug.getInt(_keysumISTLug);
  static List<String>? getLisISTLug() =>
      _preferenceLisISTLug.getStringList(_keyistlistaLug);

//A
  static int? getDatasumAPPLug() => _preferencesumAPPLug.getInt(_keysumAPPLug);
  static List<String>? getLisAPPLug() =>
      _preferenceLisAPPLug.getStringList(_keyapplistaLug);

//D
  static int? getDatasumDIVLug() => _preferencesumDIVLug.getInt(_keysumDIVLug);
  static List<String>? getLisDIVLug() =>
      _preferenceLisDIVLug.getStringList(_keydivlistaLug);

//U
  static int? getDatasumUTILug() => _preferencesumUTILug.getInt(_keysumUTILug);
  static List<String>? getLisUTILug() =>
      _preferenceLisUTILug.getStringList(_keyutilistaLug);

//S
  static int? getDatasumSPELug() => _preferencesumSPELug.getInt(_keysumSPELug);
  static List<String>? getLisSPELug() =>
      _preferenceLisSPELug.getStringList(_keyspelistaLug);
}
