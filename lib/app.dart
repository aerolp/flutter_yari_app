import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:diamond_fab/diamond_fab.dart';

import 'appbar.dart';
import 'contact.dart';
import 'software.dart';
import 'about_company.dart';

//Widget Principal
class UnitConverterApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Yarilabs',
      home: YariApp(),
    );
  }
}

//
class YariApp extends StatefulWidget{
  const YariApp();
  _YariAppState createState() => _YariAppState();
}

//Inicial APP page
class _YariAppState extends State<YariApp>{
  //Variables
  final String _topTitle = 'Software / Consulting / Coaching';
  final String _beginningText = 'Professional Consulting and Product Development within your budget and on time, powered by modern technologies. Our team is fluent in Ruby, Elixir, Elm, Angular, React and Mobile Development. We can design and build your product from scratch or integrate your existing team.';
  final String _ourTech = 'We love to work with bleeding edge technology with a tendency to move to the functional side of programming';

  Widget build(BuildContext context){
  //Body Construction variables
    final _drawerer = new Drawer(
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
                      onTap: () => Navigator.of(context).push(
                        new MaterialPageRoute(builder: (BuildContext context)
                        =>new Company())),
                      ),
          new ListTile(title: new Text('Softwares'), 
                      trailing: new Icon(Icons.arrow_forward),
                      onTap: () => Navigator.of(context).push(
                        new MaterialPageRoute(builder: (BuildContext context)
                        =>new Software())),
                      ),
          new ListTile(title: new Text('Contact'), 
                      trailing: new Icon(Icons.arrow_forward),
                      onTap: () => Navigator.of(context).push(
                        new MaterialPageRoute(builder: (BuildContext context)
                        =>new Contact())),
                      ),
        ],
      ),
    );
    final _consultingBtn = new RaisedButton(
      color: Colors.black87,
      padding: const EdgeInsets.all(22.0),
      
      child: Text('Consulting', style: new TextStyle(color: Colors.white),),
      onPressed: () {
        showModalBottomSheet<void>(context: context, builder: (BuildContext context) {
          return new Container(
            child: new Padding(
              padding: const EdgeInsets.all(32.0),
              child: new Text('Some of our projects are two-month engagements while other are for the long haul. Sometimes we’re brought on to help an existing company dive into new territory, other times we will be working together with your team to make sure you get your products ready, on budget and on time.',
                textAlign: TextAlign.center,
                style: new TextStyle(
                  color: Theme.of(context).accentColor,
                  fontSize: 18.0
                )
              )
            )
          );
        });
      }
    );
    final _productBtn = new RaisedButton(
      color: Colors.black87,
      padding: const EdgeInsets.all(22.0),
      child: Text('Product Development', style: new TextStyle(color: Colors.white),),
      onPressed: () {
        showModalBottomSheet<void>(context: context, builder: (BuildContext context) {
          return new Container(
            child: new Padding(
              padding: const EdgeInsets.all(32.0),
              child: new Text('We transform your ideas into brilliant scalable products. For us collaboration is a base assumption about how we work, we integrate your input at every stage of a project. While we always strive to go to market quickly, we never sacrifice quality for speed.',
                textAlign: TextAlign.center,
                style: new TextStyle(
                  color: Theme.of(context).accentColor,
                  fontSize: 18.0
                )
              )
            )
          );
        });
      }
    );
    final _trainingBtn = new RaisedButton(
      color: Colors.black87,
      padding: const EdgeInsets.all(22.0),
      child: Text('Training', style: new TextStyle(color: Colors.white),),
      onPressed: () {
        showModalBottomSheet<void>(context: context, builder: (BuildContext context) {
          return new Container(
            child: new Padding(
              padding: const EdgeInsets.all(32.0),
              child: new Text('Training is part of our DNA! We take it so seriously that we not only teach and train our team, but we also like to train others. We can train your team in new skills and on the product so it is rock solid and user-friendly.',
                textAlign: TextAlign.center,
                style: new TextStyle(
                  color: Theme.of(context).accentColor,
                  fontSize: 18.0
                )
              )
            )
          );
        });
      }
    );
    final _devopsBtn = new RaisedButton(
      color: Colors.black87,
      padding: const EdgeInsets.all(22.0),
      child: Text('Devops and System adminstration', style: new TextStyle(color: Colors.white),),
      onPressed: () {
        showModalBottomSheet<void>(context: context, builder: (BuildContext context) {
          return new Container(
            child: new Padding(
              padding: const EdgeInsets.all(32.0),
              child: new Text('Deploying your docker cluster on top of AWS EC2 Container Service (ECS) or using Kubernetes we got you covered. We can help you with security, Monitoring and Continuous Delivery Setup.',
                textAlign: TextAlign.center,
                style: new TextStyle(
                  color: Theme.of(context).accentColor,
                  fontSize: 18.0
                )
              )
            )
          );
        });
      }
    );
    final _elixirBtn = new Expanded(
      child: (
        new FlatButton(
          child: new IconTheme(
            data: new IconThemeData(color: null),
            child: new ImageIcon(new AssetImage('images/tech/elixir.png'),color:Colors.purple, size: 48.0),
          ),
          onPressed: () {
            showModalBottomSheet<void>(context: context, builder: (BuildContext context) {
              return new Container(
                child: new Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: new Text('Elixir is relatively new but stands on the shoulders of giants. Fuses the best of Erlang - the runtime, the concurrency model, fault-tolerance and performance predictability, with a powerful extension system, robust metaprogramming and beautiful syntax. Whether you need to start a new project or to integrate with existing infrastructure, Elixir is a proven technological choice to build a scalable system that is easy to maintain.',
                    textAlign: TextAlign.center,
                    style: new TextStyle(
                      color: Theme.of(context).accentColor,
                      fontSize: 14.0
                    )
                  )
                )
              );
            });
          },
        )
      ),
    );
    final _elmBtn = new Expanded(
      child: (
        new FlatButton(
          child: new IconTheme(
            data: new IconThemeData(color: null),
            child: new ImageIcon(new AssetImage('images/tech/elm2.png'),color:Colors.green, size: 48.0),
          ),
          onPressed: () {
            showModalBottomSheet<void>(context: context, builder: (BuildContext context) {
              return new Container(
                child: new Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: new Text('Another functional programming language we use on new projects is ELM. The final code is reliable, due to its magnificent compiler. We have yet to see a JS exception in production! The compiler does an excellent job at identifying missed cases, saves you from those errors not usually covered with unit tests. The Codebase is more maintainable. Refactoring is such a pleasure, when big changes are made, the compiler immediately signals all the places where stuff is broken.',
                    textAlign: TextAlign.center,
                    style: new TextStyle(
                      color: Theme.of(context).accentColor,
                      fontSize: 14.0
                    )
                  )
                )
              );
            });
          },
        )
      ),
    );
    final _rubyBtn = new Expanded(
      child: (
        new FlatButton(
          child: new IconTheme(
            data: new IconThemeData(color: null),
            child: new ImageIcon(new AssetImage('images/tech/ruby.png'),color:Colors.red, size: 48.0),
          ),
          onPressed: () {
            showModalBottomSheet<void>(context: context, builder: (BuildContext context) {
              return new Container(
                child: new Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: new Text('Our development team is highly experienced on Ruby, Ruby on Rails and Javascript. Most of our current projects are still written using these technologies but we are shifting towards functional programming languages and technologies.',
                    textAlign: TextAlign.center,
                    style: new TextStyle(
                      color: Theme.of(context).accentColor,
                      fontSize: 14.0
                    )
                  )
                )
              );
            });
          },
        )
      ),
    );
    final _moreTechBtn = new RaisedButton.icon(
      color: Colors.black87,
      icon: Icon(Icons.more, color: Colors.white,),
      label: Text('More technology', style: new TextStyle(color: Colors.white)),
      splashColor: Colors.black45,
      onPressed: () => Navigator.of(context).push(
                        new MaterialPageRoute(builder: (BuildContext context)
                        =>new Software())),
      );
    final _body = new Container(  
      color: Colors.grey[100],      
      child: new Stack(
        children: <Widget>[
          
          new ListView(
            padding: new EdgeInsets.all(10.0),
            children: <Widget>[
              new ListTile(title: new Text(_topTitle, 
                  style: Theme.of(context).textTheme.title ,),
              ),
              new ListTile(title: new Text(_beginningText)),
              new Container(padding: new EdgeInsets.all(10.0),),
              _consultingBtn,
              _productBtn,
              _trainingBtn,
              _devopsBtn,
              new Container(padding: new EdgeInsets.all(10.0),),
              new ListTile(title: new Text(_ourTech, 
                  style: Theme.of(context).textTheme.body2 ,),
              ),
              new Container(padding: new EdgeInsets.all(10.0),),
              new Row(
                children: <Widget>[
                  _elixirBtn,
                  _elmBtn,
                  _rubyBtn,
                ],
              ),
              new Container(padding: new EdgeInsets.all(10.0),),
              _moreTechBtn,
            ],
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

    return Scaffold(
      appBar: TopBar(context).topbar,
      drawer: _drawerer,
      body: _body,
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
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(padding: new EdgeInsets.all(5.0)),
            // IconButton(icon: Icon(Icons.search), onPressed: () {},),
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
    );
  }
}




    // final _consulting = new RaisedButton.icon(
    //   color: Colors.black87,
    //   // padding: const EdgeInsets.all(22.0),
    //   icon: ImageIcon(AssetImage('images/connectdevelop.png'),color: Colors.white),
    //   label: Text('Consulting', style: new TextStyle(color: Colors.white)),
    //   splashColor: Colors.black45,
    //   onPressed: () {
    //     showModalBottomSheet<void>(context: context, builder: (BuildContext context) {
    //       return new Container(
    //         child: new Padding(
    //           padding: const EdgeInsets.all(82.0),
    //           child: new Text('Some of our projects are two-month engagements while other are for the long haul. Sometimes we’re brought on to help an existing company dive into new territory, other times we will be working together with your team to make sure you get your products ready, on budget and on time.',
    //             textAlign: TextAlign.center,
    //             style: new TextStyle(
    //               color: Theme.of(context).accentColor,
    //               fontSize: 18.0
    //             )
    //           )
    //         )
    //       );
    //     });
    //   }
    // );


    // floatingActionButton: DiamondFab(
      //   child: const Icon(Icons.send), 
      //   onPressed: () => launch('mailto:victor@yarilabs.com?subject=Test&body=Hello%20World'), 
      //   backgroundcolor: Colors.yellow[800],
      // ),