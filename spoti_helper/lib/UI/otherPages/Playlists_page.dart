import 'package:flutter/material.dart';
import 'package:spoti_helper/Models/global.dart';
import 'package:spoti_helper/icons/my_flutter_app_icons.dart';

class PlaylistsPage extends StatefulWidget {
  @override
  _PlaylistsPageState createState() => _PlaylistsPageState();
}

class _PlaylistsPageState extends State<PlaylistsPage> {
  double itemWidth = 150.0;
  double notSelectedItemWidth = 50;
  int itemCount = 10;
  int selected = 5;
  FixedExtentScrollController _scrollController =
      FixedExtentScrollController(initialItem: 5);
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [gradient1, gradient2],
                begin: Alignment.centerRight,
                end: Alignment.centerLeft)),
        child: Stack(children: <Widget>[
          Container(
              height: 600,
              child: RotatedBox(
                  quarterTurns: -1,
                  child: ListWheelScrollView(
                    magnification: 2.0,
                    onSelectedItemChanged: (x) {
                      setState(() {
                        selected = x;
                      });
                      print(selected);
                    },
                    controller: _scrollController,
                    physics: FixedExtentScrollPhysics(),
                    children: List.generate(
                        itemCount,
                        
                        (x) => RotatedBox(
                            quarterTurns: 1,
                            child: AnimatedContainer(
                                duration: Duration(milliseconds: 500),
                                width: x == selected ? itemWidth : notSelectedItemWidth,
                                height: x == selected ? itemWidth : itemWidth,
                            alignment: Alignment.center,
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
                                            ]),
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(18)),
                                child: Text("")))),
                    itemExtent: itemWidth,
                  ))),
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
            margin: EdgeInsets.symmetric(
              vertical: 20.0,
            ),
            padding: EdgeInsets.only(top: 200, left: 25, right: 25),
            height: 330.0,
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
          Container(
            width: 300.0,
            margin: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.5 - 150, top: 150),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.all(Radius.circular(18))),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.all(Radius.circular(18)),
                    ),
                    hintText: "Enter a name of your new playlists",
                  ),
                ),
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.5 - 45, top: 400),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(18.0)),
                        padding: const EdgeInsets.all(20),
                        splashColor: Colors.grey[200],
                        color: Colors.white,
                        onPressed: () {},
                        child: Text("Create",
                            style: TextStyle(color: Colors.black)))
                  ]))
        ]));
  }
}
