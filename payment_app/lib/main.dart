import 'package:flutter/material.dart';
import 'package:payment_app/home/home.dart';
import 'package:payment_app/send_money/send_money.dart';
import 'package:payment_app/settings/settings.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      //home: HomePage(),
      //home: SendMoneyPage(),
      home: SettingsPage(),
    );
  }
}
