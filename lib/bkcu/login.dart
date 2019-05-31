import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  @override
  Widget build(BuildContext context) {
    final emailInput = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
        hintText: "Email",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20)
         ),

      ),
    );

    final passwordInput = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
        hintText: "Password",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20)
         ),

      ),
    );

    final buttonLogin = Material(
      //elevation: 10,
      borderRadius: BorderRadius.circular(20),
      color: Color(0xff01A0C7),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: ()=>{
          debugPrint("dasdasd")
        }, 
        child: Text(
          "Login Sekarang",
          style: style.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
          
        ),
      )
    );

    return Scaffold(
      body: new Container(
        child: new Padding(
          padding: const EdgeInsets.all(36),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 20.0,
                child: Image.asset(
                  "assets/images/logo.png",
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height:19),
              emailInput,
              SizedBox(height: 10,),
              passwordInput,
              SizedBox(height: 20,),
              buttonLogin,
            ],
          )
        ) ,
      ),
    );
  }
}