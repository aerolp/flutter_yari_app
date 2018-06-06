import 'package:flutter/material.dart';

import 'appbar.dart';
import 'contact.dart';
import 'software.dart';
import 'about_company.dart';

//Alert Dialog options
enum DialogDemoAction {
  cancel,
  ok,
}

//Where all Variables are situated
class TopBar{
  final BuildContext context;
  TopBar(this.context);
  
  //Main Top bar
  final topbar = AppBar(
    backgroundColor: Color(0xFFFFA000),
    title: new Text('Yarilabs')
  );
  //Secondary Top bar
  final topbartabs = AppBar(
    backgroundColor: Color(0xFFFFA000),
    title: new Text('Yarilabs'),
    bottom: new TabBar(
      tabs: [
        new Container(child: new Tab(text: 'Portugal')),
        new Tab(text: 'United Kingdom'),
      ],
    ),
  );
  //Main Top Bar (not in use)
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
                    onTap: () {}
                    ),
        new ListTile(title: new Text('Softwares'), 
                    trailing: new Icon(Icons.arrow_forward),
                    onTap: () {}
                    ),
        new ListTile(title: new Text('Contact'), 
                    trailing: new Icon(Icons.arrow_forward),
                    onTap: () {}
                    ),
                    // onTap: () => Navigator.of(context).push(
                    //   new MaterialPageRoute(builder: (BuildContext context)
                    //   =>new Contact())),
                    // ),
      ],
    ),
  );
}   


