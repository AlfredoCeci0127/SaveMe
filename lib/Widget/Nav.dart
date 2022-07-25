import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/Widget/UserPreferences/UserSimplePreferences.dart';
import 'package:flutter_application_1/Widget/transaction.dart';
import 'package:flutter_application_1/Widget/transaction_dialog.dart';
import 'package:flutter_application_1/page/Advices.dart';
import 'package:flutter_application_1/page/Advices.dart';
import 'package:flutter_application_1/page/Calcolo.dart';
import 'package:flutter_application_1/page/ExpenseControl.dart';
import 'package:flutter_application_1/page/Goal.dart';
import 'package:flutter_application_1/page/Home.dart';
import 'package:flutter_application_1/page/Account.dart';
import 'package:flutter_application_1/page/transaction_page.dart';

class NavigationDrawerWidget extends StatefulWidget {
  String name;
  NavigationDrawerWidget({Key? key, required this.name}) : super(key: key);
  final Padding = const EdgeInsets.symmetric(horizontal: 20);

  @override
  State<NavigationDrawerWidget> createState() => _NavigationDrawerWidgetState();
}

class _NavigationDrawerWidgetState extends State<NavigationDrawerWidget> {
  @override
  void initState() {
    super.initState();
    widget.name = UserSimplePreferences.getData() ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Material(
            child: Container(
      color: Colors.black,
      child: ListView(children: <Widget>[
        const SizedBox(
          height: 48,
        ),
        buildMenuItem(
            text: "Account: ${widget.name}",
            icon: Icons.account_box,
            onClicked: () => selectedItem(context, 5)),
        const Divider(color: Colors.white, thickness: 2),
        buildMenuItem(
            text: "Home",
            icon: Icons.home,
            onClicked: () => selectedItem(context, 0)),
        const SizedBox(
          height: 40,
        ),
        buildMenuItem(
            text: "Calcolo",
            icon: Icons.calculate,
            onClicked: () => selectedItem(context, 1)),
        const SizedBox(
          height: 40,
        ),
        buildMenuItem(
            text: "Obiettivo Risparmio",
            icon: Icons.center_focus_strong,
            onClicked: () => selectedItem(context, 2)),
        const SizedBox(
          height: 40,
        ),
        buildMenuItem(
            text: "Controllo Spese",
            icon: Icons.wallet,
            onClicked: () => selectedItem(context, 6)),
        const SizedBox(
          height: 40,
        ),
        buildMenuItem(
            text: "Consigli",
            icon: Icons.handshake,
            onClicked: () => selectedItem(context, 3)),
        const SizedBox(
          height: 40,
        ),
        buildMenuItem(
            text: "Debiti e Crediti",
            icon: Icons.inbox,
            onClicked: () => selectedItem(context, 4)),
        const SizedBox(
          height: 40,
        ),
      ]),
    )));
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = Colors.white;

    return ListTile(
      leading: Icon(
        icon,
        color: color,
      ),
      title: Text(text, style: TextStyle(color: color)),
      hoverColor: Colors.white,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => HomePage(
                  name: 'A',
                )));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => CalcoloPage(
                  name: '',
                )));
        break;
      case 2:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => GoalPage(name: '')));
        break;
      case 3:
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => AdvicesPage(name: '')));
        break;
      case 4:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => TransactionPage()));
        break;
      case 5:
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return AccountPage();
        }));
        break;
      case 6:
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => ExpenseControlPage(name: '')));
        break;
    }
  }
}
