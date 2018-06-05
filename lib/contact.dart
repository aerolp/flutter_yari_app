import 'package:flutter/material.dart';
import 'appbar.dart';

class Contact extends StatelessWidget{
  Widget build(BuildContext context){
    
    return new DefaultTabController(
      length: 3,
      child: new Scaffold(
        appBar: TopBar(context).topbartabs,
        body: new TabBarView(
          children: <Widget>[
            new Container(
              child:new ListView(
                children: <Widget>[

                  new Container(
                    child: new Image.asset(
                      'images/yarilabs-contact-us.png',
                    ),
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
            ),
            new Container(
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
            ),
          ],
        )
      ),
    );
  }
}