import 'package:hive/hive.dart';

part 'transaction.g.dart';

@HiveType(typeId: 1)
class Transaction extends HiveObject {
  @HiveField(4)
  late String name;

  @HiveField(5)
  late DateTime createdDate;

  @HiveField(6)
  late bool isExpense = true;

  @HiveField(7)
  late double amount;
}
