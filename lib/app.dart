import 'package:flutter/material.dart';
import 'appbar.dart';

class UnitConverterApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Yarilabs',
      // theme: ThemeData(
      //   textTheme: Theme.of(context).textTheme.apply(
      //         bodyColor: Colors.black,
      //         displayColor: Colors.grey[600],
      //       ),
      //   primaryColor: Colors.grey[500],
      //   textSelectionHandleColor: Colors.green[500],
      // ),
      home: YariApp(),
    );
  }
}

class YariApp extends StatefulWidget{
  const YariApp();
  _YariAppState createState() => _YariAppState();
}


class _YariAppState extends State<YariApp>{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: TopBar().topbar,
      drawer: TopBar().drawerer,
      body: new Container(        
        child: new Stack(
          children: <Widget>[
            new ListView(
              children: <Widget>[
                new ListTile(
                  title: new Text('Software / Consulting / Coaching', 
                    style: Theme.of(context).textTheme.title ,),
                ),
                new ListTile(
                  title: new Text('Professional Consulting and Product Development within your budget and on time, powered by modern technologies. Our team is fluent in Ruby, Elixir, Elm, Angular, React and Mobile Development. We can design and build your product from scratch or integrate your existing team.'),
                ),
                new RaisedButton(
                  onPressed: (){'You Raised!';},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  
}



