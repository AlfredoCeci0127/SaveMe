import 'package:shared_preferences/shared_preferences.dart';

class UserSimplePreferencesAgosto {
  //PRIMO
  //R
  static late SharedPreferences _preferenceLisRISAgo;
  static late SharedPreferences _preferencesumRISAgo;
  //D
  static late SharedPreferences _preferenceLisDELAgo;
  static late SharedPreferences _preferencesumDELAgo;
  //S
  static late SharedPreferences _preferenceLisSANAgo;
  static late SharedPreferences _preferencesumSANAgo;
  //I
  static late SharedPreferences _preferenceLisISTAgo;
  static late SharedPreferences _preferencesumISTAgo;
  //A
  static late SharedPreferences _preferenceLisAPPAgo;
  static late SharedPreferences _preferencesumAPPAgo;
  //D
  static late SharedPreferences _preferenceLisDIVAgo;
  static late SharedPreferences _preferencesumDIVAgo;
  //U
  static late SharedPreferences _preferenceLisUTIAgo;
  static late SharedPreferences _preferencesumUTIAgo;
  //S
  static late SharedPreferences _preferenceLisSPEAgo;
  static late SharedPreferences _preferencesumSPEAgo;

  //SECONDO
  //R
  static const _keyrislistaAgo = "rislistaAgo";
  static const _keysumRISAgo = "sumRISAgo";
  //D
  static const _keysumDELAgo = "sumDELAgo";
  static const _keydellistaAgo = "dellistaAgo";
  //S
  static const _keysumSANAgo = "sumSANAgo";
  static const _keysanlistaAgo = "sanlistaAgo";
  //I
  static const _keysumISTAgo = "sumISTAgo";
  static const _keyistlistaAgo = "istlistaAgo";
  //A
  static const _keysumAPPAgo = "sumAPPAgo";
  static const _keyapplistaAgo = "applistaAgo";
  //D
  static const _keysumDIVAgo = "sumDIVAgo";
  static const _keydivlistaAgo = "divlistaAgo";
  //U
  static const _keysumUTIAgo = "sumUTIAgo";
  static const _keyutilistaAgo = "utilistaAgo";
  //S
  static const _keysumSPEAgo = "sumSPEAgo";
  static const _keyspelistaAgo = "spelistaAgo";

//TERZO

//R

  static Future initLisRISAgo() async {
    _preferenceLisRISAgo = await SharedPreferences.getInstance();
  }

  static Future initsumRISAgo() async {
    _preferencesumRISAgo = await SharedPreferences.getInstance();
  }

//D
  static Future initsumDELAgo() async {
    _preferencesumDELAgo = await SharedPreferences.getInstance();
  }

  static Future initLisDELAgo() async {
    _preferenceLisDELAgo = await SharedPreferences.getInstance();
  }

//S
  static Future initsumSANAgo() async {
    _preferencesumSANAgo = await SharedPreferences.getInstance();
  }

  static Future initLisSANAgo() async {
    _preferenceLisSANAgo = await SharedPreferences.getInstance();
  }

//I
  static Future initsumISTAgo() async {
    _preferencesumISTAgo = await SharedPreferences.getInstance();
  }

  static Future initLisISTAgo() async {
    _preferenceLisISTAgo = await SharedPreferences.getInstance();
  }

//A
  static Future initsumAPPAgo() async {
    _preferencesumAPPAgo = await SharedPreferences.getInstance();
  }

  static Future initLisAPPAgo() async {
    _preferenceLisAPPAgo = await SharedPreferences.getInstance();
  }

//D
  static Future initsumDIVAgo() async {
    _preferencesumDIVAgo = await SharedPreferences.getInstance();
  }

  static Future initLisDIVAgo() async {
    _preferenceLisDIVAgo = await SharedPreferences.getInstance();
  }

//U
  static Future initsumUTIAgo() async {
    _preferencesumUTIAgo = await SharedPreferences.getInstance();
  }

  static Future initLisUTIAgo() async {
    _preferenceLisUTIAgo = await SharedPreferences.getInstance();
  }

//S
  static Future initsumSPEAgo() async {
    _preferencesumSPEAgo = await SharedPreferences.getInstance();
  }

  static Future initLisSPEAgo() async {
    _preferenceLisSPEAgo = await SharedPreferences.getInstance();
  }

//QUARTO

//R

  static Future setDataLisRISAgo(List<String> rislistaAgo) async {
    await _preferenceLisRISAgo.setStringList(_keyrislistaAgo, rislistaAgo);
  }

  static Future setDatasumRISAgo(int sumRISAgo) async {
    await _preferencesumRISAgo.setInt(_keysumRISAgo, sumRISAgo);
  }

//D
  static Future setDatasumDELAgo(int sumDELAgo) async {
    await _preferencesumDELAgo.setInt(_keysumDELAgo, sumDELAgo);
  }

  static Future setDataLisDELAgo(List<String> dellistaAgo) async {
    await _preferenceLisDELAgo.setStringList(_keydellistaAgo, dellistaAgo);
  }

//S
  static Future setDatasumSANAgo(int sumSANAgo) async {
    await _preferencesumSANAgo.setInt(_keysumSANAgo, sumSANAgo);
  }

  static Future setDataLisSANAgo(List<String> sanlistaAgo) async {
    await _preferenceLisSANAgo.setStringList(_keysanlistaAgo, sanlistaAgo);
  }

//I
  static Future setDatasumISTAgo(int sumISTAgo) async {
    await _preferencesumISTAgo.setInt(_keysumISTAgo, sumISTAgo);
  }

  static Future setDataLisISTAgo(List<String> istlistaAgo) async {
    await _preferenceLisISTAgo.setStringList(_keyistlistaAgo, istlistaAgo);
  }

//A
  static Future setDatasumAPPAgo(int sumAPPAgo) async {
    await _preferencesumAPPAgo.setInt(_keysumAPPAgo, sumAPPAgo);
  }

  static Future setDataLiAPPAgo(List<String> applistaAgo) async {
    await _preferenceLisAPPAgo.setStringList(_keyapplistaAgo, applistaAgo);
  }

//D
  static Future setDatasumDIVAgo(int sumDIVAgo) async {
    await _preferencesumDIVAgo.setInt(_keysumDIVAgo, sumDIVAgo);
  }

  static Future setDataLisDIVAgo(List<String> divlistaAgo) async {
    await _preferenceLisDIVAgo.setStringList(_keydivlistaAgo, divlistaAgo);
  }

//U
  static Future setDatasumUTIAgo(int sumUTIAgo) async {
    await _preferencesumUTIAgo.setInt(_keysumUTIAgo, sumUTIAgo);
  }

  static Future setDataLisUTIAgo(List<String> utilistaAgo) async {
    await _preferenceLisUTIAgo.setStringList(_keyutilistaAgo, utilistaAgo);
  }

//S
  static Future setDatasumSPEAgo(int sumSPEAgo) async {
    await _preferencesumSPEAgo.setInt(_keysumSPEAgo, sumSPEAgo);
  }

  static Future setDataLisSPEAgo(List<String> spelistaAgo) async {
    await _preferenceLisSPEAgo.setStringList(_keyspelistaAgo, spelistaAgo);
  }

//QUINTO
//R
  static List<String>? getLisRISAgo() =>
      _preferenceLisRISAgo.getStringList(_keyrislistaAgo);
  static int? getDatasumRISAgo() => _preferencesumRISAgo.getInt(_keysumRISAgo);
//D
  static int? getDatasumDELAgo() => _preferencesumDELAgo.getInt(_keysumDELAgo);
  static List<String>? getLisDELAgo() =>
      _preferenceLisDELAgo.getStringList(_keydellistaAgo);
//S
  static int? getDatasumSANAgo() => _preferencesumSANAgo.getInt(_keysumSANAgo);
  static List<String>? getLisSANAgo() =>
      _preferenceLisSANAgo.getStringList(_keysanlistaAgo);

//I
  static int? getDatasumISTAgo() => _preferencesumISTAgo.getInt(_keysumISTAgo);
  static List<String>? getLisISTAgo() =>
      _preferenceLisISTAgo.getStringList(_keyistlistaAgo);

//A
  static int? getDatasumAPPAgo() => _preferencesumAPPAgo.getInt(_keysumAPPAgo);
  static List<String>? getLisAPPAgo() =>
      _preferenceLisAPPAgo.getStringList(_keyapplistaAgo);

//D
  static int? getDatasumDIVAgo() => _preferencesumDIVAgo.getInt(_keysumDIVAgo);
  static List<String>? getLisDIVAgo() =>
      _preferenceLisDIVAgo.getStringList(_keydivlistaAgo);

//U
  static int? getDatasumUTIAgo() => _preferencesumUTIAgo.getInt(_keysumUTIAgo);
  static List<String>? getLisUTIAgo() =>
      _preferenceLisUTIAgo.getStringList(_keyutilistaAgo);

//S
  static int? getDatasumSPEAgo() => _preferencesumSPEAgo.getInt(_keysumSPEAgo);
  static List<String>? getLisSPEAgo() =>
      _preferenceLisSPEAgo.getStringList(_keyspelistaAgo);
}
