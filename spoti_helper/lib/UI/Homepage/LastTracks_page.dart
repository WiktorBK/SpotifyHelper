import 'package:flutter/material.dart';
import 'package:spoti_helper/Icons/my_flutter_app_icons.dart';
import 'package:spoti_helper/Models/global.dart';

class LastTracksPage extends StatefulWidget {
  @override
  _LastTracksPageState createState() => _LastTracksPageState();
}

class _LastTracksPageState extends State<LastTracksPage> {
  int selected = 50;
  double fontSize1 = 0.0;
  double fontSize2 = 0.0;
  double fontSize3 = 0.0;

  FixedExtentScrollController _scrollController =
      FixedExtentScrollController(initialItem: -1);

  @override
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
                  squeeze: 1.5,
                  diameterRatio: 1.5,
                  perspective: 0.002,
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
                                    width: x == selected ? 280 : 240,
                                    height: x == selected ? 110 : 80,
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.black
                                                  .withOpacity(0.32),
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
                                                      .withOpacity(0.7),
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
                                          left: x == selected ? 74.0 : 40),
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
                                                  fontSize: titles[x].length <
                                                              15 &&
                                                          x == selected
                                                      ? 20
                                                      : x == selected &&
                                                              titles[x]
                                                                      .length >=
                                                                  15
                                                          ? 17
                                                          : x != selected &&
                                                                  titles[x]
                                                                          .length <
                                                                      15
                                                              ? 15
                                                              : 14)),
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
                                          new Container(
                                              height: x == selected ? 10 : 5),
                                          new Row(
                                            children: <Widget>[
                                              new AnimatedDefaultTextStyle(
                                                duration:
                                                    Duration(milliseconds: 350),
                                                style: TextStyle(
                                                    color: x == selected
                                                        ? Colors.white
                                                            .withOpacity(0.7)
                                                        : Colors.white
                                                            .withOpacity(0),
                                                    fontSize:
                                                        x == selected ? 15 : 0),
                                                child: new Text(
                                                  time[x],
                                                ),
                                              ),
                                              new Container(
                                                  width:
                                                      x == selected ? 55 : 40),
                                              AnimatedDefaultTextStyle(
                                                duration:
                                                    Duration(milliseconds: 350),
                                                style: TextStyle(
                                                    color: x == selected
                                                        ? Colors.white
                                                            .withOpacity(0.7)
                                                        : Colors.white
                                                            .withOpacity(0),
                                                    fontSize:
                                                        x == selected ? 15 : 0),
                                                child: new Text(views[x]),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                AnimatedContainer(
                                  height: x == selected ? 80 : 50,
                                  width: x == selected ? 80 : 50,
                                  margin: EdgeInsets.only(
                                      left: x == selected ? 15 : 40,
                                      top: x == selected ? 20 : 35),
                                  decoration: new BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: new DecorationImage(
                                          fit: BoxFit.fill,
                                          image: new NetworkImage(
                                              "https://i.imgur.com/BoN9kdC.png"))),
                                  duration: Duration(milliseconds: 350),
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
            padding: EdgeInsets.only(bottom: 30),
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
