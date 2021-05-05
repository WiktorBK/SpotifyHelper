import 'package:flutter/material.dart';
import 'package:spoti_helper/Models/global.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [gradient3, gradient4],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight)),
    );
  }
}
