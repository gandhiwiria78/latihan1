import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
    @override
    State createState() => new HomePageState();
}

class HomePageState extends State<HomePage>{
  var _hasil = "0";
  var _operator = "";
  int var1 = 0;
  var nilai1="";
  var nilai2="";
  var hasil = 0;
  var history=[];

  bool isNumeric(String s) {
    if(s == null) {
      return false;
    }
    return double.parse(s, (e) => null) != null;
  }
  void hitung(int n1,int n2,String o){
    
      if(o=="+"){
        hasil= n1+n2;
      }else if(o =="-"){
        hasil= n1-n2;
      }else if(o =="*"){
        hasil=n1*n2;
      }else if(o =="/"){
        hasil= n1 ~/ n2 ;
      }

      _hasil=hasil.toString();
      nilai1=hasil.toString();
  }
  
  void btnPress(String input){
    setState(() {
      if(_hasil=="0"){
        _hasil = "";
      }
      if(nilai1=="0"){
        nilai1 = "";
      }
      if(nilai2=="0"){
        nilai2="";
      }

      if(hasil>0 && nilai2.isNotEmpty){
        hasil=0;
        nilai2="";
      }
      
      if(isNumeric(input)){
        if(_operator.isEmpty){
          nilai1= nilai1 + input;
          _hasil=nilai1;
        }
        if(_operator.isNotEmpty) {
          nilai2= nilai2 + input;
          _hasil= nilai2;
        }
      }else{
        if(nilai2==""){
          nilai2="0";
        }

        if(input=="="){
          hitung(int.parse(nilai1),int.parse(nilai2),_operator);
        }else if(input=="C"){
            _hasil="0";
            nilai1="";
            nilai2="";
            _operator="";
            hasil = 0;  
        }else{
          if(nilai2=="0"){

          }else{
            hitung(int.parse(nilai1),int.parse(nilai2),input);
          }
          _operator = input;
        }
       
      }
    });
  }
  
  @override 
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Latihan Kalkulator'),
      ),
      body: new Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              constraints: BoxConstraints.expand(
                height: Theme.of(context).textTheme.display1.fontSize * 1.1 +100.0,  
              ),
              alignment: Alignment.bottomRight,
              color: Colors.white,
              child: new Text(
                _hasil,
                style: TextStyle(
                  fontSize: 50.0,
                  color: Colors.black
                ),
                textAlign: TextAlign.right,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _button('7',()=>btnPress("7")),
                _button('8',()=>btnPress("8")),
                _button('9',()=>btnPress("9")),
                _button('+',()=>btnPress("+")),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _button('4',()=>btnPress("4")),
                _button('5',()=>btnPress("5")),
                _button('6',()=>btnPress("6")),
                _button('-',()=>btnPress("-")),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _button('1',()=>btnPress("1")),
                _button('2',()=>btnPress("2")),
                _button('3',()=>btnPress("3")),
                _button('*',()=>btnPress("*")),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _button('0',()=>btnPress("0")),
                _button('C',()=>btnPress("C")),
                _button('=',()=>btnPress("=")),
                _button('/',()=>btnPress("/")),
              ],
            ),
          ],
        )
      ),
    );
  }
}

Widget _button(String number,Function() f){
  return MaterialButton(
    height: 80.0,
    child: Text(
      number,
      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Colors.black)
    ),
    color: Colors.grey[300],
    onPressed: f,
  );
}