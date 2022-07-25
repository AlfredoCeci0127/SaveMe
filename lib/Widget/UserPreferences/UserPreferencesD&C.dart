import 'package:shared_preferences/shared_preferences.dart';

class UserPreferencesDebitorieCreditori {
  //1
  static late SharedPreferences _prefs;
  static late SharedPreferences _prefslistaNomi;
  static late SharedPreferences _prefslistaData;
  static late SharedPreferences _prefslistaDescrizione;

  //2
  static const _keyuserList = 'userList';
  static const _keylistaNomi = 'listaNomi';
  static const _keylistaData = 'listaData';
  static const _keylistaDescrizione = 'listaDescrizione';

  //3
  static Future inituserList() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static Future inituserlistaNomi() async {
    _prefslistaNomi = await SharedPreferences.getInstance();
  }

  static Future inituserlistaData() async {
    _prefslistaData = await SharedPreferences.getInstance();
  }

  static Future inituserlistaDescrizione() async {
    _prefslistaDescrizione = await SharedPreferences.getInstance();
  }

  //4
  static Future setDatauserList(List<String> userList) async {
    await _prefs.setStringList(_keyuserList, userList);
  }

  static Future setDatalistaNomi(List<String> listaNomi) async {
    await _prefslistaNomi.setStringList(_keylistaNomi, listaNomi);
  }

  static Future setDatalistaDescrizione(List<String> listaDescrizione) async {
    await _prefslistaDescrizione.setStringList(
        _keylistaDescrizione, listaDescrizione);
  }

  static Future setDatalistaData(List<String> listaData) async {
    await _prefslistaData.setStringList(_keylistaData, listaData);
  }

  //5
  static List<String>? getuserList() => _prefs.getStringList(_keyuserList);
  static List<String>? getlistaNomi() =>
      _prefslistaNomi.getStringList(_keylistaNomi);
  static List<String>? getlistaDescrizione() =>
      _prefslistaDescrizione.getStringList(_keylistaDescrizione);
  static List<String>? getlistaData() =>
      _prefslistaData.getStringList(_keylistaData);
}
