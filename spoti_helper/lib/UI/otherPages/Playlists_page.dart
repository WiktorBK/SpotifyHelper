import 'package:flutter/material.dart';
import 'package:spoti_helper/Models/global.dart';
import 'package:spoti_helper/icons/my_flutter_app_icons.dart';
import 'package:marquee/marquee.dart';

class PlaylistsPage extends StatefulWidget {
  @override
  _PlaylistsPageState createState() => _PlaylistsPageState();
}

class _PlaylistsPageState extends State<PlaylistsPage> {
  double itemWidth = 150.0;
  double notSelectedItemWidth = 50;
  double selectedItemHeight = 160;
  int itemCount = 10;
  int selected = 5;
  bool shrinkWrap = true;
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
                      perspective: 0.002,
                      onSelectedItemChanged: (x) {
                        setState(() {
                          selected = x;
                        });
                        print(selected);
                      },
                      controller: _scrollController,
                      physics: FixedExtentScrollPhysics(),
                      children: List.generate(
                          titles.length,
                          (x) => RotatedBox(
                              quarterTurns: 1,
                              child: AnimatedContainer(
                                  duration: Duration(milliseconds: 500),
                                  width: x == selected ? itemWidth : notSelectedItemWidth,
                                  height: x == selected ? selectedItemHeight : itemWidth,
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
                                  )],
                                                
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
                                            top: x == selected ? 60.0 : 60,
                                            left: x == selected ? 30.0 : 30),
                                        constraints: new BoxConstraints.expand(),
                                        child: new Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                          new Text(playlists[x],
                                          style: TextStyle(
                                                  
                                                  color: x == selected
                                                      ? Colors.white
                                                      : Colors.white
                                                      .withOpacity(0.4),
                                                  
                                                  fontSize: playlists[x].length <
                                                              14 &&  x == selected ? 20
        
                                                            : x == selected &&  playlists[x].length >= 15 ? 20

                                                            : x != selected && playlists[x].length < 15 ? 20 : 14
                                                                          )
                                                        ),
                                            new Text(authors[x],
                                                style: TextStyle(
                                                    color: x == selected
                                                        ? Colors.white
                                                            .withOpacity(0.8)
                                                        : Colors.white
                                                            .withOpacity(0.3),
                                                    fontSize:
                                                        x == selected ? 12 : 12)),
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
                                                    const EdgeInsets.only(
                                                        top: 7.0)),
                                            new Container(
                                                height: x == selected ? 10 : 40),
                                            new Row(
                                              children: <Widget>[
                                                Column(
                                                  children: [
                                                    new AnimatedDefaultTextStyle(
                                                      duration:
                                                          Duration(milliseconds: 350),
                                                      style: TextStyle(
                                                          color: x == selected
                                                              ? Colors.white
                                                                  .withOpacity(0.8)
                                                              : Colors.white
                                                                  .withOpacity(0),
                                                          fontSize:
                                                              x == selected ? 13 : 0),
                                                      child: new Text(
                                                        trackamount[x] + " tracks",
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                               
                                                ]),
                                      
                                      
                                              ]),
                                    ),
                                  ),
                                )
                              ),
                            itemExtent: itemWidth, 
                          ),
                        )
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
                  ],
                ),
              ),
            ],
          ),
        );
  }
}
