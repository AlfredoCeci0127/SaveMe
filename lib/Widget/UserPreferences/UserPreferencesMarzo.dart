import 'package:shared_preferences/shared_preferences.dart';

class UserSimplePreferencesMarzo {
  //PRIMO
  //R
  static late SharedPreferences _preferenceLisRISMar;
  static late SharedPreferences _preferencesumRISMar;
  //D
  static late SharedPreferences _preferenceLisDELMar;
  static late SharedPreferences _preferencesumDELMar;
  //S
  static late SharedPreferences _preferenceLisSANMar;
  static late SharedPreferences _preferencesumSANMar;
  //I
  static late SharedPreferences _preferenceLisISTMar;
  static late SharedPreferences _preferencesumISTMar;
  //A
  static late SharedPreferences _preferenceLisAPPMar;
  static late SharedPreferences _preferencesumAPPMar;
  //D
  static late SharedPreferences _preferenceLisDIVMar;
  static late SharedPreferences _preferencesumDIVMar;
  //U
  static late SharedPreferences _preferenceLisUTIMar;
  static late SharedPreferences _preferencesumUTIMar;
  //S
  static late SharedPreferences _preferenceLisSPEMar;
  static late SharedPreferences _preferencesumSPEMar;

  //SECONDO
  //R
  static const _keyrislistaMar = "rislistaMar";
  static const _keysumRISMar = "sumRISMar";
  //D
  static const _keydellistaMar = "dellistaMar";
  static const _keysumDELMar = "sumDELMar";
  //S
  static const _keysanlistaMar = "sanlistaMar";
  static const _keysumSANMar = "sumSANMar";
  //I
  static const _keyistlistaMar = "istlistaMar";
  static const _keysumISTMar = "sumISTMar";
  //A
  static const _keyapplistaMar = "applistaMar";
  static const _keysumAPPMar = "sumAPPMar";
  //D
  static const _keydivlistaMar = "divlistaMar";
  static const _keysumDIVMar = "sumDIVMar";
  //U
  static const _keyutilistaMar = "utilistaMar";
  static const _keysumUTIMar = "sumUTIMar";
  //S
  static const _keyspelistaMar = "spelistaMar";
  static const _keysumSPEMar = "sumSPEMar";

//TERZO

//R

  static Future initLisRISMar() async {
    _preferenceLisRISMar = await SharedPreferences.getInstance();
  }

  static Future initsumRISMar() async {
    _preferencesumRISMar = await SharedPreferences.getInstance();
  }

//D

  static Future initLisDELMar() async {
    _preferenceLisDELMar = await SharedPreferences.getInstance();
  }

  static Future initsumDELMar() async {
    _preferencesumDELMar = await SharedPreferences.getInstance();
  }

//S

  static Future initLisSANMar() async {
    _preferenceLisSANMar = await SharedPreferences.getInstance();
  }

  static Future initsumSANMar() async {
    _preferencesumSANMar = await SharedPreferences.getInstance();
  }

//I

  static Future initLisISTMar() async {
    _preferenceLisISTMar = await SharedPreferences.getInstance();
  }

  static Future initsumISTMar() async {
    _preferencesumISTMar = await SharedPreferences.getInstance();
  }

//A

  static Future initLisAPPMar() async {
    _preferenceLisAPPMar = await SharedPreferences.getInstance();
  }

  static Future initsumAPPMar() async {
    _preferencesumAPPMar = await SharedPreferences.getInstance();
  }

//D

  static Future initLisDIVMar() async {
    _preferenceLisDIVMar = await SharedPreferences.getInstance();
  }

  static Future initsumDIVMar() async {
    _preferencesumDIVMar = await SharedPreferences.getInstance();
  }

//U

  static Future initLisUTIMar() async {
    _preferenceLisUTIMar = await SharedPreferences.getInstance();
  }

  static Future initsumUTIMar() async {
    _preferencesumUTIMar = await SharedPreferences.getInstance();
  }

//S

  static Future initLisSPEMar() async {
    _preferenceLisSPEMar = await SharedPreferences.getInstance();
  }

  static Future initsumSPEMar() async {
    _preferencesumSPEMar = await SharedPreferences.getInstance();
  }

//QUARTO

//R

  static Future setDataLisRISMar(List<String> rislistaMar) async {
    await _preferenceLisRISMar.setStringList(_keyrislistaMar, rislistaMar);
  }

  static Future setDatasumRISMar(int sumRISMar) async {
    await _preferencesumRISMar.setInt(_keysumRISMar, sumRISMar);
  }

//D

  static Future setDataLisDELMar(List<String> dellistaMar) async {
    await _preferenceLisDELMar.setStringList(_keydellistaMar, dellistaMar);
  }

  static Future setDatasumDELMar(int sumDELMar) async {
    await _preferencesumDELMar.setInt(_keysumDELMar, sumDELMar);
  }

//S

  static Future setDataLisSANMar(List<String> sanlistaMar) async {
    await _preferenceLisSANMar.setStringList(_keysanlistaMar, sanlistaMar);
  }

  static Future setDatasumSANMar(int sumSANMar) async {
    await _preferencesumSANMar.setInt(_keysumSANMar, sumSANMar);
  }

//I

  static Future setDataLisISTMar(List<String> istlistaMar) async {
    await _preferenceLisISTMar.setStringList(_keyistlistaMar, istlistaMar);
  }

  static Future setDatasumISTMar(int sumISTMar) async {
    await _preferencesumISTMar.setInt(_keysumISTMar, sumISTMar);
  }

//A

  static Future setDataLiAPPMar(List<String> applistaMar) async {
    await _preferenceLisAPPMar.setStringList(_keyapplistaMar, applistaMar);
  }

  static Future setDatasumAPPMar(int sumAPPMar) async {
    await _preferencesumAPPMar.setInt(_keysumAPPMar, sumAPPMar);
  }

//D

  static Future setDataLisDIVMar(List<String> divlistaMar) async {
    await _preferenceLisDIVMar.setStringList(_keydivlistaMar, divlistaMar);
  }

  static Future setDatasumDIVMar(int sumDIVMar) async {
    await _preferencesumDIVMar.setInt(_keysumDIVMar, sumDIVMar);
  }

//U

  static Future setDataLisUTIMar(List<String> utilistaMar) async {
    await _preferenceLisUTIMar.setStringList(_keyutilistaMar, utilistaMar);
  }

  static Future setDatasumUTIMar(int sumUTIMar) async {
    await _preferencesumUTIMar.setInt(_keysumUTIMar, sumUTIMar);
  }

//S

  static Future setDataLisSPEMar(List<String> spelistaMar) async {
    await _preferenceLisSPEMar.setStringList(_keyspelistaMar, spelistaMar);
  }

  static Future setDatasumSPEMar(int sumSPEMar) async {
    await _preferencesumSPEMar.setInt(_keysumSPEMar, sumSPEMar);
  }

//QUINTO
//R

  static List<String>? getLisRISMar() =>
      _preferenceLisRISMar.getStringList(_keyrislistaMar);
  static int? getDatasumRISMar() => _preferencesumRISMar.getInt(_keysumRISMar);
//D

  static List<String>? getLisDELMar() =>
      _preferenceLisDELMar.getStringList(_keydellistaMar);
  static int? getDatasumDELMar() => _preferencesumDELMar.getInt(_keysumDELMar);
//S

  static List<String>? getLisSANMar() =>
      _preferenceLisSANMar.getStringList(_keysanlistaMar);
  static int? getDatasumSANMar() => _preferencesumSANMar.getInt(_keysumSANMar);
//I

  static List<String>? getLisISTMar() =>
      _preferenceLisISTMar.getStringList(_keyistlistaMar);
  static int? getDatasumISTMar() => _preferencesumISTMar.getInt(_keysumISTMar);

//A

  static List<String>? getLisAPPMar() =>
      _preferenceLisAPPMar.getStringList(_keyapplistaMar);
  static int? getDatasumAPPMar() => _preferencesumAPPMar.getInt(_keysumAPPMar);

//D

  static List<String>? getLisDIVMar() =>
      _preferenceLisDIVMar.getStringList(_keydivlistaMar);
  static int? getDatasumDIVMar() => _preferencesumDIVMar.getInt(_keysumDIVMar);

//U

  static List<String>? getLisUTIMar() =>
      _preferenceLisUTIMar.getStringList(_keyutilistaMar);
  static int? getDatasumUTIMar() => _preferencesumUTIMar.getInt(_keysumUTIMar);

//S

  static List<String>? getLisSPEMar() =>
      _preferenceLisSPEMar.getStringList(_keyspelistaMar);
  static int? getDatasumSPEMar() => _preferencesumSPEMar.getInt(_keysumSPEMar);
}
