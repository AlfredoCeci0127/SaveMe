/*import 'package:hive_flutter/hive_flutter.dart';

class LocalStorageService {
  static const String Names = "Names";

  Future<void> initializeHive() async {
    await Hive.initFlutter();

    await Hive.openBox<String>(Names);
  }

  static final LocalStorageService _instance = LocalStorageService._internal();

  factory LocalStorageService() {
    return _instance;
  }

  LocalStorageService._internal();

  Future<void> saveBudget(String budget) {
    return Hive.box<String>(Names).put("Names", Names);
  }

  String getBalance() {
    return Hive.box<String>(Names).get("Names") ?? "";
  }
}*/
