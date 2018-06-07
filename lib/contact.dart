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
          //Street
          new RaisedButton(
            color: Colors.white,
            padding: const EdgeInsets.all(22.0),
            
            child: Text('Rua dos Capelistas, 30 - 3rd Floor', 
              style: Theme.of(context).textTheme.subhead),
            onPressed: () => launch('https://www.google.com/maps/search/?api=1&query=yarilabs')
          ),
          //Postal-code
          new RaisedButton(
            color: Colors.white,
            padding: const EdgeInsets.all(22.0),
            
            child: Text('4700-307 - Braga',
                style: Theme.of(context).textTheme.body1),
            onPressed: () {new AlertDialog(
              title: new Text('Rewind and remember'),
              content: new SingleChildScrollView(
                child: new ListBody(
                  children: <Widget>[
                    new Text('You will never be satisfied.'),
                    new Text('You\’re like me. I’m never satisfied.'),
                  ],
                ),
              ),
              actions: <Widget>[
                new FlatButton(
                  child: new Text('Regret'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );}
          ),
          //Call btn
          new RaisedButton(
            color: Colors.white,            
            child: new Center(
              child: new ListTile(
                leading: new Icon(Icons.phone, color: Colors.grey[600]),
                title: new Text(
                  '+351 253776740',
                  style: new TextStyle(
                    color: Colors.grey[600],
                    fontSize: 14.0
                  )
                )
              ),
            ),
            onPressed: () {}
          ),
        ],
      ),
    );
    final _england = new Container(
      child:new ListView(
        children: <Widget>[
          new Container(
            child: new Image.asset(
              'images/yarilabs-contact-us-uk_s.jpg',
            ),
          ),
          //Street
          new RaisedButton(
            color: Colors.white,
            padding: const EdgeInsets.all(22.0),
            
            child: Text('86-90 Paul Street, 3rd Floor', 
              style: Theme.of(context).textTheme.subhead),
            onPressed: () => launch('https://www.google.com/maps/search/?api=1&query=Paul+Street')
          ),
          //Postal-code
          new RaisedButton(
            color: Colors.white,
            padding: const EdgeInsets.all(22.0),
            
            child: Text('EC2A 4NE - London',
                style: Theme.of(context).textTheme.body1),
            onPressed: () {new AlertDialog(
              title: new Text('Rewind and remember'),
              content: new SingleChildScrollView(
                child: new ListBody(
                  children: <Widget>[
                    new Text('You will never be satisfied.'),
                    new Text('You\’re like me. I’m never satisfied.'),
                  ],
                ),
              ),
              actions: <Widget>[
                new FlatButton(
                  child: new Text('Regret'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );}
          ),
          //Call btn
          new RaisedButton(
            color: Colors.white,            
            child: new Center(
              child: new ListTile(
                leading: new Icon(Icons.phone, color: Colors.grey[600]),
                title: new Text(
                  '+44 7445007797',
                  style: new TextStyle(
                    color: Colors.grey[600],
                    fontSize: 14.0
                  )
                )
              ),
            ),
            onPressed: () {}
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
      onPressed: () => launch('https://gitlab.com/yarilabs')
    );
    final _icon2 = IconButton(
      icon: new ImageIcon(
        new AssetImage('images/contact/twitter-b.png'),
        size:36.0, 
        color: Colors.yellow[600]
      ),
      onPressed: () => launch('https://twitter.com/yarilabs'),
    );
    final _icon3 = IconButton(
      icon: new ImageIcon(
        new AssetImage('images/contact/googleplus_b.png'),
        size:36.0, 
        color: Colors.yellow[600]
      ),
      onPressed: () => launch('https://plus.google.com/111792819110493287001/about'),
    );
    final _icon4 = IconButton(
      icon: new ImageIcon(
        new AssetImage('images/contact/linkedin_b.png'),
        size:36.0, 
        color: Colors.yellow[600]
      ),
      onPressed: () => launch('https://www.linkedin.com/company/11137193'),
    );

    return new DefaultTabController(
      length: 3,
      child: new Scaffold(
        appBar: TopBar(context).topbarContactTabs,
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





          // new FlatButton(
          //     onPressed: () => launch('tel://932321483'),
          //     child: new Text('Call me c='),
          // ),