import 'package:flutter/material.dart';
import 'package:spoti_helper/Models/global.dart';
import 'package:spoti_helper/icons/my_flutter_app_icons.dart';

class PlaylistsPage extends StatefulWidget {
  @override
  _PlaylistsPageState createState() => _PlaylistsPageState();
}

class _PlaylistsPageState extends State<PlaylistsPage> {
  double itemWidth = 60.0;
  int itemCount = 100;
  int selected = 50;
  FixedExtentScrollController _scrollController =
      FixedExtentScrollController(initialItem: 50);
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [gradient1, gradient2],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft)),
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
                children: List.generate(
                    itemCount,
                    (x) => RotatedBox(
                        quarterTurns: 1,
                        child: AnimatedContainer(
                            duration: Duration(milliseconds: 500),
                            width: x == selected ? 100 : 80,
                            height: x == selected ? 100 : 80,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: x == selected ? Colors.white : Colors.white30,
                                boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 1,
                                        blurRadius: 3,
                                        offset: Offset(0, 3), // changes position of shadow
                                      ),
                                    ],
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(18)),
                                
                            child: Text("dupa")))),
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
          margin: EdgeInsets.symmetric(vertical: 20.0,),
          padding: EdgeInsets.only(top: 200, left: 25, right: 25),
          height: 330.0,
    ),
          Container(
            margin: EdgeInsets.only(
                top: 130, left: MediaQuery.of(context).size.width * 0.5 - 25),
            child: FloatingActionButton(
              backgroundColor: Colors.white,
              onPressed: () {},
            ),
          ),

          Container(
            width: 300.0,
            margin: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.5 - 150, top: 150),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            TextField(
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white),
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
            margin: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.5 - 45, top: 400),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                MaterialButton(
                  shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(18.0)),
                    padding: const EdgeInsets.all(20),
                    splashColor: Colors.grey[200],
                    color: Colors.white,
                    onPressed: () {
                    
                    },
                    child: Text("Create", style: TextStyle(color: Colors.black))
                )
              ]
              )
            )]));

  }
}
