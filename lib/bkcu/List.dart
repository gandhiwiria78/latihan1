import 'package:flutter/material.dart';
import 'Mobx.dart';
import 'Login.dart';
import 'IntroSlide.dart';

class ListDatas extends StatefulWidget {
  @override
  _ListDataState createState() => _ListDataState();
}

class _ListDataState extends State<ListDatas> {

  List userdetails = [
    {
      "first_name": "CONTOH SIMPLE MOBX ",
      "last_name": "State Management",
      "image_url": "https://pbs.twimg.com/profile_images/760249570085314560/yCrkrbl3_400x400.jpg",
      "route": Mobx(),
    },
    {
      "first_name": "CONTOH SIMPLE LOGIN API ",
      "last_name": "API Connect",
      "image_url": "https://pbs.twimg.com/profile_images/760249570085314560/yCrkrbl3_400x400.jpg",
      "route": Login(),
    },
    {
      "first_name": "CONTOH CURD SEDERHANA",
      "last_name": "DATABASE",
      "image_url": "https://pbs.twimg.com/profile_images/760249570085314560/yCrkrbl3_400x400.jpg",
      "route": Mobx(),
    },
    {
      "first_name": "Contoh Slide Intro Aplikasi",
      "last_name": "UIX",
      "image_url": "https://pbs.twimg.com/profile_images/760249570085314560/yCrkrbl3_400x400.jpg",
      "route": IntroSlide(),
    },
    {
      "first_name": "FLUTTER",
      "last_name": "AWESOME",
      "image_url": "https://pbs.twimg.com/profile_images/760249570085314560/yCrkrbl3_400x400.jpg",
      "route": Mobx(),
    },
    {
      "first_name": "ABC",
      "last_name": "XYZ",
      "image_url": "https://pbs.twimg.com/profile_images/760249570085314560/yCrkrbl3_400x400.jpg",
      "route": Mobx(),
    },
    {
      "first_name": "FLUTTER",
      "last_name": "AWESOME",
      "image_url": "https://pbs.twimg.com/profile_images/760249570085314560/yCrkrbl3_400x400.jpg",
      "route": Mobx(),
    },
    {
      "first_name": "ABC",
      "last_name": "XYZ",
      "image_url": "https://pbs.twimg.com/profile_images/760249570085314560/yCrkrbl3_400x400.jpg",
      "route": Mobx(),
    },
  ];
  @override
  Widget build(BuildContext context) {
        return new Scaffold(
          body: new ListView.builder(
          itemCount: userdetails.length,
          itemBuilder: (BuildContext context, int index){
          return new Card(
            
            child: new GestureDetector(
              onTap: ()=>{
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => userdetails[index]['route']),
                )
              },
              child: new Container(
                padding: new EdgeInsets.all(32.0),
                child: new Column(children: <Widget>[
                  Text (
                    userdetails[index]["first_name"].toString(),
                    style: TextStyle(fontWeight: FontWeight.bold )
                  ),
                  Text( 
                  userdetails[index]["last_name"].toString()
                  ),
                  Image.network(userdetails[index]["image_url"].toString()),
                  ],
                ),
              ),
            )
          );
        }
      )
    );
  }
}