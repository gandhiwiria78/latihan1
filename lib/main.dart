import 'package:flutter/material.dart';
//import 'home_page.dart';
import 'traveloka_clone/Home.dart';

void main()=> runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      title: 'Latihan',
      theme: new ThemeData.fallback(),
      home: new Home(),
    );
  }
}