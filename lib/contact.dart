import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'appbar.dart';

class Contact extends StatelessWidget{
  Widget build(BuildContext context){
    //Body construction variables
    final _portugal = new Container(
      child:new ListView(
        children: <Widget>[
          new Container(
            child: new Image.asset(
              'images/yarilabs-contact-us.png',
            ),
            // onPressed: () => launch('https://www.google.com/maps/search/?api=1&query=centurylink+field'),
          ),
          new Container(
            // padding: new EdgeInsets.only(top:10.0),
            child: new ListTile(
              title: new Text(
                'Rua dos Capelistas, 30 - 3rd Floor',
                style: Theme.of(context).textTheme.subhead )
            ),
          ),
          new Container(
            // padding: new EdgeInsets.only(top:10.0),
            child: new ListTile(
              title: new Text(
                '4700-307 - Braga',
                style: Theme.of(context).textTheme.body1)
            ),
          ),
          new Container(
            // padding: new EdgeInsets.only(top:10.0),
            child: new ListTile(
              title: new Text(
                'Portugal',
                style: Theme.of(context).textTheme.body1)
            ),
          ),
          new Container(
            // padding: new EdgeInsets.only(top:10.0),
            child: new ListTile(
              leading: new Icon(Icons.phone, color: Colors.grey[600]),
              title: new Text(
                '+351 253776740',
                style: new TextStyle(
                  color: Colors.grey[600],
                  fontSize: 14.0)
                )
            ),
          ),
        ],
      ),
    );
    final _england = new Container(
      child:new ListView(
        children: <Widget>[
          new Container(
            child: new Image.asset(
              'images/yarilabs-contact-us-uk.jpg',
            ),
          ),
          new Container(
            // padding: new EdgeInsets.only(top:10.0),
            child: new ListTile(
              title: new Text(
                '86-90 Paul Street, 3rd Floor',
                style: Theme.of(context).textTheme.subhead )
            ),
          ),
          new Container(
            // padding: new EdgeInsets.only(top:10.0),
            child: new ListTile(
              title: new Text(
                'EC2A 4NE - London',
                style: Theme.of(context).textTheme.body1)
            ),
          ),
          new Container(
            // padding: new EdgeInsets.only(top:10.0),
            child: new ListTile(
              title: new Text(
                'United Kingdom',
                style: Theme.of(context).textTheme.body1)
            ),
          ),
          // new FlatButton(
          //     onPressed: () => launch('tel://932321483'),
          //     child: new Text('Call me c='),
          // ),
          new Container(
            // padding: new EdgeInsets.only(top:10.0),
            child: new ListTile(
              leading: new Icon(Icons.phone, color: Colors.grey[600]),
              title: new Text(
                '+44 7445007797',
                style: new TextStyle(
                  color: Colors.grey[600],
                  fontSize: 14.0)
                )
            ),
          ),
          
        ],
      ),
    );
    //Bottom ICONS
    final _icon1 = IconButton(
      icon: new ImageIcon(
        new AssetImage('images/contact/github-b.png'),
        size:36.0, 
        color: Colors.yellow[600]
      ),
      onPressed: () {},
    );
    final _icon2 = IconButton(
      icon: new ImageIcon(
        new AssetImage('images/contact/twitter-b.png'),
        size:36.0, 
        color: Colors.yellow[600]
      ),
      onPressed: () {},
    );
    final _icon3 = IconButton(
      icon: new ImageIcon(
        new AssetImage('images/contact/googleplus_b.png'),
        size:36.0, 
        color: Colors.yellow[600]
      ),
      onPressed: () {},
    );
    final _icon4 = IconButton(
      icon: new ImageIcon(
        new AssetImage('images/contact/linkedin_b.png'),
        size:36.0, 
        color: Colors.yellow[600]
      ),
      onPressed: () {},
    );

    return new DefaultTabController(
      length: 3,
      child: new Scaffold(
        appBar: TopBar(context).topbartabs,
        body: new TabBarView(
          children: <Widget>[
            _portugal,
            _england
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.send), 
          onPressed: () => launch('mailto:victor@yarilabs.com?subject=Test&body=Hello%20World'), 
          backgroundColor: Colors.yellow[800],
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.black87,
          hasNotch: true,
          child: new Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Padding(padding: new EdgeInsets.all(5.0)),
              _icon1,
              Padding(padding: new EdgeInsets.all(5.0)),
              _icon2,
              Padding(padding: new EdgeInsets.all(5.0)),
              _icon3,
              Padding(padding: new EdgeInsets.all(5.0)),
              _icon4,
            ],
          ),
        ),
      ),
    );
    
  }
}