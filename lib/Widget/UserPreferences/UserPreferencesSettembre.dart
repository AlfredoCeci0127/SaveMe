import 'package:shared_preferences/shared_preferences.dart';

class UserSimplePreferencesSettembre {
  //PRIMO
  //R
  static late SharedPreferences _preferenceLisRISSet;
  static late SharedPreferences _preferencesumRISSet;
  //D
  static late SharedPreferences _preferenceLisDELSet;
  static late SharedPreferences _preferencesumDELSet;
  //S
  static late SharedPreferences _preferenceLisSANSet;
  static late SharedPreferences _preferencesumSANSet;
  //I
  static late SharedPreferences _preferenceLisISTSet;
  static late SharedPreferences _preferencesumISTSet;
  //A
  static late SharedPreferences _preferenceLisAPPSet;
  static late SharedPreferences _preferencesumAPPSet;
  //D
  static late SharedPreferences _preferenceLisDIVSet;
  static late SharedPreferences _preferencesumDIVSet;
  //U
  static late SharedPreferences _preferenceLisUTISet;
  static late SharedPreferences _preferencesumUTISet;
  //S
  static late SharedPreferences _preferenceLisSPESet;
  static late SharedPreferences _preferencesumSPESet;

  //SECONDO
  //R
  static const _keyrislistaSet = "rislistaSet";
  static const _keysumRISSet = "sumRISSet";
  //D
  static const _keysumDELSet = "sumDELSet";
  static const _keydellistaSet = "dellistaSet";
  //S
  static const _keysumSANSet = "sumSANSet";
  static const _keysanlistaSet = "sanlistaSet";
  //I
  static const _keysumISTSet = "sumISTSet";
  static const _keyistlistaSet = "istlistaSet";
  //A
  static const _keysumAPPSet = "sumAPPSet";
  static const _keyapplistaSet = "applistaSet";
  //D
  static const _keysumDIVSet = "sumDIVSet";
  static const _keydivlistaSet = "divlistaSet";
  //U
  static const _keysumUTISet = "sumUTISet";
  static const _keyutilistaSet = "utilistaSet";
  //S
  static const _keysumSPESet = "sumSPESet";
  static const _keyspelistaSet = "spelistaSet";

//TERZO

//R

  static Future initLisRISSet() async {
    _preferenceLisRISSet = await SharedPreferences.getInstance();
  }

  static Future initsumRISSet() async {
    _preferencesumRISSet = await SharedPreferences.getInstance();
  }

//D
  static Future initsumDELSet() async {
    _preferencesumDELSet = await SharedPreferences.getInstance();
  }

  static Future initLisDELSet() async {
    _preferenceLisDELSet = await SharedPreferences.getInstance();
  }

//S
  static Future initsumSANSet() async {
    _preferencesumSANSet = await SharedPreferences.getInstance();
  }

  static Future initLisSANSet() async {
    _preferenceLisSANSet = await SharedPreferences.getInstance();
  }

//I
  static Future initsumISTSet() async {
    _preferencesumISTSet = await SharedPreferences.getInstance();
  }

  static Future initLisISTSet() async {
    _preferenceLisISTSet = await SharedPreferences.getInstance();
  }

//A
  static Future initsumAPPSet() async {
    _preferencesumAPPSet = await SharedPreferences.getInstance();
  }

  static Future initLisAPPSet() async {
    _preferenceLisAPPSet = await SharedPreferences.getInstance();
  }

//D
  static Future initsumDIVSet() async {
    _preferencesumDIVSet = await SharedPreferences.getInstance();
  }

  static Future initLisDIVSet() async {
    _preferenceLisDIVSet = await SharedPreferences.getInstance();
  }

//U
  static Future initsumUTISet() async {
    _preferencesumUTISet = await SharedPreferences.getInstance();
  }

  static Future initLisUTISet() async {
    _preferenceLisUTISet = await SharedPreferences.getInstance();
  }

//S
  static Future initsumSPESet() async {
    _preferencesumSPESet = await SharedPreferences.getInstance();
  }

  static Future initLisSPESet() async {
    _preferenceLisSPESet = await SharedPreferences.getInstance();
  }

//QUARTO

//R

  static Future setDataLisRISSet(List<String> rislistaSet) async {
    await _preferenceLisRISSet.setStringList(_keyrislistaSet, rislistaSet);
  }

  static Future setDatasumRISSet(int sumRISSet) async {
    await _preferencesumRISSet.setInt(_keysumRISSet, sumRISSet);
  }

//D
  static Future setDatasumDELSet(int sumDELSet) async {
    await _preferencesumDELSet.setInt(_keysumDELSet, sumDELSet);
  }

  static Future setDataLisDELSet(List<String> dellistaSet) async {
    await _preferenceLisDELSet.setStringList(_keydellistaSet, dellistaSet);
  }

//S
  static Future setDatasumSANSet(int sumSANSet) async {
    await _preferencesumSANSet.setInt(_keysumSANSet, sumSANSet);
  }

  static Future setDataLisSANSet(List<String> sanlistaSet) async {
    await _preferenceLisSANSet.setStringList(_keysanlistaSet, sanlistaSet);
  }

//I
  static Future setDatasumISTSet(int sumISTSet) async {
    await _preferencesumISTSet.setInt(_keysumISTSet, sumISTSet);
  }

  static Future setDataLisISTSet(List<String> istlistaSet) async {
    await _preferenceLisISTSet.setStringList(_keyistlistaSet, istlistaSet);
  }

//A
  static Future setDatasumAPPSet(int sumAPPSet) async {
    await _preferencesumAPPSet.setInt(_keysumAPPSet, sumAPPSet);
  }

  static Future setDataLiAPPSet(List<String> applistaSet) async {
    await _preferenceLisAPPSet.setStringList(_keyapplistaSet, applistaSet);
  }

//D
  static Future setDatasumDIVSet(int sumDIVSet) async {
    await _preferencesumDIVSet.setInt(_keysumDIVSet, sumDIVSet);
  }

  static Future setDataLisDIVSet(List<String> divlistaSet) async {
    await _preferenceLisDIVSet.setStringList(_keydivlistaSet, divlistaSet);
  }

//U
  static Future setDatasumUTISet(int sumUTISet) async {
    await _preferencesumUTISet.setInt(_keysumUTISet, sumUTISet);
  }

  static Future setDataLisUTISet(List<String> utilistaSet) async {
    await _preferenceLisUTISet.setStringList(_keyutilistaSet, utilistaSet);
  }

//S
  static Future setDatasumSPESet(int sumSPESet) async {
    await _preferencesumSPESet.setInt(_keysumSPESet, sumSPESet);
  }

  static Future setDataLisSPESet(List<String> spelistaSet) async {
    await _preferenceLisSPESet.setStringList(_keyspelistaSet, spelistaSet);
  }

//QUINTO
//R
  static List<String>? getLisRISSet() =>
      _preferenceLisRISSet.getStringList(_keyrislistaSet);
  static int? getDatasumRISSet() => _preferencesumRISSet.getInt(_keysumRISSet);
//D
  static int? getDatasumDELSet() => _preferencesumDELSet.getInt(_keysumDELSet);
  static List<String>? getLisDELSet() =>
      _preferenceLisDELSet.getStringList(_keydellistaSet);
//S
  static int? getDatasumSANSet() => _preferencesumSANSet.getInt(_keysumSANSet);
  static List<String>? getLisSANSet() =>
      _preferenceLisSANSet.getStringList(_keysanlistaSet);

//I
  static int? getDatasumISTSet() => _preferencesumISTSet.getInt(_keysumISTSet);
  static List<String>? getLisISTSet() =>
      _preferenceLisISTSet.getStringList(_keyistlistaSet);

//A
  static int? getDatasumAPPSet() => _preferencesumAPPSet.getInt(_keysumAPPSet);
  static List<String>? getLisAPPSet() =>
      _preferenceLisAPPSet.getStringList(_keyapplistaSet);

//D
  static int? getDatasumDIVSet() => _preferencesumDIVSet.getInt(_keysumDIVSet);
  static List<String>? getLisDIVSet() =>
      _preferenceLisDIVSet.getStringList(_keydivlistaSet);

//U
  static int? getDatasumUTISet() => _preferencesumUTISet.getInt(_keysumUTISet);
  static List<String>? getLisUTISet() =>
      _preferenceLisUTISet.getStringList(_keyutilistaSet);

//S
  static int? getDatasumSPESet() => _preferencesumSPESet.getInt(_keysumSPESet);
  static List<String>? getLisSPESet() =>
      _preferenceLisSPESet.getStringList(_keyspelistaSet);
}
