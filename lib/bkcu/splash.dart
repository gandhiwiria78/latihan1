import 'package:flutter/material.dart';


class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Test",
      home: new Scaffold(
        body: new Center(
          child: new Container(
            width:200,
            height: 200,
            child: new PictureImage(),
          )
        )
      )
    );
  }
} 

class PictureImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new DecoratedBox(
      position: DecorationPosition.background,
      decoration: new BoxDecoration(
        image: new DecorationImage(
          image: new AssetImage('assets/images/logo.png'),
        )
      ),
    );
  }
}