import 'package:shared_preferences/shared_preferences.dart';

class UserSimplePreferencesDicembre {
  //PRIMO
  //R
  static late SharedPreferences _preferenceLisRISDic;
  static late SharedPreferences _preferencesumRISDic;
  //D
  static late SharedPreferences _preferenceLisDELDic;
  static late SharedPreferences _preferencesumDELDic;
  //S
  static late SharedPreferences _preferenceLisSANDic;
  static late SharedPreferences _preferencesumSANDic;
  //I
  static late SharedPreferences _preferenceLisISTDic;
  static late SharedPreferences _preferencesumISTDic;
  //A
  static late SharedPreferences _preferenceLisAPPDic;
  static late SharedPreferences _preferencesumAPPDic;
  //D
  static late SharedPreferences _preferenceLisDIVDic;
  static late SharedPreferences _preferencesumDIVDic;
  //U
  static late SharedPreferences _preferenceLisUTIDic;
  static late SharedPreferences _preferencesumUTIDic;
  //S
  static late SharedPreferences _preferenceLisSPEDic;
  static late SharedPreferences _preferencesumSPEDic;

  //SECONDO
  //R
  static const _keyrislistaDic = "rislistaDic";
  static const _keysumRISDic = "sumRISDic";
  //D
  static const _keysumDELDic = "sumDELDic";
  static const _keydellistaDic = "dellistaDic";
  //S
  static const _keysumSANDic = "sumSANDic";
  static const _keysanlistaDic = "sanlistaDic";
  //I
  static const _keysumISTDic = "sumISTDic";
  static const _keyistlistaDic = "istlistaDic";
  //A
  static const _keysumAPPDic = "sumAPPDic";
  static const _keyapplistaDic = "applistaDic";
  //D
  static const _keysumDIVDic = "sumDIVDic";
  static const _keydivlistaDic = "divlistaDic";
  //U
  static const _keysumUTIDic = "sumUTIDic";
  static const _keyutilistaDic = "utilistaDic";
  //S
  static const _keysumSPEDic = "sumSPEDic";
  static const _keyspelistaDic = "spelistaDic";

//TERZO

//R

  static Future initLisRISDic() async {
    _preferenceLisRISDic = await SharedPreferences.getInstance();
  }

  static Future initsumRISDic() async {
    _preferencesumRISDic = await SharedPreferences.getInstance();
  }

//D
  static Future initsumDELDic() async {
    _preferencesumDELDic = await SharedPreferences.getInstance();
  }

  static Future initLisDELDic() async {
    _preferenceLisDELDic = await SharedPreferences.getInstance();
  }

//S
  static Future initsumSANDic() async {
    _preferencesumSANDic = await SharedPreferences.getInstance();
  }

  static Future initLisSANDic() async {
    _preferenceLisSANDic = await SharedPreferences.getInstance();
  }

//I
  static Future initsumISTDic() async {
    _preferencesumISTDic = await SharedPreferences.getInstance();
  }

  static Future initLisISTDic() async {
    _preferenceLisISTDic = await SharedPreferences.getInstance();
  }

//A
  static Future initsumAPPDic() async {
    _preferencesumAPPDic = await SharedPreferences.getInstance();
  }

  static Future initLisAPPDic() async {
    _preferenceLisAPPDic = await SharedPreferences.getInstance();
  }

//D
  static Future initsumDIVDic() async {
    _preferencesumDIVDic = await SharedPreferences.getInstance();
  }

  static Future initLisDIVDic() async {
    _preferenceLisDIVDic = await SharedPreferences.getInstance();
  }

//U
  static Future initsumUTIDic() async {
    _preferencesumUTIDic = await SharedPreferences.getInstance();
  }

  static Future initLisUTIDic() async {
    _preferenceLisUTIDic = await SharedPreferences.getInstance();
  }

//S
  static Future initsumSPEDic() async {
    _preferencesumSPEDic = await SharedPreferences.getInstance();
  }

  static Future initLisSPEDic() async {
    _preferenceLisSPEDic = await SharedPreferences.getInstance();
  }

//QUARTO

//R

  static Future setDataLisRISDic(List<String> rislistaDic) async {
    await _preferenceLisRISDic.setStringList(_keyrislistaDic, rislistaDic);
  }

  static Future setDatasumRISDic(int sumRISDic) async {
    await _preferencesumRISDic.setInt(_keysumRISDic, sumRISDic);
  }

//D
  static Future setDatasumDELDic(int sumDELDic) async {
    await _preferencesumDELDic.setInt(_keysumDELDic, sumDELDic);
  }

  static Future setDataLisDELDic(List<String> dellistaDic) async {
    await _preferenceLisDELDic.setStringList(_keydellistaDic, dellistaDic);
  }

//S
  static Future setDatasumSANDic(int sumSANDic) async {
    await _preferencesumSANDic.setInt(_keysumSANDic, sumSANDic);
  }

  static Future setDataLisSANDic(List<String> sanlistaDic) async {
    await _preferenceLisSANDic.setStringList(_keysanlistaDic, sanlistaDic);
  }

//I
  static Future setDatasumISTDic(int sumISTDic) async {
    await _preferencesumISTDic.setInt(_keysumISTDic, sumISTDic);
  }

  static Future setDataLisISTDic(List<String> istlistaDic) async {
    await _preferenceLisISTDic.setStringList(_keyistlistaDic, istlistaDic);
  }

//A
  static Future setDatasumAPPDic(int sumAPPDic) async {
    await _preferencesumAPPDic.setInt(_keysumAPPDic, sumAPPDic);
  }

  static Future setDataLiAPPDic(List<String> applistaDic) async {
    await _preferenceLisAPPDic.setStringList(_keyapplistaDic, applistaDic);
  }

//D
  static Future setDatasumDIVDic(int sumDIVDic) async {
    await _preferencesumDIVDic.setInt(_keysumDIVDic, sumDIVDic);
  }

  static Future setDataLisDIVDic(List<String> divlistaDic) async {
    await _preferenceLisDIVDic.setStringList(_keydivlistaDic, divlistaDic);
  }

//U
  static Future setDatasumUTIDic(int sumUTIDic) async {
    await _preferencesumUTIDic.setInt(_keysumUTIDic, sumUTIDic);
  }

  static Future setDataLisUTIDic(List<String> utilistaDic) async {
    await _preferenceLisUTIDic.setStringList(_keyutilistaDic, utilistaDic);
  }

//S
  static Future setDatasumSPEDic(int sumSPEDic) async {
    await _preferencesumSPEDic.setInt(_keysumSPEDic, sumSPEDic);
  }

  static Future setDataLisSPEDic(List<String> spelistaDic) async {
    await _preferenceLisSPEDic.setStringList(_keyspelistaDic, spelistaDic);
  }

//QUINTO
//R
  static List<String>? getLisRISDic() =>
      _preferenceLisRISDic.getStringList(_keyrislistaDic);
  static int? getDatasumRISDic() => _preferencesumRISDic.getInt(_keysumRISDic);
//D
  static int? getDatasumDELDic() => _preferencesumDELDic.getInt(_keysumDELDic);
  static List<String>? getLisDELDic() =>
      _preferenceLisDELDic.getStringList(_keydellistaDic);
//S
  static int? getDatasumSANDic() => _preferencesumSANDic.getInt(_keysumSANDic);
  static List<String>? getLisSANDic() =>
      _preferenceLisSANDic.getStringList(_keysanlistaDic);

//I
  static int? getDatasumISTDic() => _preferencesumISTDic.getInt(_keysumISTDic);
  static List<String>? getLisISTDic() =>
      _preferenceLisISTDic.getStringList(_keyistlistaDic);

//A
  static int? getDatasumAPPDic() => _preferencesumAPPDic.getInt(_keysumAPPDic);
  static List<String>? getLisAPPDic() =>
      _preferenceLisAPPDic.getStringList(_keyapplistaDic);

//D
  static int? getDatasumDIVDic() => _preferencesumDIVDic.getInt(_keysumDIVDic);
  static List<String>? getLisDIVDic() =>
      _preferenceLisDIVDic.getStringList(_keydivlistaDic);

//U
  static int? getDatasumUTIDic() => _preferencesumUTIDic.getInt(_keysumUTIDic);
  static List<String>? getLisUTIDic() =>
      _preferenceLisUTIDic.getStringList(_keyutilistaDic);

//S
  static int? getDatasumSPEDic() => _preferencesumSPEDic.getInt(_keysumSPEDic);
  static List<String>? getLisSPEDic() =>
      _preferenceLisSPEDic.getStringList(_keyspelistaDic);
}
