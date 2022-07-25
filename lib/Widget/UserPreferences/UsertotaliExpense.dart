import 'package:shared_preferences/shared_preferences.dart';

class UsertotaliExpense {
  static late SharedPreferences _preferencetotalRIS;
  static late SharedPreferences _preferencetotalDEL;
  static late SharedPreferences _preferencetotalSAN;
  static late SharedPreferences _preferencetotalAPP;
  static late SharedPreferences _preferencetotalUTI;
  static late SharedPreferences _preferencetotalIST;
  static late SharedPreferences _preferencetotalDIV;
  static late SharedPreferences _preferencetotalSPE;

  static const _keytotalRIS = 'totalRIS';
  static const _keytotalDEL = 'totalDEL';
  static const _keytotalSAN = 'totalSAN';
  static const _keytotalAPP = 'totalAPP';
  static const _keytotalUTI = 'totalUTI';
  static const _keytotalIST = 'totalIST';
  static const _keytotalDIV = 'totalDIV';
  static const _keytotalSPE = 'totalSPE';

  static Future inittotalRIS() async {
    _preferencetotalRIS = await SharedPreferences.getInstance();
  }

  static Future inittotalDEL() async {
    _preferencetotalDEL = await SharedPreferences.getInstance();
  }

  static Future inittotalSAN() async {
    _preferencetotalSAN = await SharedPreferences.getInstance();
  }

  static Future inittotalAPP() async {
    _preferencetotalAPP = await SharedPreferences.getInstance();
  }

  static Future inittotalUTI() async {
    _preferencetotalUTI = await SharedPreferences.getInstance();
  }

  static Future inittotalIST() async {
    _preferencetotalIST = await SharedPreferences.getInstance();
  }

  static Future inittotalDIV() async {
    _preferencetotalDIV = await SharedPreferences.getInstance();
  }

  static Future inittotalSPE() async {
    _preferencetotalSPE = await SharedPreferences.getInstance();
  }

  static Future setDatatotalRIS(int totalRIS) async {
    await _preferencetotalRIS.setInt(_keytotalRIS, totalRIS);
  }

  static Future setDatatotalDEL(int totalDEL) async {
    await _preferencetotalDEL.setInt(_keytotalDEL, totalDEL);
  }

  static Future setDatatotalSPE(int totalSPE) async {
    await _preferencetotalSPE.setInt(_keytotalSPE, totalSPE);
  }

  static Future setDatatotalSAN(int totalSAN) async {
    await _preferencetotalSAN.setInt(_keytotalSAN, totalSAN);
  }

  static Future setDatatotalIST(int totalIST) async {
    await _preferencetotalIST.setInt(_keytotalIST, totalIST);
  }

  static Future setDatatotalAPP(int totalAPP) async {
    await _preferencetotalAPP.setInt(_keytotalAPP, totalAPP);
  }

  static Future setDatatotalUTI(int totalUTI) async {
    await _preferencetotalUTI.setInt(_keytotalUTI, totalUTI);
  }

  static Future setDatatotalDIV(int totalDIV) async {
    await _preferencetotalDIV.setInt(_keytotalDIV, totalDIV);
  }

  static int? gettotalRIS() => _preferencetotalRIS.getInt(_keytotalRIS);
  static int? gettotalDEL() => _preferencetotalDEL.getInt(_keytotalDEL);
  static int? gettotalSPE() => _preferencetotalSPE.getInt(_keytotalSPE);
  static int? gettotalSAN() => _preferencetotalSAN.getInt(_keytotalSAN);
  static int? gettotalIST() => _preferencetotalIST.getInt(_keytotalIST);
  static int? gettotalAPP() => _preferencetotalAPP.getInt(_keytotalAPP);
  static int? gettotalUTI() => _preferencetotalUTI.getInt(_keytotalUTI);
  static int? gettotalDIV() => _preferencetotalDIV.getInt(_keytotalDIV);
}
