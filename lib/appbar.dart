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
          accountName: new Text('Victor Le Pen'),
          accountEmail: new Text('victor@yarilabs.com'),
          currentAccountPicture: new CircleAvatar(
            backgroundImage: new AssetImage('images/logo_y_w.png'),
            ),
          decoration: new BoxDecoration(color: Colors.black87),
        ),
        new ListTile(title: new Text('Company (4slots)'), 
                    trailing: new Icon(Icons.arrow_forward),
                    ),
        new ListTile(title: new Text('Softwares'), 
                    trailing: new Icon(Icons.arrow_forward),
                    ),
        new ListTile(title: new Text('Contact'), 
                    trailing: new Icon(Icons.arrow_forward),
                    onTap: (){},
                    ),
      ],
    ),
  );
}   


