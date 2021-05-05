import 'package:flutter/material.dart';
import 'package:spoti_helper/Models/global.dart';
import 'package:spoti_helper/UI/Homepage/LastTracks_page.dart';
import 'package:spoti_helper/icons/my_flutter_app_icons.dart';

class ListElement extends StatefulWidget {
  @override
  _ListElementState createState() => _ListElementState();
}

class _ListElementState extends State<ListElement> {
  @override
  Widget build(BuildContext context) {
    final planetThumbnail = new Container(
      alignment: new FractionalOffset(0.0, 0.5),
      margin: const EdgeInsets.only(left: 10.0),
      child: new Hero(
        tag: 'planet-icon-${32432}',
        child: new Icon(
          Icons.photo,
          size: 80,
        ),
      ),
    );

    final planetCard = new Container(
      margin:
          const EdgeInsets.only(left: 40.0, right: 40.0, bottom: 15, top: 15),
      decoration: new BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 6,
            offset: Offset(0, 4), // changes position of shadow
          ),
        ],
        gradient: LinearGradient(
            colors: [trackGradient1, trackGradient2],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
        borderRadius: BorderRadius.all(Radius.circular(35)),
      ),
      child: new Container(
        margin: const EdgeInsets.only(top: 15.0, left: 72.0),
        constraints: new BoxConstraints.expand(),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Text(titles[0],
                style: TextStyle(color: Colors.white, fontSize: 25)),
            new Text(artists[0],
                style: TextStyle(
                    color: Colors.white.withOpacity(0.7), fontSize: 20)),
            new Container(
                color: const Color(0xFF00C6FF),
                width: 22.0,
                height: 2.0,
                margin: const EdgeInsets.symmetric(vertical: 8.0)),
            new Row(
              children: <Widget>[
                new Icon(Icons.watch_later_outlined,
                    size: 13.0, color: Colors.white),
                new Text(time[0],
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.7), fontSize: 15)),
                new Container(width: 24.0),
                new Text(views[0],
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.7), fontSize: 15)),
              ],
            )
          ],
        ),
      ),
    );

    return new Container(
      child: new Stack(
        children: <Widget>[
          planetCard,
          planetThumbnail,
        ],
      ),
    );
  }
}
