import 'package:flutter/material.dart';

class ListData extends StatefulWidget {
  


  @override
  _ListDataState createState() => _ListDataState();
}

class _ListDataState extends State<ListData> {
  List userdetails = [
    {
      "first_name": "FLUTTER",
      "last_name": "AWESOME",
      "image_url": "https://pbs.twimg.com/profile_images/760249570085314560/yCrkrbl3_400x400.jpg"
    },
    {
      "first_name": "ABC",
      "last_name": "XYZ",
      "image_url": "https://www.rd.com/wp-content/uploads/2017/09/01-shutterstock_476340928-Irina-Bg-1024x683.jpg"
    },
    {
      "first_name": "FLUTTER",
      "last_name": "AWESOME",
      "image_url": "https://pbs.twimg.com/profile_images/760249570085314560/yCrkrbl3_400x400.jpg"
    },
    {
      "first_name": "ABC",
      "last_name": "XYZ",
      "image_url": "https://www.rd.com/wp-content/uploads/2017/09/01-shutterstock_476340928-Irina-Bg-1024x683.jpg"
    },
    {
      "first_name": "FLUTTER",
      "last_name": "AWESOME",
      "image_url": "https://pbs.twimg.com/profile_images/760249570085314560/yCrkrbl3_400x400.jpg"
    },
    {
      "first_name": "ABC",
      "last_name": "XYZ",
      "image_url": "https://www.rd.com/wp-content/uploads/2017/09/01-shutterstock_476340928-Irina-Bg-1024x683.jpg"
    },
    {
      "first_name": "FLUTTER",
      "last_name": "AWESOME",
      "image_url": "https://pbs.twimg.com/profile_images/760249570085314560/yCrkrbl3_400x400.jpg"
    },
    {
      "first_name": "ABC",
      "last_name": "XYZ",
      "image_url": "https://www.rd.com/wp-content/uploads/2017/09/01-shutterstock_476340928-Irina-Bg-1024x683.jpg"
    },
  ];
  @override
  Widget build(BuildContext context) {
        return new Scaffold(
          body: new ListView.builder(
            itemCount: userdetails.length,
        itemBuilder: (BuildContext context, int index){
          return new Card(
            child: new Container(
              padding: new EdgeInsets.all(32.0),
              child: new Column(children: <Widget>[
                Text (
                  userdetails[index]["first_name"].toString()
                ),
                Text( 
                 userdetails[index]["last_name"].toString()
                ),
                Image.network(userdetails[index]["image_url"].toString())
              ],),
            ),
          );
        }
      )
    );
  }
}