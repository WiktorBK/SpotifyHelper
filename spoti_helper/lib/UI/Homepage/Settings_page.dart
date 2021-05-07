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
                colors: [gradient1, gradient2],
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
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://png.pngtree.com/png-vector/20190909/ourmid/pngtree-outline-user-icon-png-image_1727916.jpg')),
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
                  Text(
                    'Travis Scott',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            padding: EdgeInsets.only(top: 250.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Card(
                  elevation: 8.0,
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
                  child: ListTile(
                    title: Text("Settings",
                    style: bottomText,
                    ),
                  )
                ),
                const SizedBox(height: 10.0),
                Card(
                  elevation: 4.0,
                  margin: const EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 16.0),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        leading: Icon(Icons.nights_stay_outlined),
                        title: Text("Night mode"),
                        onTap: (){

                        },
                      ),
                      _buildDivider(),
                      ListTile(
                        leading: Icon(Icons.format_list_numbered_outlined),
                        title: Text("Number of last tracks"),
                        trailing: Icon(Icons.keyboard_arrow_right),
                        onTap: (){

                        },
                      ),
                      _buildDivider(),
                      ListTile(
                        leading: Icon(Icons.language),
                        title: Text("Change language"),
                        trailing: Icon(Icons.keyboard_arrow_right),
                        onTap: (){

                        },
                      ),
                    ]
                  ),
                ),
                Card(
                  elevation: 8.0,
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
                  child: ListTile(
                    title: Text("Notifications",
                    style: bottomText,
                    )
                  )
                ),
                const SizedBox(height: 10.0),
                Card(
                  elevation: 4.0,
                  margin: const EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 16.0),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        leading: Icon(Icons.notification_important_outlined),
                        title: Text("Send push"),
                        onTap: (){

                        },
                      ),
                      _buildDivider(),
                      ListTile(
                        leading: Icon(Icons.format_list_numbered_outlined),
                        title: Text("Alert mode"),
                        trailing: Icon(Icons.keyboard_arrow_right),
                        onTap: (){

                        },
                      ),
                    ]
                  ),
                ),
                 Card(
                  elevation: 8.0,
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
                  child: ListTile(
                    title: Text("Notifications",
                    style: bottomText,
                    )
                  )
                ),
                const SizedBox(height: 10.0),
                Card(
                  elevation: 4.0,
                  margin: const EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 16.0),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        leading: Icon(Icons.feedback_outlined),
                        title: Text("Feedback"),
                        trailing: Icon(Icons.keyboard_arrow_right),
                        onTap: (){

                        },
                      ),
                      _buildDivider(),
                      ListTile(
                        leading: Icon(Icons.accessibility_new_outlined),
                        trailing: Icon(Icons.keyboard_arrow_right),
                        title: Text("About us"),
                        onTap: (){

                        },
                      ),
                      _buildDivider(),
                      ListTile(
                        leading: Icon(Icons.privacy_tip_outlined),
                        title: Text("Privacy & Terms"),
                        trailing: Icon(Icons.keyboard_arrow_right),
                        onTap: (){

                        },
                      ),
                      _buildDivider(),
                      ListTile(
                        leading: Icon(Icons.power_settings_new_rounded),
                        title: Text("Log out"),
                        onTap: (){

                        },
                      ),
                    ]
                  ),
                ),
              ],
            ),
          )
        ]));
  }

  Container _buildDivider() {
    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      width: double.infinity,
                      height: 1.0,
                      color: Colors.grey.shade400,
                    );
  }
}
