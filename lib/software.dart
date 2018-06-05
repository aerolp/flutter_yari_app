import 'package:flutter/material.dart';
import 'appbar.dart';

class Software extends StatelessWidget{
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: TopBar(context).topbar,
      body: new Center(
        child:  new Text('In Construction', style: new TextStyle(fontSize: 48.0)),
      ),    
    );
  }
}