import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Anni/2022.dart';

class DropDownMenu extends StatefulWidget {
  DropDownMenu({Key? key}) : super(key: key);

  @override
  State<DropDownMenu> createState() => _DropDownMenuState();
}

class _DropDownMenuState extends State<DropDownMenu> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: DropdownButtonHideUnderline(
      child: DropdownButton2(
        buttonWidth: 40,
        customButton: const Text(
          "Cambia anno",
          style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white70),
        ),
        customItemsIndexes: const [5],
        customItemsHeight: 8,
        items: [
          ...MenuItems.firstItems.map(
            (item) => DropdownMenuItem<MenuItem>(
              value: item,
              child: MenuItems.buildItem(item),
            ),
          ),
        ],
        onChanged: (value) {
          MenuItems.onChanged(context, value as MenuItem);
        },
        itemHeight: 40,
        itemPadding: const EdgeInsets.only(left: 10, right: 10),
        dropdownWidth: 140,
        dropdownPadding: const EdgeInsets.symmetric(vertical: 6),
        dropdownDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: Colors.black,
        ),
        dropdownElevation: 8,
        offset: const Offset(0, 8),
      ),
    ));
  }
}

class MenuItem {
  final String text;

  const MenuItem({
    required this.text,
  });
}

class MenuItems {
  static const List<MenuItem> firstItems = [
    primo,
    secondo,
    terzo,
    quarto,
    quinto
  ];

  static const primo = MenuItem(text: '2022');
  static const secondo = MenuItem(text: '2023');
  static const terzo = MenuItem(text: '2024');
  static const quarto = MenuItem(text: '2025');
  static const quinto = MenuItem(text: '2026');

  static Widget buildItem(MenuItem item) {
    return Row(
      children: [
        Text(
          item.text,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  static onChanged(BuildContext context, MenuItem item) {
    switch (item) {
      case MenuItems.primo:
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => VentiDuePage(name: '')));
        break;
      case MenuItems.terzo:
        //Do something
        break;
      case MenuItems.secondo:
        //Do something
        break;
      case MenuItems.quarto:
        //Do something
        break;
    }
  }
}
