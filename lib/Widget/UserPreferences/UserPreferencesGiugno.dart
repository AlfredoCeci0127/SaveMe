import 'package:shared_preferences/shared_preferences.dart';

class UserSimplePreferencesGiugno {
  //PRIMO
  //R
  static late SharedPreferences _preferenceLisRISGiu;
  static late SharedPreferences _preferencesumRISGiu;
  //D
  static late SharedPreferences _preferenceLisDELGiu;
  static late SharedPreferences _preferencesumDELGiu;
  //S
  static late SharedPreferences _preferenceLisSANGiu;
  static late SharedPreferences _preferencesumSANGiu;
  //I
  static late SharedPreferences _preferenceLisISTGiu;
  static late SharedPreferences _preferencesumISTGiu;
  //A
  static late SharedPreferences _preferenceLisAPPGiu;
  static late SharedPreferences _preferencesumAPPGiu;
  //D
  static late SharedPreferences _preferenceLisDIVGiu;
  static late SharedPreferences _preferencesumDIVGiu;
  //U
  static late SharedPreferences _preferenceLisUTIGiu;
  static late SharedPreferences _preferencesumUTIGiu;
  //S
  static late SharedPreferences _preferenceLisSPEGiu;
  static late SharedPreferences _preferencesumSPEGiu;

  //SECONDO
  //R
  static const _keyviRISGiu = "viRISGiu";
  static const _keyrislistaGiu = "rislistaGiu";
  static const _keysumRISGiu = "sumRISGiu";
  //D
  static const _keysumDELGiu = "sumDELGiu";
  static const _keydellistaGiu = "dellistaGiu";
  //S
  static const _keysumSANGiu = "sumSANGiu";
  static const _keysanlistaGiu = "sanlistaGiu";
  //I
  static const _keysumISTGiu = "sumISTGiu";
  static const _keyistlistaGiu = "istlistaGiu";
  //A
  static const _keysumAPPGiu = "sumAPPGiu";
  static const _keyapplistaGiu = "applistaGiu";
  //D
  static const _keysumDIVGiu = "sumDIVGiu";
  static const _keydivlistaGiu = "divlistaGiu";
  //U
  static const _keysumUTIGiu = "sumUTIGiu";
  static const _keyutilistaGiu = "utilistaGiu";
  //S
  static const _keysumSPEGiu = "sumSPEGiu";
  static const _keyspelistaGiu = "spelistaGiu";

//TERZO

//R

  static Future initLisRISGiu() async {
    _preferenceLisRISGiu = await SharedPreferences.getInstance();
  }

  static Future initsumRISGiu() async {
    _preferencesumRISGiu = await SharedPreferences.getInstance();
  }

//D
  static Future initsumDELGiu() async {
    _preferencesumDELGiu = await SharedPreferences.getInstance();
  }

  static Future initLisDELGiu() async {
    _preferenceLisDELGiu = await SharedPreferences.getInstance();
  }

//S
  static Future initsumSANGiu() async {
    _preferencesumSANGiu = await SharedPreferences.getInstance();
  }

  static Future initLisSANGiu() async {
    _preferenceLisSANGiu = await SharedPreferences.getInstance();
  }

//I
  static Future initsumISTGiu() async {
    _preferencesumISTGiu = await SharedPreferences.getInstance();
  }

  static Future initLisISTGiu() async {
    _preferenceLisISTGiu = await SharedPreferences.getInstance();
  }

//A
  static Future initsumAPPGiu() async {
    _preferencesumAPPGiu = await SharedPreferences.getInstance();
  }

  static Future initLisAPPGiu() async {
    _preferenceLisAPPGiu = await SharedPreferences.getInstance();
  }

//D
  static Future initsumDIVGiu() async {
    _preferencesumDIVGiu = await SharedPreferences.getInstance();
  }

  static Future initLisDIVGiu() async {
    _preferenceLisDIVGiu = await SharedPreferences.getInstance();
  }

//U
  static Future initsumUTIGiu() async {
    _preferencesumUTIGiu = await SharedPreferences.getInstance();
  }

  static Future initLisUTIGiu() async {
    _preferenceLisUTIGiu = await SharedPreferences.getInstance();
  }

//S
  static Future initsumSPEGiu() async {
    _preferencesumSPEGiu = await SharedPreferences.getInstance();
  }

  static Future initLisSPEGiu() async {
    _preferenceLisSPEGiu = await SharedPreferences.getInstance();
  }

//QUARTO

//R

  static Future setDataLisRISGiu(List<String> rislistaGiu) async {
    await _preferenceLisRISGiu.setStringList(_keyrislistaGiu, rislistaGiu);
  }

  static Future setDatasumRISGiu(int sumRISGiu) async {
    await _preferencesumRISGiu.setInt(_keysumRISGiu, sumRISGiu);
  }

//D
  static Future setDatasumDELGiu(int sumDELGiu) async {
    await _preferencesumDELGiu.setInt(_keysumDELGiu, sumDELGiu);
  }

  static Future setDataLisDELGiu(List<String> dellistaGiu) async {
    await _preferenceLisDELGiu.setStringList(_keydellistaGiu, dellistaGiu);
  }

//S
  static Future setDatasumSANGiu(int sumSANGiu) async {
    await _preferencesumSANGiu.setInt(_keysumSANGiu, sumSANGiu);
  }

  static Future setDataLisSANGiu(List<String> sanlistaGiu) async {
    await _preferenceLisSANGiu.setStringList(_keysanlistaGiu, sanlistaGiu);
  }

//I
  static Future setDatasumISTGiu(int sumISTGiu) async {
    await _preferencesumISTGiu.setInt(_keysumISTGiu, sumISTGiu);
  }

  static Future setDataLisISTGiu(List<String> istlistaGiu) async {
    await _preferenceLisISTGiu.setStringList(_keyistlistaGiu, istlistaGiu);
  }

//A
  static Future setDatasumAPPGiu(int sumAPPGiu) async {
    await _preferencesumAPPGiu.setInt(_keysumAPPGiu, sumAPPGiu);
  }

  static Future setDataLiAPPGiu(List<String> applistaGiu) async {
    await _preferenceLisAPPGiu.setStringList(_keyapplistaGiu, applistaGiu);
  }

//D
  static Future setDatasumDIVGiu(int sumDIVGiu) async {
    await _preferencesumDIVGiu.setInt(_keysumDIVGiu, sumDIVGiu);
  }

  static Future setDataLisDIVGiu(List<String> divlistaGiu) async {
    await _preferenceLisDIVGiu.setStringList(_keydivlistaGiu, divlistaGiu);
  }

//U
  static Future setDatasumUTIGiu(int sumUTIGiu) async {
    await _preferencesumUTIGiu.setInt(_keysumUTIGiu, sumUTIGiu);
  }

  static Future setDataLisUTIGiu(List<String> utilistaGiu) async {
    await _preferenceLisUTIGiu.setStringList(_keyutilistaGiu, utilistaGiu);
  }

//S
  static Future setDatasumSPEGiu(int sumSPEGiu) async {
    await _preferencesumSPEGiu.setInt(_keysumSPEGiu, sumSPEGiu);
  }

  static Future setDataLisSPEGiu(List<String> spelistaGiu) async {
    await _preferenceLisSPEGiu.setStringList(_keyspelistaGiu, spelistaGiu);
  }

//QUINTO
//R
  static List<String>? getLisRISGiu() =>
      _preferenceLisRISGiu.getStringList(_keyrislistaGiu);
  static int? getDatasumRISGiu() => _preferencesumRISGiu.getInt(_keysumRISGiu);
//D
  static int? getDatasumDELGiu() => _preferencesumDELGiu.getInt(_keysumDELGiu);
  static List<String>? getLisDELGiu() =>
      _preferenceLisDELGiu.getStringList(_keydellistaGiu);
//S
  static int? getDatasumSANGiu() => _preferencesumSANGiu.getInt(_keysumSANGiu);
  static List<String>? getLisSANGiu() =>
      _preferenceLisSANGiu.getStringList(_keysanlistaGiu);

//I
  static int? getDatasumISTGiu() => _preferencesumISTGiu.getInt(_keysumISTGiu);
  static List<String>? getLisISTGiu() =>
      _preferenceLisISTGiu.getStringList(_keyistlistaGiu);

//A
  static int? getDatasumAPPGiu() => _preferencesumAPPGiu.getInt(_keysumAPPGiu);
  static List<String>? getLisAPPGiu() =>
      _preferenceLisAPPGiu.getStringList(_keyapplistaGiu);

//D
  static int? getDatasumDIVGiu() => _preferencesumDIVGiu.getInt(_keysumDIVGiu);
  static List<String>? getLisDIVGiu() =>
      _preferenceLisDIVGiu.getStringList(_keydivlistaGiu);

//U
  static int? getDatasumUTIGiu() => _preferencesumUTIGiu.getInt(_keysumUTIGiu);
  static List<String>? getLisUTIGiu() =>
      _preferenceLisUTIGiu.getStringList(_keyutilistaGiu);

//S
  static int? getDatasumSPEGiu() => _preferencesumSPEGiu.getInt(_keysumSPEGiu);
  static List<String>? getLisSPEGiu() =>
      _preferenceLisSPEGiu.getStringList(_keyspelistaGiu);
}
