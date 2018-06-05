import 'package:flutter/material.dart';
import 'appbar.dart';

class Contact extends StatelessWidget{
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: TopBar().topbar,
      body: new Text('Your Finally here')
    );
  }
}