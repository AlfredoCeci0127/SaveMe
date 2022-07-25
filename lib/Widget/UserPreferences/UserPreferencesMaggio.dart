import 'package:shared_preferences/shared_preferences.dart';

class UserSimplePreferencesMaggio {
  //PRIMO
  //R
  //static late SharedPreferences _preferenceRISMag;
  static late SharedPreferences _preferenceLisRISMag;
  static late SharedPreferences _preferencesumRISMag;
  //D
  //static late SharedPreferences _preferenceDELMag;
  static late SharedPreferences _preferenceLisDELMag;
  static late SharedPreferences _preferencesumDELMag;
  //S
  //static late SharedPreferences _preferenceSANMag;
  static late SharedPreferences _preferenceLisSANMag;
  static late SharedPreferences _preferencesumSANMag;
  //I
  //static late SharedPreferences _preferenceISTMag;
  static late SharedPreferences _preferenceLisISTMag;
  static late SharedPreferences _preferencesumISTMag;
  //A
  //static late SharedPreferences _preferenceAPPMag;
  static late SharedPreferences _preferenceLisAPPMag;
  static late SharedPreferences _preferencesumAPPMag;
  //D
  //static late SharedPreferences _preferenceDIVMag;
  static late SharedPreferences _preferenceLisDIVMag;
  static late SharedPreferences _preferencesumDIVMag;
  //U
  //static late SharedPreferences _preferenceUTIMag;
  static late SharedPreferences _preferenceLisUTIMag;
  static late SharedPreferences _preferencesumUTIMag;
  //S
  //static late SharedPreferences _preferenceSPEMag;
  static late SharedPreferences _preferenceLisSPEMag;
  static late SharedPreferences _preferencesumSPEMag;

  //SECONDO
  //R
  //static const _keynameviRISMag = "viRISMag";
  static const _keyrislistaMag = "rislistaMag";
  static const _keysumRISMag = "sumRISMag";
  //D
  //static const _keynametotsDELMag = "totsDELMag";
  static const _keydellistaMag = "dellistaMag";
  static const _keysumDELMag = "sumDELMag";
  //S
  //static const _keynametotsSANMag = "totsSANMag";
  static const _keysanlistaMag = "sanlistaMag";
  static const _keysumSANMag = "sumSANMag";
  //I
  //static const _keynametotsISTMag = "totsISTMag";
  static const _keyistlistaMag = "istlistaMag";
  static const _keysumISTMag = "sumISTMag";
  //A
  //static const _keynametotsAPPMag = "totsAPPMag";
  static const _keyapplistaMag = "applistaMag";
  static const _keysumAPPMag = "sumAPPMag";
  //D
  //static const _keynametotsDIVMag = "totsDIVMag";
  static const _keydivlistaMag = "divlistaMag";
  static const _keysumDIVMag = "sumDIVMag";
  //U
  //static const _keynametotsUTIMag = "totsUTIMag";
  static const _keyutilistaMag = "utilistaMag";
  static const _keysumUTIMag = "sumUTIMag";
  //S
  //static const _keynametotsSPEMag = "totsSPEMag";
  static const _keyspelistaMag = "spelistaMag";
  static const _keysumSPEMag = "sumSPEMag";

//TERZO

//R

  static Future initLisRISMag() async {
    _preferenceLisRISMag = await SharedPreferences.getInstance();
  }

  static Future initsumRISMag() async {
    _preferencesumRISMag = await SharedPreferences.getInstance();
  }

//D

  static Future initLisDELMag() async {
    _preferenceLisDELMag = await SharedPreferences.getInstance();
  }

  static Future initsumDELMag() async {
    _preferencesumDELMag = await SharedPreferences.getInstance();
  }

//S

  static Future initLisSANMag() async {
    _preferenceLisSANMag = await SharedPreferences.getInstance();
  }

  static Future initsumSANMag() async {
    _preferencesumSANMag = await SharedPreferences.getInstance();
  }

//I

  static Future initLisISTMag() async {
    _preferenceLisISTMag = await SharedPreferences.getInstance();
  }

  static Future initsumISTMag() async {
    _preferencesumISTMag = await SharedPreferences.getInstance();
  }

//A

  static Future initLisAPPMag() async {
    _preferenceLisAPPMag = await SharedPreferences.getInstance();
  }

  static Future initsumAPPMag() async {
    _preferencesumAPPMag = await SharedPreferences.getInstance();
  }

//D

  static Future initLisDIVMag() async {
    _preferenceLisDIVMag = await SharedPreferences.getInstance();
  }

  static Future initsumDIVMag() async {
    _preferencesumDIVMag = await SharedPreferences.getInstance();
  }

//U

  static Future initLisUTIMag() async {
    _preferenceLisUTIMag = await SharedPreferences.getInstance();
  }

  static Future initsumUTIMag() async {
    _preferencesumUTIMag = await SharedPreferences.getInstance();
  }

//S

  static Future initLisSPEMag() async {
    _preferenceLisSPEMag = await SharedPreferences.getInstance();
  }

  static Future initsumSPEMag() async {
    _preferencesumSPEMag = await SharedPreferences.getInstance();
  }

//QUARTO

//R

  static Future setDataLisRISMag(List<String> rislistaMag) async {
    await _preferenceLisRISMag.setStringList(_keyrislistaMag, rislistaMag);
  }

  static Future setDatasumRISMag(int sumRISMag) async {
    await _preferencesumRISMag.setInt(_keysumRISMag, sumRISMag);
  }

//D

  static Future setDataLisDELMag(List<String> dellistaMag) async {
    await _preferenceLisDELMag.setStringList(_keydellistaMag, dellistaMag);
  }

  static Future setDatasumDELMag(int sumDELMag) async {
    await _preferencesumDELMag.setInt(_keysumDELMag, sumDELMag);
  }

//S

  static Future setDataLisSANMag(List<String> sanlistaMag) async {
    await _preferenceLisSANMag.setStringList(_keysanlistaMag, sanlistaMag);
  }

  static Future setDatasumSANMag(int sumSANMag) async {
    await _preferencesumSANMag.setInt(_keysumSANMag, sumSANMag);
  }

//I

  static Future setDataLisISTMag(List<String> istlistaMag) async {
    await _preferenceLisISTMag.setStringList(_keyistlistaMag, istlistaMag);
  }

  static Future setDatasumISTMag(int sumISTMag) async {
    await _preferencesumISTMag.setInt(_keysumISTMag, sumISTMag);
  }

//A

  static Future setDataLiAPPMag(List<String> applistaMag) async {
    await _preferenceLisAPPMag.setStringList(_keyapplistaMag, applistaMag);
  }

  static Future setDatasumAPPMag(int sumAPPMag) async {
    await _preferencesumAPPMag.setInt(_keysumAPPMag, sumAPPMag);
  }

//D

  static Future setDataLisDIVMag(List<String> divlistaMag) async {
    await _preferenceLisDIVMag.setStringList(_keydivlistaMag, divlistaMag);
  }

  static Future setDatasumDIVMag(int sumDIVMag) async {
    await _preferencesumDIVMag.setInt(_keysumDIVMag, sumDIVMag);
  }

//U

  static Future setDataLisUTIMag(List<String> utilistaMag) async {
    await _preferenceLisUTIMag.setStringList(_keyutilistaMag, utilistaMag);
  }

  static Future setDatasumUTIMag(int sumUTIMag) async {
    await _preferencesumUTIMag.setInt(_keysumUTIMag, sumUTIMag);
  }

//S

  static Future setDataLisSPEMag(List<String> spelistaMag) async {
    await _preferenceLisSPEMag.setStringList(_keyspelistaMag, spelistaMag);
  }

  static Future setDatasumSPEMag(int sumSPEMag) async {
    await _preferencesumSPEMag.setInt(_keysumSPEMag, sumSPEMag);
  }

//QUINTO
//R

  static List<String>? getLisRISMag() =>
      _preferenceLisRISMag.getStringList(_keyrislistaMag);
  static int? getDatasumRISMag() => _preferencesumRISMag.getInt(_keysumRISMag);
//D

  static List<String>? getLisDELMag() =>
      _preferenceLisDELMag.getStringList(_keydellistaMag);
  static int? getDatasumDELMag() => _preferencesumDELMag.getInt(_keysumDELMag);
//S

  static List<String>? getLisSANMag() =>
      _preferenceLisSANMag.getStringList(_keysanlistaMag);
  static int? getDatasumSANMag() => _preferencesumSANMag.getInt(_keysumSANMag);
//I

  static List<String>? getLisISTMag() =>
      _preferenceLisISTMag.getStringList(_keyistlistaMag);
  static int? getDatasumISTMag() => _preferencesumISTMag.getInt(_keysumISTMag);

//A

  static List<String>? getLisAPPMag() =>
      _preferenceLisAPPMag.getStringList(_keyapplistaMag);
  static int? getDatasumAPPMag() => _preferencesumAPPMag.getInt(_keysumAPPMag);

//D

  static List<String>? getLisDIVMag() =>
      _preferenceLisDIVMag.getStringList(_keydivlistaMag);
  static int? getDatasumDIVMag() => _preferencesumDIVMag.getInt(_keysumDIVMag);

//U

  static List<String>? getLisUTIMag() =>
      _preferenceLisUTIMag.getStringList(_keyutilistaMag);
  static int? getDatasumUTIMag() => _preferencesumUTIMag.getInt(_keysumUTIMag);

//S

  static List<String>? getLisSPEMag() =>
      _preferenceLisSPEMag.getStringList(_keyspelistaMag);
  static int? getDatasumSPEMag() => _preferencesumSPEMag.getInt(_keysumSPEMag);
}
