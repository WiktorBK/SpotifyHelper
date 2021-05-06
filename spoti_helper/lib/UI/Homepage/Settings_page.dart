import 'dart:html';

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
              child: Stack(children: <Widget>[
              Container(
              margin: EdgeInsets.only(
              top: 70, left: MediaQuery.of(context).size.width * 0.5 - 60),
              width: 120.0,
              height: 120.0,
              decoration: BoxDecoration(
              image: DecorationImage(
              fit: BoxFit.cover, image: NetworkImage('https://png.pngtree.com/png-vector/20190909/ourmid/pngtree-outline-user-icon-png-image_1727916.jpg')),
              borderRadius: BorderRadius.all(Radius.circular(100.0)),
              color: Colors.redAccent,
  ),
),
Container(
  height: 420,
              child: Center(
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[
                   Text('Travis Scott', style: TextStyle(fontSize: 20),),
                 ],
               ),
             ),

),

SingleChildScrollView(
  child: Column(
    
  ),
)


]));

              
  }
}