import 'package:flutter/material.dart';

class TopBar{
  final topbar = AppBar(
    backgroundColor: Color(0xFFFFA000),
    title: new Text('Yarilabs')
  );
  final drawerer = Drawer(
    child: new ListView(
      children: <Widget>[
        new UserAccountsDrawerHeader(
          accountName: new Text('Name here'),
          accountEmail: new Text('hello@yarilabs.com'),
          currentAccountPicture: new CircleAvatar(
            backgroundColor: Colors.orange[200],
            child: new Text('Yari'),),
          decoration: new BoxDecoration(color: Colors.green),
        ),
        new ListTile(title: new Text('Company (4slots)'), 
                    trailing: new Icon(Icons.arrow_forward),
                    ),
        new ListTile(title: new Text('Softwares'), 
                    trailing: new Icon(Icons.arrow_forward),
                    ),
        new ListTile(title: new Text('Contact'), 
                    trailing: new Icon(Icons.arrow_forward),
                    ),
      ],
    ),
  );
}   


