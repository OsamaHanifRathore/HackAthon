import 'package:flutter/material.dart';
import 'package:hackathon/home.dart';

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Home(),
    );
  }
}