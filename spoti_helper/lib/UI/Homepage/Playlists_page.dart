import 'package:flutter/material.dart';
import 'package:spoti_helper/Models/global.dart';
import 'package:spoti_helper/icons/my_flutter_app_icons.dart';

class PlaylistsPage extends StatefulWidget {
  @override
  _PlaylistsPageState createState() => _PlaylistsPageState();
}

class _PlaylistsPageState extends State<PlaylistsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [gradient2, gradient3],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight)),
        child: Stack(children: <Widget>[
          Container(
            padding: EdgeInsets.only(bottom: 50),
            height: 160,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
              color: Colors.white,
            ),
            child: Center(
              child: Text(
                'Create a playlist',
                style: titleStyle,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                top: 130, left: MediaQuery.of(context).size.width * 0.5 - 25),
            child: FloatingActionButton(
              child:
                  Icon(MyFlutterApp.spotify_2, color: Colors.black, size: 40),
              backgroundColor: Colors.white,
              onPressed: () {},
            ),
          ),
        ]));
  }
}
