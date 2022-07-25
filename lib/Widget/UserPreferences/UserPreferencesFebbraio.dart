import 'package:shared_preferences/shared_preferences.dart';

class UserSimplePreferencesFebbraio {
  //PRIMO
  //R
  static late SharedPreferences _preferenceLisRISFeb;
  static late SharedPreferences _preferencesumRISFeb;
  //D
  static late SharedPreferences _preferenceLisDELFeb;
  static late SharedPreferences _preferencesumDELFeb;
  //S
  static late SharedPreferences _preferenceLisSANFeb;
  static late SharedPreferences _preferencesumSANFeb;
  //I
  static late SharedPreferences _preferenceLisISTFeb;
  static late SharedPreferences _preferencesumISTFeb;
  //A
  static late SharedPreferences _preferenceLisAPPFeb;
  static late SharedPreferences _preferencesumAPPFeb;
  //D
  static late SharedPreferences _preferenceLisDIVFeb;
  static late SharedPreferences _preferencesumDIVFeb;
  //U
  static late SharedPreferences _preferenceLisUTIFeb;
  static late SharedPreferences _preferencesumUTIFeb;
  //S
  static late SharedPreferences _preferenceLisSPEFeb;
  static late SharedPreferences _preferencesumSPEFeb;

  //SECONDO
  //R
  static const _keyrislistaFeb = "rislistaFeb";
  static const _keysumRISFeb = "sumRISFeb";
  //D
  static const _keysumDELFeb = "sumDELFeb";
  static const _keydellistaFeb = "dellistaFeb";
  //S
  static const _keysumSANFeb = "sumSANFeb";
  static const _keysanlistaFeb = "sanlistaFeb";
  //I
  static const _keysumISTFeb = "sumISTFeb";
  static const _keyistlistaFeb = "istlistaFeb";
  //A
  static const _keysumAPPFeb = "sumAPPFeb";
  static const _keyapplistaFeb = "applistaFeb";
  //D
  static const _keysumDIVFeb = "sumDIVFeb";
  static const _keydivlistaFeb = "divlistaFeb";
  //U
  static const _keysumUTIFeb = "sumUTIFeb";
  static const _keyutilistaFeb = "utilistaFeb";
  //S
  static const _keysumSPEFeb = "sumSPEFeb";
  static const _keyspelistaFeb = "spelistaFeb";

//TERZO

//R

  static Future initLisRISFeb() async {
    _preferenceLisRISFeb = await SharedPreferences.getInstance();
  }

  static Future initsumRISFeb() async {
    _preferencesumRISFeb = await SharedPreferences.getInstance();
  }

//D
  static Future initsumDELFeb() async {
    _preferencesumDELFeb = await SharedPreferences.getInstance();
  }

  static Future initLisDELFeb() async {
    _preferenceLisDELFeb = await SharedPreferences.getInstance();
  }

//S
  static Future initsumSANFeb() async {
    _preferencesumSANFeb = await SharedPreferences.getInstance();
  }

  static Future initLisSANFeb() async {
    _preferenceLisSANFeb = await SharedPreferences.getInstance();
  }

//I
  static Future initsumISTFeb() async {
    _preferencesumISTFeb = await SharedPreferences.getInstance();
  }

  static Future initLisISTFeb() async {
    _preferenceLisISTFeb = await SharedPreferences.getInstance();
  }

//A
  static Future initsumAPPFeb() async {
    _preferencesumAPPFeb = await SharedPreferences.getInstance();
  }

  static Future initLisAPPFeb() async {
    _preferenceLisAPPFeb = await SharedPreferences.getInstance();
  }

//D
  static Future initsumDIVFeb() async {
    _preferencesumDIVFeb = await SharedPreferences.getInstance();
  }

  static Future initLisDIVFeb() async {
    _preferenceLisDIVFeb = await SharedPreferences.getInstance();
  }

//U
  static Future initsumUTIFeb() async {
    _preferencesumUTIFeb = await SharedPreferences.getInstance();
  }

  static Future initLisUTIFeb() async {
    _preferenceLisUTIFeb = await SharedPreferences.getInstance();
  }

//S
  static Future initsumSPEFeb() async {
    _preferencesumSPEFeb = await SharedPreferences.getInstance();
  }

  static Future initLisSPEFeb() async {
    _preferenceLisSPEFeb = await SharedPreferences.getInstance();
  }

//QUARTO

//R

  static Future setDataLisRISFeb(List<String> rislistaFeb) async {
    await _preferenceLisRISFeb.setStringList(_keyrislistaFeb, rislistaFeb);
  }

  static Future setDatasumRISFeb(int sumRISFeb) async {
    await _preferencesumRISFeb.setInt(_keysumRISFeb, sumRISFeb);
  }

//D
  static Future setDatasumDELFeb(int sumDELFeb) async {
    await _preferencesumDELFeb.setInt(_keysumDELFeb, sumDELFeb);
  }

  static Future setDataLisDELFeb(List<String> dellistaFeb) async {
    await _preferenceLisDELFeb.setStringList(_keydellistaFeb, dellistaFeb);
  }

//S
  static Future setDatasumSANFeb(int sumSANFeb) async {
    await _preferencesumSANFeb.setInt(_keysumSANFeb, sumSANFeb);
  }

  static Future setDataLisSANFeb(List<String> sanlistaFeb) async {
    await _preferenceLisSANFeb.setStringList(_keysanlistaFeb, sanlistaFeb);
  }

//I
  static Future setDatasumISTFeb(int sumISTFeb) async {
    await _preferencesumISTFeb.setInt(_keysumISTFeb, sumISTFeb);
  }

  static Future setDataLisISTFeb(List<String> istlistaFeb) async {
    await _preferenceLisISTFeb.setStringList(_keyistlistaFeb, istlistaFeb);
  }

//A
  static Future setDatasumAPPFeb(int sumAPPFeb) async {
    await _preferencesumAPPFeb.setInt(_keysumAPPFeb, sumAPPFeb);
  }

  static Future setDataLiAPPFeb(List<String> applistaFeb) async {
    await _preferenceLisAPPFeb.setStringList(_keyapplistaFeb, applistaFeb);
  }

//D
  static Future setDatasumDIVFeb(int sumDIVFeb) async {
    await _preferencesumDIVFeb.setInt(_keysumDIVFeb, sumDIVFeb);
  }

  static Future setDataLisDIVFeb(List<String> divlistaFeb) async {
    await _preferenceLisDIVFeb.setStringList(_keydivlistaFeb, divlistaFeb);
  }

//U
  static Future setDatasumUTIFeb(int sumUTIFeb) async {
    await _preferencesumUTIFeb.setInt(_keysumUTIFeb, sumUTIFeb);
  }

  static Future setDataLisUTIFeb(List<String> utilistaFeb) async {
    await _preferenceLisUTIFeb.setStringList(_keyutilistaFeb, utilistaFeb);
  }

//S
  static Future setDatasumSPEFeb(int sumSPEFeb) async {
    await _preferencesumSPEFeb.setInt(_keysumSPEFeb, sumSPEFeb);
  }

  static Future setDataLisSPEFeb(List<String> spelistaFeb) async {
    await _preferenceLisSPEFeb.setStringList(_keyspelistaFeb, spelistaFeb);
  }

//QUINTO
//R
  static List<String>? getLisRISFeb() =>
      _preferenceLisRISFeb.getStringList(_keyrislistaFeb);
  static int? getDatasumRISFeb() => _preferencesumRISFeb.getInt(_keysumRISFeb);
//D
  static int? getDatasumDELFeb() => _preferencesumDELFeb.getInt(_keysumDELFeb);
  static List<String>? getLisDELFeb() =>
      _preferenceLisDELFeb.getStringList(_keydellistaFeb);
//S
  static int? getDatasumSANFeb() => _preferencesumSANFeb.getInt(_keysumSANFeb);
  static List<String>? getLisSANFeb() =>
      _preferenceLisSANFeb.getStringList(_keysanlistaFeb);

//I
  static int? getDatasumISTFeb() => _preferencesumISTFeb.getInt(_keysumISTFeb);
  static List<String>? getLisISTFeb() =>
      _preferenceLisISTFeb.getStringList(_keyistlistaFeb);

//A
  static int? getDatasumAPPFeb() => _preferencesumAPPFeb.getInt(_keysumAPPFeb);
  static List<String>? getLisAPPFeb() =>
      _preferenceLisAPPFeb.getStringList(_keyapplistaFeb);

//D
  static int? getDatasumDIVFeb() => _preferencesumDIVFeb.getInt(_keysumDIVFeb);
  static List<String>? getLisDIVFeb() =>
      _preferenceLisDIVFeb.getStringList(_keydivlistaFeb);

//U
  static int? getDatasumUTIFeb() => _preferencesumUTIFeb.getInt(_keysumUTIFeb);
  static List<String>? getLisUTIFeb() =>
      _preferenceLisUTIFeb.getStringList(_keyutilistaFeb);

//S
  static int? getDatasumSPEFeb() => _preferencesumSPEFeb.getInt(_keysumSPEFeb);
  static List<String>? getLisSPEFeb() =>
      _preferenceLisSPEFeb.getStringList(_keyspelistaFeb);
}
