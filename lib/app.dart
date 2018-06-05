import 'package:flutter/material.dart';
import 'appbar.dart';

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

class YariApp extends StatefulWidget{
  const YariApp();
  _YariAppState createState() => _YariAppState();
}

enum DialogDemoAction {
  cancel,
  discard,
  disagree,
  agree,
}

//Inicial APP page
class _YariAppState extends State<YariApp>{
  //Variables
  final String _topTitle = 'Software / Consulting / Coaching';
  final String _beginningText = 'Professional Consulting and Product Development within your budget and on time, powered by modern technologies. Our team is fluent in Ruby, Elixir, Elm, Angular, React and Mobile Development. We can design and build your product from scratch or integrate your existing team.';
  final String _ourTech = 'We love to work with bleeding edge technology with a tendency to move to the functional side of programming';

  Widget build(BuildContext context){
    final ThemeData theme = Theme.of(context);
    final TextStyle dialogTextStyle = theme.textTheme.subhead.copyWith(color: theme.textTheme.caption.color);

    return Scaffold(
      appBar: TopBar().topbar,
      drawer: TopBar().drawerer,
      body: new Container(  
        color: Colors.grey[100],      
        child: new Stack(
          children: <Widget>[
            
            new ListView(
              padding: new EdgeInsets.all(10.0),
              children: <Widget>[
                new ListTile(
                  title: new Text(_topTitle, 
                    style: Theme.of(context).textTheme.title ,),
                ),
                new ListTile(
                  title: new Text(_beginningText),
                ),
                new Container(padding: new EdgeInsets.all(10.0),),
                new RaisedButton(
                  color: Colors.black87,
                  padding: const EdgeInsets.all(22.0),
                  child: Text('Consulting', style: new TextStyle(color: Colors.white), ),
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
                  }),
                new RaisedButton(
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
                  }),
                new RaisedButton(
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
                  }),
                new RaisedButton(
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
                ),
                new Container(padding: new EdgeInsets.all(10.0),),
                new ListTile(
                  title: new Text(_ourTech, 
                    style: Theme.of(context).textTheme.body2 ,),
                ),
                new Container(padding: new EdgeInsets.all(10.0),),
                new Row(
                  children: <Widget>[
                    new Expanded(
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
                    ),
                    new Expanded(
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
                    ),
                    new Expanded(
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
                    ),
                  ],
                ),
                new Container(padding: new EdgeInsets.all(10.0),),
              ],
            ),

          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.mail), 
        onPressed: () {}, 
        backgroundColor: Colors.yellow[800],
      ),
      bottomNavigationBar: BottomAppBar(
        hasNotch: true,
        child: new Row(
          mainAxisSize: MainAxisSize.max,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(icon: Icon(Icons.settings), onPressed: () {
              new AlertDialog(
                  content: new Text(
                    'InProgress',
                  ),
                  actions: <Widget>[
                    new FlatButton(
                      child: const Text('Ok'),
                      onPressed: () { Navigator.pop(context, DialogDemoAction.discard); }
                    )
                  ]
                );
            },),
            // IconButton(icon: Icon(Icons.search), onPressed: () {},),
          ],
        ),
      ),
    );
  }
}



//=======================| EXPANSION PANEL |=========================|
// One entry in the multilevel list displayed by this app.
// class Entry {
//   Entry(this.title, [this.children = const <Entry>[]]);

//   final String title;
//   final List<Entry> children;
// }

// // The entire multilevel list displayed by this app.
// final List<Entry> data = <Entry>[
//   new Entry(
//     'Consulting',
//     <Entry>[
//       new Entry(
//         'Some of our projects are two-month engagements while other are for the long haul. Sometimes we’re brought on to help an existing company dive into new territory, other times we will be working together with your team to make sure you get your products ready, on budget and on time.',
//       ),
//     ],
//   ),
//   new Entry(
//     'Product Development',
//     <Entry>[
//       new Entry(
//         'We transform your ideas into brilliant scalable products. For us collaboration is a base assumption about how we work, we integrate your input at every stage of a project. While we always strive to go to market quickly, we never sacrifice quality for speed.'
//       ),
//     ],
//   ),
//   new Entry(
//     'Training',
//     <Entry>[
//       new Entry('Training is part of our DNA! We take it so seriously that we not only teach and train our team, but we also like to train others. We can train your team in new skills and on the product so it is rock solid and user-friendly.'),
//     ],
//   ),
//   new Entry( 
//     'Devops and System adminstration',
//     <Entry>[
//       new Entry('Deploying your docker cluster on top of AWS EC2 Container Service (ECS) or using Kubernetes we got you covered. We can help you with security, Monitoring and Continuous Delivery Setup.'),
//     ],
//   ),
// ];

// // Displays one Entry. If the entry has children then it's displayed
// // with an ExpansionTile.
// class EntryItem extends StatelessWidget {
//   const EntryItem(this.entry);

//   final Entry entry;

//   Widget _buildTiles(Entry root) {
//     if (root.children.isEmpty) return new ListTile(title: new Text(root.title));
//     return new ExpansionTile(
//       key: new PageStorageKey<Entry>(root),
//       title: new Text(root.title, style: TextStyle(color: Colors.white),),
//       children: root.children.map(_buildTiles).toList(),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return _buildTiles(entry);
//   }
// }
//=====================| END EXPANSION PANEL |=======================|




