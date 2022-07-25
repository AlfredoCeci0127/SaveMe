import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/Anni/2022.dart';
import 'package:flutter_application_1/Widget/DropDownMenu.dart';
import 'package:flutter_application_1/Widget/UserPreferences/UserSimplePreferences.dart';
import 'package:google_fonts/google_fonts.dart';

class ExpenseControlPage extends StatefulWidget {
  String name;
  ExpenseControlPage({Key? key, required this.name}) : super(key: key);

  @override
  State<ExpenseControlPage> createState() => _ExpenseControlPageState();
}

class _ExpenseControlPageState extends State<ExpenseControlPage> {
  @override
  void initState() {
    super.initState();
    widget.name = UserSimplePreferences.getData() ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return VentiDuePage(name: widget.name);
  }
}
