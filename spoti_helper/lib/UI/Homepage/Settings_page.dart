import 'package:flutter/material.dart';
import 'package:spoti_helper/Models/global.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {

  bool _nightmode = false;
  bool _sendpush = false;

  bool _pinned = true;
  bool _snap = false;
  bool _floating = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [gradient1, gradient2],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight)),
        child: Stack(children: <Widget>[
          CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
            pinned: _pinned,
            snap: _snap,
            floating: _floating,
            expandedHeight: 160.0,
            flexibleSpace: const FlexibleSpaceBar(    
                ),
                title: Text('User')
              )
            ],
          ),


          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return SingleChildScrollView(
            padding: EdgeInsets.only(top: 250.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                
                Card(
                    elevation: 8.0,
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0)),
                    child: ListTile(
                      title: Text(
                        "Settings",
                        style: bottomText,
                      ),
                    )),
                const SizedBox(height: 10.0),
                
                Card(
                  elevation: 4.0,
                  margin: const EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 16.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0)),
                  child: Column(children: <Widget>[
                    SwitchListTile(
                      title: const Text('Night mode'),
                      value: _nightmode,
                      onChanged: (bool value) {
                        setState(() {
                          _nightmode = value;
                        });
                      },
                      secondary: const Icon(Icons.nights_stay_outlined),
                      activeColor: Colors.purple[300]
                    ),
                    _buildDivider(),
                    ListTile(
                      leading: Icon(Icons.format_list_numbered_outlined),
                      title: Text("Number of last tracks"),
                      trailing: Icon(Icons.keyboard_arrow_right),
                      onTap: () {},
                    ),
                    _buildDivider(),
                    ListTile(
                      leading: Icon(Icons.language),
                      title: Text("Change language"),
                      trailing: Icon(Icons.keyboard_arrow_right),
                      onTap: () {},
                    ),
                  ]),
                ),
                
                
                Card(
                    elevation: 8.0,
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0)),
                    child: ListTile(
                        title: Text(
                      "Notifications",
                      style: bottomText,
                    ))),
                const SizedBox(height: 10.0),
                
                Card(
                  elevation: 4.0,
                  margin: const EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 16.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0)),
                  child: Column(children: <Widget>[
                    SwitchListTile(
                      title: const Text('Send push'),
                      value: _sendpush,
                      onChanged: (bool value) {
                        setState(() {
                          _sendpush = value;
                        });
                      },
                      secondary: const Icon(Icons.publish_outlined),
                      activeColor: Colors.purple[300]
                    ),
                    _buildDivider(),
                    ListTile(
                      leading: Icon(Icons.notifications_active_outlined),
                      title: Text("Alert mode"),
                      trailing: Icon(Icons.keyboard_arrow_right),
                      onTap: () {},
                    ),
                  ]),
                ),
                
                
                Card(
                    elevation: 8.0,
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0)),
                    child: ListTile(
                        title: Text(
                      "Notifications",
                      style: bottomText,
                    ))),
                const SizedBox(height: 10.0),
                
                Card(
                  elevation: 4.0,
                  margin: const EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 16.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0)),
                  child: Column(children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.feedback_outlined),
                      title: Text("Feedback"),
                      trailing: Icon(Icons.keyboard_arrow_right),
                      onTap: () {},
                    ),
                    _buildDivider(),
                    ListTile(
                      leading: Icon(Icons.accessibility_new_outlined),
                      trailing: Icon(Icons.keyboard_arrow_right),
                      title: Text("About us"),
                      onTap: () {},
                    ),
                    _buildDivider(),
                    ListTile(
                      leading: Icon(Icons.privacy_tip_outlined),
                      title: Text("Privacy & Terms"),
                      trailing: Icon(Icons.keyboard_arrow_right),
                      onTap: () {},
                    ),
                    _buildDivider(),
                    ListTile(
                      leading: Icon(Icons.power_settings_new_rounded),
                      title: Text("Log out"),
                      onTap: () {},
                    ),
                  ]),
                ),
              ],
            ))});
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
