
import 'package:flutter/material.dart';

class Awal extends StatefulWidget {
  @override
  _AwalState createState() => _AwalState();
}

class _AwalState extends State<Awal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: Text("Design UI Traveloka"),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.more_horiz),
              onPressed: (){

              },
            )
          ],
        ),
        body: ListView(
          children: <Widget>[
            AkunView(),
            MenuUtama()

          ],
        ),

    );
  }
}

class AkunView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 9.0,horizontal: 7),
      child: ListTile(
        leading: new Container(
          width: 30,
          height: 30,
            decoration: new BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: new NetworkImage(
                "https://via.placeholder.com/140x100"
              ),
            )
          ),
        ),
        title: Text('Gundul Pacul',style: TextStyle(fontWeight: FontWeight.bold),),
        subtitle: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 0),
          child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
          RaisedButton.icon(
            icon :Icon(Icons.add_to_queue),
            label : Text("200 poin"),
            color: Colors.grey[300],
            elevation: 0.0 ,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0) ),
            onPressed: (){},
          ),
          RaisedButton(
            
            child : Text("Preminum"),
            color: Colors.grey[300],
            elevation: 0.0 ,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0) ),
            onPressed: (){},
          ),
         
        ],
      
        ),
        )
      ),

    );
  }
}

class MenuUtama  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount:5,
      children: listMenuUtama ,
    );   
  }
}
 List<ListMenuUtama> listMenuUtama =[
   ListMenuUtama(
     title: "Tiket Pesawat",
     icons: Icons.flight,
     colorIcon: Colors.white,
     colorPrimary: Colors.red,
   ),
   ListMenuUtama(
     title: "Hotel",
     icons: Icons.hotel,
     colorIcon: Colors.white,
     colorPrimary: Colors.yellow,
    ),
   ListMenuUtama(
     title: "Restoran",
     icons: Icons.restaurant,
     colorIcon: Colors.white,
     colorPrimary: Colors.grey,
    ),
   ListMenuUtama(
     title: "Rekreasi",
     icons: Icons.gradient,
     colorIcon: Colors.white,
     colorPrimary: Colors.indigo,
    ),
   ListMenuUtama(
     title: "Kuliner",
     icons: Icons.fastfood,
     colorIcon: Colors.white,
     colorPrimary: Colors.pink,
    ),
    ListMenuUtama(
     title: "Kuliner",
     icons: Icons.fastfood,
     colorIcon: Colors.white,
     colorPrimary: Colors.purple,
    )
 ];
class ListMenuUtama  extends StatelessWidget {
  ListMenuUtama({this.title, this.icons, this.colorPrimary, this.colorIcon});
  final title;
  final icons;
  final colorPrimary, colorIcon;
  @override
  Widget build(BuildContext context) {
    return Column(
       
        children: <Widget>[
          Expanded(child: new Container(
             
            height: 50.0,
            width: 50.0,
            decoration: BoxDecoration(
              color: colorPrimary,
              shape: BoxShape.circle
            ),
            child: Icon(icons,color: this.colorIcon),
          ),),
          
          
          Text(title, style: TextStyle(fontSize: 12,),textAlign: TextAlign.center,)
        ],
    );
  }
}
