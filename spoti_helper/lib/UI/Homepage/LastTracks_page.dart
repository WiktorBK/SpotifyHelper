import 'package:flutter/material.dart';
import 'package:spoti_helper/Icons/my_flutter_app_icons.dart';
import 'package:spoti_helper/Models/ListElement.dart';
import 'package:spoti_helper/Models/global.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class LastTracksPage extends StatefulWidget {
  @override
  _LastTracksPageState createState() => _LastTracksPageState();
}

class _LastTracksPageState extends State<LastTracksPage> {
  int selected = 50;
  double fontSize1 = 0.0;
  double fontSize2 = 0.0;
  double fontSize3 = 0.0;
  int index_ = 0;
  FixedExtentScrollController _scrollController =
      FixedExtentScrollController(initialItem: -1);
  Widget build(BuildContext context) {
    double itemWidth = MediaQuery.of(context).size.height * 0.20;
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [gradient1, gradient2],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight)),
        child: Stack(children: <Widget>[
          Column(
            children: [
              Expanded(
                child: ListWheelScrollView(
                  squeeze: 1.2,
                  perspective: 0.0015,
                  onSelectedItemChanged: (x) {
                    setState(() {
                      selected = x;
                    });
                  },
                  controller: _scrollController,
                  physics: FixedExtentScrollPhysics(),
                  children: List.generate(
                      titles.length,
                      (x) => Center(
                            child: Stack(
                              children: <Widget>[
                                Center(
                                  child: AnimatedContainer(
                                    duration: Duration(milliseconds: 350),
                                    width: x == selected
                                        ? MediaQuery.of(context).size.width *
                                            0.80
                                        : MediaQuery.of(context).size.width *
                                            0.70,
                                    height: x == selected
                                        ? MediaQuery.of(context).size.height *
                                            0.18
                                        : MediaQuery.of(context).size.height *
                                            0.17,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              color:
                                                  Colors.black.withOpacity(0.5),
                                              spreadRadius: 3,
                                              blurRadius:
                                                  x == selected ? 6 : 10,
                                              offset: x == selected
                                                  ? Offset(0, 4)
                                                  : Offset(0,
                                                      2) // changes position of shadow
                                              ),
                                        ],
                                        gradient: LinearGradient(
                                            colors: [
                                              x == selected
                                                  ? trackGradient1
                                                  : trackGradient1
                                                      .withOpacity(0.7),
                                              x == selected
                                                  ? trackGradient3
                                                  : trackGradient3
                                                      .withOpacity(0.7)
                                            ],
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(
                                                x == selected ? 35 : 30)),
                                        shape: BoxShape.rectangle),
                                    child: AnimatedContainer(
                                      duration: Duration(milliseconds: 350),
                                      margin: EdgeInsets.only(
                                          top: x == selected ? 17.0 : 18,
                                          left: x == selected ? 72.0 : 70),
                                      constraints: new BoxConstraints.expand(),
                                      child: new Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          new Text(titles[x],
                                              style: TextStyle(
                                                  color: x == selected
                                                      ? Colors.white
                                                      : Colors.white
                                                          .withOpacity(0.4),
                                                  fontSize:
                                                      x == selected ? 20 : 15)),
                                          new Text(artists[x],
                                              style: TextStyle(
                                                  color: x == selected
                                                      ? Colors.white
                                                          .withOpacity(0.7)
                                                      : Colors.white
                                                          .withOpacity(0.3),
                                                  fontSize:
                                                      x == selected ? 15 : 10)),
                                          new AnimatedContainer(
                                              duration:
                                                  Duration(milliseconds: 350),
                                              color: x == selected
                                                  ? Color(0xFF00C6FF)
                                                  : Color(0xFF00C6FF)
                                                      .withOpacity(0.5),
                                              width: x == selected ? 22.0 : 18,
                                              height: 2.0,
                                              margin:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 7.0)),
                                          new AnimatedContainer(
                                              duration:
                                                  Duration(milliseconds: 350),
                                              height: x == selected ? 10 : 5),
                                          new Row(
                                            children: <Widget>[
                                              new Icon(
                                                  Icons.watch_later_outlined,
                                                  size: x == selected ? 13 : 10,
                                                  color: x == selected
                                                      ? Colors.white
                                                      : Colors.white
                                                          .withOpacity(0.4)),
                                              new Text(time[x],
                                                  style: TextStyle(
                                                      color: x == selected
                                                          ? Colors.white
                                                              .withOpacity(0.7)
                                                          : Colors.white
                                                              .withOpacity(0.3),
                                                      fontSize: x == selected
                                                          ? 15
                                                          : 10)),
                                              new AnimatedContainer(
                                                  duration: Duration(
                                                      milliseconds: 350),
                                                  width:
                                                      x == selected ? 55 : 40),
                                              new Text(views[x],
                                                  style: TextStyle(
                                                      color: x == selected
                                                          ? Colors.white
                                                              .withOpacity(0.7)
                                                          : Colors.white
                                                              .withOpacity(0.3),
                                                      fontSize: x == selected
                                                          ? 15
                                                          : 10)),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                AnimatedContainer(
                                  duration: Duration(milliseconds: 350),
                                  alignment: new FractionalOffset(0.0, 0.5),
                                  margin: EdgeInsets.only(
                                      left: x == selected
                                          ? itemWidth * 0.12
                                          : itemWidth * 0.45),
                                  child: new Hero(
                                    tag: 'planet-icon-${32432}',
                                    child: new Icon(
                                      Icons.photo,
                                      size: x == selected ? 80 : 60,
                                      color: x == selected
                                          ? Colors.black
                                          : Colors.black.withOpacity(0.4),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )),
                  itemExtent: itemWidth,
                ),
              )
            ],
          ),
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
                'Last Tracks',
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
