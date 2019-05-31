import 'package:flutter/material.dart';
import 'package:latihan1/bkcu/IntroSlide.dart' as prefix0;
// import 'home_page.dart';
// import 'traveloka_clone/Home.dart';
// import 'bkcu/splash.dart';
import 'bkcu/IntroSlide.dart' ;
import 'bkcu/List.dart';


void main()=> runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      title: 'Latihan',
      theme: new ThemeData.fallback(),
      home:  new ListDatas() // new Home(),
    );
  }
}