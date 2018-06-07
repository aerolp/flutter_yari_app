import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'appbar.dart';

class Software extends StatelessWidget{
  Widget build(BuildContext context){
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
    final _programLanguages = new Container(
      child: new GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20.0),
        crossAxisSpacing: 10.0,
        crossAxisCount: 2,
        children: <Widget>[
          new IconButton(
            icon: Image.asset('images/tech/elixir.png'),
            onPressed: () => launch('https://elixir-lang.org/?ref=yarilabs'),
          ),
          new IconButton(
            icon: Image.asset('images/tech/ruby.png'),
            onPressed: () => launch('https://www.ruby-lang.org/pt/'),
          ),
          new IconButton(
            icon: Image.asset('images/tech/es6.png'),
            onPressed: () => launch('http://www.ecma-international.org/ecma-262/6.0/'),
          ),
          new IconButton(
            icon: Image.asset('images/tech/elm.png'),
            onPressed: () => launch('http://elm-lang.org/'),
          ),
          new IconButton(
            icon: Image.asset('images/tech/typescript.jpg'),
            onPressed: () => launch('http://www.typescriptlang.org/'),
          ),
          new IconButton(
            icon: Image.asset('images/tech/clojure.png'),
            onPressed: () => launch('https://clojure.org/'),
          ),
        ],
      ),
    );
    final _devFrameworks = new Container(
      child: new GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20.0),
        crossAxisSpacing: 10.0,
        crossAxisCount: 2,
        children: <Widget>[
          new IconButton(
            icon: Image.asset('images/tech/phoenix.png'),
            onPressed: () => launch('http://phoenixframework.org/'),
          ),
          new IconButton(
            icon: Image.asset('images/tech/rubyonrails.png'),
            onPressed: () => launch('http://rubyonrails.org/'),
          ),
          new IconButton(
            icon: Image.asset('images/tech/angular2.png'),
            onPressed: () => launch('https://angular.io/'),
          ),
          new IconButton(
            icon: Image.asset('images/tech/androidsdk.png'),
            onPressed: () => launch('https://developer.android.com/index.html'),
          ),
          new IconButton(
            icon: Image.asset('images/tech/ionic.png'),
            onPressed: () => launch('http://ionicframework.com/'),
          ),
        ],
      )
    );

    return new DefaultTabController(
      length: 3,
      child: new Scaffold(
        appBar: TopBar(context).topbarLanguagesTabs,
        body: new TabBarView (
          children: <Widget>[
            _programLanguages,
            _devFrameworks
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
      ),
      
    );
  }
}