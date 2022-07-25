import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/Widget/UserPreferences/UserSimplePreferences.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/page/Calcolo.dart';
import 'package:flutter_application_1/page/Home.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<AccountPage> {
  String name = "";

  @override
  void initState() {
    super.initState();
    name = UserSimplePreferences.getData() ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text('Account: $name'),
          toolbarHeight: 38,
        ),
        body: Center(
            child: ListView(children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              initialValue: name,
              onChanged: (name) => setState(() => this.name = name),
              decoration: const InputDecoration(labelText: "Nome"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextButton(
                child: const Text("Salva"),
                onPressed: () async {
                  await UserSimplePreferences.setData(name);
                }),
          )
        ])));
  }
}
