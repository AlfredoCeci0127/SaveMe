import 'package:shared_preferences/shared_preferences.dart';

class UserSimplePreferencesOttobre {
  //PRIMO
  //R
  static late SharedPreferences _preferenceLisRISOtt;
  static late SharedPreferences _preferencesumRISOtt;
  //D
  static late SharedPreferences _preferenceLisDELOtt;
  static late SharedPreferences _preferencesumDELOtt;
  //S
  static late SharedPreferences _preferenceLisSANOtt;
  static late SharedPreferences _preferencesumSANOtt;
  //I
  static late SharedPreferences _preferenceLisISTOtt;
  static late SharedPreferences _preferencesumISTOtt;
  //A
  static late SharedPreferences _preferenceLisAPPOtt;
  static late SharedPreferences _preferencesumAPPOtt;
  //D
  static late SharedPreferences _preferenceLisDIVOtt;
  static late SharedPreferences _preferencesumDIVOtt;
  //U
  static late SharedPreferences _preferenceLisUTIOtt;
  static late SharedPreferences _preferencesumUTIOtt;
  //S
  static late SharedPreferences _preferenceLisSPEOtt;
  static late SharedPreferences _preferencesumSPEOtt;

  //SECONDO
  //R
  static const _keyrislistaOtt = "rislistaOtt";
  static const _keysumRISOtt = "sumRISOtt";
  //D
  static const _keysumDELOtt = "sumDELOtt";
  static const _keydellistaOtt = "dellistaOtt";
  //S
  static const _keysumSANOtt = "sumSANOtt";
  static const _keysanlistaOtt = "sanlistaOtt";
  //I
  static const _keysumISTOtt = "sumISTOtt";
  static const _keyistlistaOtt = "istlistaOtt";
  //A
  static const _keysumAPPOtt = "sumAPPOtt";
  static const _keyapplistaOtt = "applistaOtt";
  //D
  static const _keysumDIVOtt = "sumDIVOtt";
  static const _keydivlistaOtt = "divlistaOtt";
  //U
  static const _keysumUTIOtt = "sumUTIOtt";
  static const _keyutilistaOtt = "utilistaOtt";
  //S
  static const _keysumSPEOtt = "sumSPEOtt";
  static const _keyspelistaOtt = "spelistaOtt";

//TERZO

//R

  static Future initLisRISOtt() async {
    _preferenceLisRISOtt = await SharedPreferences.getInstance();
  }

  static Future initsumRISOtt() async {
    _preferencesumRISOtt = await SharedPreferences.getInstance();
  }

//D
  static Future initsumDELOtt() async {
    _preferencesumDELOtt = await SharedPreferences.getInstance();
  }

  static Future initLisDELOtt() async {
    _preferenceLisDELOtt = await SharedPreferences.getInstance();
  }

//S
  static Future initsumSANOtt() async {
    _preferencesumSANOtt = await SharedPreferences.getInstance();
  }

  static Future initLisSANOtt() async {
    _preferenceLisSANOtt = await SharedPreferences.getInstance();
  }

//I
  static Future initsumISTOtt() async {
    _preferencesumISTOtt = await SharedPreferences.getInstance();
  }

  static Future initLisISTOtt() async {
    _preferenceLisISTOtt = await SharedPreferences.getInstance();
  }

//A
  static Future initsumAPPOtt() async {
    _preferencesumAPPOtt = await SharedPreferences.getInstance();
  }

  static Future initLisAPPOtt() async {
    _preferenceLisAPPOtt = await SharedPreferences.getInstance();
  }

//D
  static Future initsumDIVOtt() async {
    _preferencesumDIVOtt = await SharedPreferences.getInstance();
  }

  static Future initLisDIVOtt() async {
    _preferenceLisDIVOtt = await SharedPreferences.getInstance();
  }

//U
  static Future initsumUTIOtt() async {
    _preferencesumUTIOtt = await SharedPreferences.getInstance();
  }

  static Future initLisUTIOtt() async {
    _preferenceLisUTIOtt = await SharedPreferences.getInstance();
  }

//S
  static Future initsumSPEOtt() async {
    _preferencesumSPEOtt = await SharedPreferences.getInstance();
  }

  static Future initLisSPEOtt() async {
    _preferenceLisSPEOtt = await SharedPreferences.getInstance();
  }

//QUARTO

//R

  static Future setDataLisRISOtt(List<String> rislistaOtt) async {
    await _preferenceLisRISOtt.setStringList(_keyrislistaOtt, rislistaOtt);
  }

  static Future setDatasumRISOtt(int sumRISOtt) async {
    await _preferencesumRISOtt.setInt(_keysumRISOtt, sumRISOtt);
  }

//D
  static Future setDatasumDELOtt(int sumDELOtt) async {
    await _preferencesumDELOtt.setInt(_keysumDELOtt, sumDELOtt);
  }

  static Future setDataLisDELOtt(List<String> dellistaOtt) async {
    await _preferenceLisDELOtt.setStringList(_keydellistaOtt, dellistaOtt);
  }

//S
  static Future setDatasumSANOtt(int sumSANOtt) async {
    await _preferencesumSANOtt.setInt(_keysumSANOtt, sumSANOtt);
  }

  static Future setDataLisSANOtt(List<String> sanlistaOtt) async {
    await _preferenceLisSANOtt.setStringList(_keysanlistaOtt, sanlistaOtt);
  }

//I
  static Future setDatasumISTOtt(int sumISTOtt) async {
    await _preferencesumISTOtt.setInt(_keysumISTOtt, sumISTOtt);
  }

  static Future setDataLisISTOtt(List<String> istlistaOtt) async {
    await _preferenceLisISTOtt.setStringList(_keyistlistaOtt, istlistaOtt);
  }

//A
  static Future setDatasumAPPOtt(int sumAPPOtt) async {
    await _preferencesumAPPOtt.setInt(_keysumAPPOtt, sumAPPOtt);
  }

  static Future setDataLiAPPOtt(List<String> applistaOtt) async {
    await _preferenceLisAPPOtt.setStringList(_keyapplistaOtt, applistaOtt);
  }

//D
  static Future setDatasumDIVOtt(int sumDIVOtt) async {
    await _preferencesumDIVOtt.setInt(_keysumDIVOtt, sumDIVOtt);
  }

  static Future setDataLisDIVOtt(List<String> divlistaOtt) async {
    await _preferenceLisDIVOtt.setStringList(_keydivlistaOtt, divlistaOtt);
  }

//U
  static Future setDatasumUTIOtt(int sumUTIOtt) async {
    await _preferencesumUTIOtt.setInt(_keysumUTIOtt, sumUTIOtt);
  }

  static Future setDataLisUTIOtt(List<String> utilistaOtt) async {
    await _preferenceLisUTIOtt.setStringList(_keyutilistaOtt, utilistaOtt);
  }

//S
  static Future setDatasumSPEOtt(int sumSPEOtt) async {
    await _preferencesumSPEOtt.setInt(_keysumSPEOtt, sumSPEOtt);
  }

  static Future setDataLisSPEOtt(List<String> spelistaOtt) async {
    await _preferenceLisSPEOtt.setStringList(_keyspelistaOtt, spelistaOtt);
  }

//QUINTO
//R
  static List<String>? getLisRISOtt() =>
      _preferenceLisRISOtt.getStringList(_keyrislistaOtt);
  static int? getDatasumRISOtt() => _preferencesumRISOtt.getInt(_keysumRISOtt);
//D
  static int? getDatasumDELOtt() => _preferencesumDELOtt.getInt(_keysumDELOtt);
  static List<String>? getLisDELOtt() =>
      _preferenceLisDELOtt.getStringList(_keydellistaOtt);
//S
  static int? getDatasumSANOtt() => _preferencesumSANOtt.getInt(_keysumSANOtt);
  static List<String>? getLisSANOtt() =>
      _preferenceLisSANOtt.getStringList(_keysanlistaOtt);

//I
  static int? getDatasumISTOtt() => _preferencesumISTOtt.getInt(_keysumISTOtt);
  static List<String>? getLisISTOtt() =>
      _preferenceLisISTOtt.getStringList(_keyistlistaOtt);

//A
  static int? getDatasumAPPOtt() => _preferencesumAPPOtt.getInt(_keysumAPPOtt);
  static List<String>? getLisAPPOtt() =>
      _preferenceLisAPPOtt.getStringList(_keyapplistaOtt);

//D
  static int? getDatasumDIVOtt() => _preferencesumDIVOtt.getInt(_keysumDIVOtt);
  static List<String>? getLisDIVOtt() =>
      _preferenceLisDIVOtt.getStringList(_keydivlistaOtt);

//U
  static int? getDatasumUTIOtt() => _preferencesumUTIOtt.getInt(_keysumUTIOtt);
  static List<String>? getLisUTIOtt() =>
      _preferenceLisUTIOtt.getStringList(_keyutilistaOtt);

//S
  static int? getDatasumSPEOtt() => _preferencesumSPEOtt.getInt(_keysumSPEOtt);
  static List<String>? getLisSPEOtt() =>
      _preferenceLisSPEOtt.getStringList(_keyspelistaOtt);
}
