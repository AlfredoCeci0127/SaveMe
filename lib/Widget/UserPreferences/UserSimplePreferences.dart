import 'package:shared_preferences/shared_preferences.dart';

class UserSimplePreferences {
  //PRIMO
  //R
  static late SharedPreferences _preferences;
  static late SharedPreferences _preferenceLisRIS;
  static late SharedPreferences _preferencesumRIS;
  //D
  static late SharedPreferences _preferenceLisDEL;
  static late SharedPreferences _preferencesumDEL;
  //S
  static late SharedPreferences _preferenceLisSAN;
  static late SharedPreferences _preferencesumSAN;
  //I
  static late SharedPreferences _preferenceLisIST;
  static late SharedPreferences _preferencesumIST;
  //A
  static late SharedPreferences _preferenceLisAPP;
  static late SharedPreferences _preferencesumAPP;
  //D
  static late SharedPreferences _preferenceLisDIV;
  static late SharedPreferences _preferencesumDIV;
  //U
  static late SharedPreferences _preferenceLisUTI;
  static late SharedPreferences _preferencesumUTI;
  //S
  static late SharedPreferences _preferenceLisSPE;
  static late SharedPreferences _preferencesumSPE;

  //SECONDO
  static const _keyname = 'name';
  //R
  static const _keyrislista = "rislista";
  static const _keysumRIS = "sumRIS";
  //D
  static const _keydellista = "dellista";
  static const _keysumDEL = "sumDEL";
  //S
  static const _keysanlista = "sanlista";
  static const _keysumSAN = "sumSAN";
  //I
  static const _keyistlista = "istlista";
  static const _keysumIST = "sumIST";
  //A
  static const _keyapplista = "applista";
  static const _keysumAPP = "sumAPP";
  //D
  static const _keydivlista = "divlista";
  static const _keysumDIV = "sumDIV";
  //U
  static const _keyutilista = "utilista";
  static const _keysumUTI = "sumUTI";
  //S
  static const _keyspelista = "spelista";
  static const _keysumSPE = "sumSPE";

//TERZO
  static Future init() async {
    _preferences = await SharedPreferences.getInstance();
  }

//R

  static Future initLisRIS() async {
    _preferenceLisRIS = await SharedPreferences.getInstance();
  }

  static Future initsumRIS() async {
    _preferencesumRIS = await SharedPreferences.getInstance();
  }

//D

  static Future initLisDEL() async {
    _preferenceLisDEL = await SharedPreferences.getInstance();
  }

  static Future initsumDEL() async {
    _preferencesumDEL = await SharedPreferences.getInstance();
  }

//S

  static Future initLisSAN() async {
    _preferenceLisSAN = await SharedPreferences.getInstance();
  }

  static Future initsumSAN() async {
    _preferencesumSAN = await SharedPreferences.getInstance();
  }

//I

  static Future initLisIST() async {
    _preferenceLisIST = await SharedPreferences.getInstance();
  }

  static Future initsumIST() async {
    _preferencesumIST = await SharedPreferences.getInstance();
  }

//A

  static Future initLisAPP() async {
    _preferenceLisAPP = await SharedPreferences.getInstance();
  }

  static Future initsumAPP() async {
    _preferencesumAPP = await SharedPreferences.getInstance();
  }

//D

  static Future initLisDIV() async {
    _preferenceLisDIV = await SharedPreferences.getInstance();
  }

  static Future initsumDIV() async {
    _preferencesumDIV = await SharedPreferences.getInstance();
  }

//U

  static Future initLisUTI() async {
    _preferenceLisUTI = await SharedPreferences.getInstance();
  }

  static Future initsumUTI() async {
    _preferencesumUTI = await SharedPreferences.getInstance();
  }

//S

  static Future initLisSPE() async {
    _preferenceLisSPE = await SharedPreferences.getInstance();
  }

  static Future initsumSPE() async {
    _preferencesumSPE = await SharedPreferences.getInstance();
  }

//QUARTO
  static Future setData(String name) async {
    await _preferences.setString(_keyname, name);
  }

//R

  static Future setDataLisRIS(List<String> rislista) async {
    await _preferenceLisRIS.setStringList(_keyrislista, rislista);
  }

  static Future setDatasumRIS(int sumRIS) async {
    await _preferencesumRIS.setInt(_keysumRIS, sumRIS);
  }

//D

  static Future setDataLisDEL(List<String> dellista) async {
    await _preferenceLisDEL.setStringList(_keydellista, dellista);
  }

  static Future setDatasumDEL(int sumDEL) async {
    await _preferencesumDEL.setInt(_keysumDEL, sumDEL);
  }

//S

  static Future setDataLisSAN(List<String> sanlista) async {
    await _preferenceLisSAN.setStringList(_keysanlista, sanlista);
  }

  static Future setDatasumSAN(int sumSAN) async {
    await _preferencesumSAN.setInt(_keysumSAN, sumSAN);
  }

//I

  static Future setDataLisIST(List<String> istlista) async {
    await _preferenceLisIST.setStringList(_keyistlista, istlista);
  }

  static Future setDatasumIST(int sumIST) async {
    await _preferencesumIST.setInt(_keysumIST, sumIST);
  }

//A

  static Future setDataLiAPP(List<String> applista) async {
    await _preferenceLisAPP.setStringList(_keyapplista, applista);
  }

  static Future setDatasumAPP(int sumAPP) async {
    await _preferencesumAPP.setInt(_keysumAPP, sumAPP);
  }

//D

  static Future setDataLisDIV(List<String> divlista) async {
    await _preferenceLisDIV.setStringList(_keydivlista, divlista);
  }

  static Future setDatasumDIV(int sumDIV) async {
    await _preferencesumDIV.setInt(_keysumDIV, sumDIV);
  }

//U

  static Future setDataLisUTI(List<String> utilista) async {
    await _preferenceLisUTI.setStringList(_keyutilista, utilista);
  }

  static Future setDatasumUTI(int sumUTI) async {
    await _preferencesumUTI.setInt(_keysumUTI, sumUTI);
  }

//S

  static Future setDataLisSPE(List<String> spelista) async {
    await _preferenceLisSPE.setStringList(_keyspelista, spelista);
  }

  static Future setDatasumSPE(int sumSPE) async {
    await _preferencesumSPE.setInt(_keysumSPE, sumSPE);
  }

//QUINTO
  static String? getData() => _preferences.getString(_keyname);
//R

  static List<String>? getLisRIS() =>
      _preferenceLisRIS.getStringList(_keyrislista);
  static int? getDatasumRIS() => _preferencesumRIS.getInt(_keysumRIS);
//D

  static List<String>? getLisDEL() =>
      _preferenceLisDEL.getStringList(_keydellista);
  static int? getDatasumDEL() => _preferencesumDEL.getInt(_keysumDEL);
//S

  static List<String>? getLisSAN() =>
      _preferenceLisSAN.getStringList(_keysanlista);
  static int? getDatasumSAN() => _preferencesumSAN.getInt(_keysumSAN);
//I

  static List<String>? getLisIST() =>
      _preferenceLisIST.getStringList(_keyistlista);
  static int? getDatasumIST() => _preferencesumIST.getInt(_keysumIST);

//A

  static List<String>? getLisAPP() =>
      _preferenceLisAPP.getStringList(_keyapplista);
  static int? getDatasumAPP() => _preferencesumAPP.getInt(_keysumAPP);

//D

  static List<String>? getLisDIV() =>
      _preferenceLisDIV.getStringList(_keydivlista);
  static int? getDatasumDIV() => _preferencesumDIV.getInt(_keysumDIV);

//U

  static List<String>? getLisUTI() =>
      _preferenceLisUTI.getStringList(_keyutilista);
  static int? getDatasumUTI() => _preferencesumUTI.getInt(_keysumUTI);

//S

  static List<String>? getLisSPE() =>
      _preferenceLisSPE.getStringList(_keyspelista);
  static int? getDatasumSPE() => _preferencesumSPE.getInt(_keysumSPE);
}
