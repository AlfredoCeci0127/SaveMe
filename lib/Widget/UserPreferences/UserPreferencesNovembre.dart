import 'package:shared_preferences/shared_preferences.dart';

class UserSimplePreferencesNovembre {
  //PRIMO
  //R
  static late SharedPreferences _preferenceLisRISNov;
  static late SharedPreferences _preferencesumRISNov;
  //D
  static late SharedPreferences _preferenceLisDELNov;
  static late SharedPreferences _preferencesumDELNov;
  //S
  static late SharedPreferences _preferenceLisSANNov;
  static late SharedPreferences _preferencesumSANNov;
  //I
  static late SharedPreferences _preferenceLisISTNov;
  static late SharedPreferences _preferencesumISTNov;
  //A
  static late SharedPreferences _preferenceLisAPPNov;
  static late SharedPreferences _preferencesumAPPNov;
  //D
  static late SharedPreferences _preferenceLisDIVNov;
  static late SharedPreferences _preferencesumDIVNov;
  //U
  static late SharedPreferences _preferenceLisUTINov;
  static late SharedPreferences _preferencesumUTINov;
  //S
  static late SharedPreferences _preferenceLisSPENov;
  static late SharedPreferences _preferencesumSPENov;

  //SECONDO
  //R
  static const _keyrislistaNov = "rislistaNov";
  static const _keysumRISNov = "sumRISNov";
  //D
  static const _keysumDELNov = "sumDELNov";
  static const _keydellistaNov = "dellistaNov";
  //S
  static const _keysumSANNov = "sumSANNov";
  static const _keysanlistaNov = "sanlistaNov";
  //I
  static const _keysumISTNov = "sumISTNov";
  static const _keyistlistaNov = "istlistaNov";
  //A
  static const _keysumAPPNov = "sumAPPNov";
  static const _keyapplistaNov = "applistaNov";
  //D
  static const _keysumDIVNov = "sumDIVNov";
  static const _keydivlistaNov = "divlistaNov";
  //U
  static const _keysumUTINov = "sumUTINov";
  static const _keyutilistaNov = "utilistaNov";
  //S
  static const _keysumSPENov = "sumSPENov";
  static const _keyspelistaNov = "spelistaNov";

//TERZO

//R

  static Future initLisRISNov() async {
    _preferenceLisRISNov = await SharedPreferences.getInstance();
  }

  static Future initsumRISNov() async {
    _preferencesumRISNov = await SharedPreferences.getInstance();
  }

//D
  static Future initsumDELNov() async {
    _preferencesumDELNov = await SharedPreferences.getInstance();
  }

  static Future initLisDELNov() async {
    _preferenceLisDELNov = await SharedPreferences.getInstance();
  }

//S
  static Future initsumSANNov() async {
    _preferencesumSANNov = await SharedPreferences.getInstance();
  }

  static Future initLisSANNov() async {
    _preferenceLisSANNov = await SharedPreferences.getInstance();
  }

//I
  static Future initsumISTNov() async {
    _preferencesumISTNov = await SharedPreferences.getInstance();
  }

  static Future initLisISTNov() async {
    _preferenceLisISTNov = await SharedPreferences.getInstance();
  }

//A
  static Future initsumAPPNov() async {
    _preferencesumAPPNov = await SharedPreferences.getInstance();
  }

  static Future initLisAPPNov() async {
    _preferenceLisAPPNov = await SharedPreferences.getInstance();
  }

//D
  static Future initsumDIVNov() async {
    _preferencesumDIVNov = await SharedPreferences.getInstance();
  }

  static Future initLisDIVNov() async {
    _preferenceLisDIVNov = await SharedPreferences.getInstance();
  }

//U
  static Future initsumUTINov() async {
    _preferencesumUTINov = await SharedPreferences.getInstance();
  }

  static Future initLisUTINov() async {
    _preferenceLisUTINov = await SharedPreferences.getInstance();
  }

//S
  static Future initsumSPENov() async {
    _preferencesumSPENov = await SharedPreferences.getInstance();
  }

  static Future initLisSPENov() async {
    _preferenceLisSPENov = await SharedPreferences.getInstance();
  }

//QUARTO

//R

  static Future setDataLisRISNov(List<String> rislistaNov) async {
    await _preferenceLisRISNov.setStringList(_keyrislistaNov, rislistaNov);
  }

  static Future setDatasumRISNov(int sumRISNov) async {
    await _preferencesumRISNov.setInt(_keysumRISNov, sumRISNov);
  }

//D
  static Future setDatasumDELNov(int sumDELNov) async {
    await _preferencesumDELNov.setInt(_keysumDELNov, sumDELNov);
  }

  static Future setDataLisDELNov(List<String> dellistaNov) async {
    await _preferenceLisDELNov.setStringList(_keydellistaNov, dellistaNov);
  }

//S
  static Future setDatasumSANNov(int sumSANNov) async {
    await _preferencesumSANNov.setInt(_keysumSANNov, sumSANNov);
  }

  static Future setDataLisSANNov(List<String> sanlistaNov) async {
    await _preferenceLisSANNov.setStringList(_keysanlistaNov, sanlistaNov);
  }

//I
  static Future setDatasumISTNov(int sumISTNov) async {
    await _preferencesumISTNov.setInt(_keysumISTNov, sumISTNov);
  }

  static Future setDataLisISTNov(List<String> istlistaNov) async {
    await _preferenceLisISTNov.setStringList(_keyistlistaNov, istlistaNov);
  }

//A
  static Future setDatasumAPPNov(int sumAPPNov) async {
    await _preferencesumAPPNov.setInt(_keysumAPPNov, sumAPPNov);
  }

  static Future setDataLiAPPNov(List<String> applistaNov) async {
    await _preferenceLisAPPNov.setStringList(_keyapplistaNov, applistaNov);
  }

//D
  static Future setDatasumDIVNov(int sumDIVNov) async {
    await _preferencesumDIVNov.setInt(_keysumDIVNov, sumDIVNov);
  }

  static Future setDataLisDIVNov(List<String> divlistaNov) async {
    await _preferenceLisDIVNov.setStringList(_keydivlistaNov, divlistaNov);
  }

//U
  static Future setDatasumUTINov(int sumUTINov) async {
    await _preferencesumUTINov.setInt(_keysumUTINov, sumUTINov);
  }

  static Future setDataLisUTINov(List<String> utilistaNov) async {
    await _preferenceLisUTINov.setStringList(_keyutilistaNov, utilistaNov);
  }

//S
  static Future setDatasumSPENov(int sumSPENov) async {
    await _preferencesumSPENov.setInt(_keysumSPENov, sumSPENov);
  }

  static Future setDataLisSPENov(List<String> spelistaNov) async {
    await _preferenceLisSPENov.setStringList(_keyspelistaNov, spelistaNov);
  }

//QUINTO
//R
  static List<String>? getLisRISNov() =>
      _preferenceLisRISNov.getStringList(_keyrislistaNov);
  static int? getDatasumRISNov() => _preferencesumRISNov.getInt(_keysumRISNov);
//D
  static int? getDatasumDELNov() => _preferencesumDELNov.getInt(_keysumDELNov);
  static List<String>? getLisDELNov() =>
      _preferenceLisDELNov.getStringList(_keydellistaNov);
//S
  static int? getDatasumSANNov() => _preferencesumSANNov.getInt(_keysumSANNov);
  static List<String>? getLisSANNov() =>
      _preferenceLisSANNov.getStringList(_keysanlistaNov);

//I
  static int? getDatasumISTNov() => _preferencesumISTNov.getInt(_keysumISTNov);
  static List<String>? getLisISTNov() =>
      _preferenceLisISTNov.getStringList(_keyistlistaNov);

//A
  static int? getDatasumAPPNov() => _preferencesumAPPNov.getInt(_keysumAPPNov);
  static List<String>? getLisAPPNov() =>
      _preferenceLisAPPNov.getStringList(_keyapplistaNov);

//D
  static int? getDatasumDIVNov() => _preferencesumDIVNov.getInt(_keysumDIVNov);
  static List<String>? getLisDIVNov() =>
      _preferenceLisDIVNov.getStringList(_keydivlistaNov);

//U
  static int? getDatasumUTINov() => _preferencesumUTINov.getInt(_keysumUTINov);
  static List<String>? getLisUTINov() =>
      _preferenceLisUTINov.getStringList(_keyutilistaNov);

//S
  static int? getDatasumSPENov() => _preferencesumSPENov.getInt(_keysumSPENov);
  static List<String>? getLisSPENov() =>
      _preferenceLisSPENov.getStringList(_keyspelistaNov);
}
