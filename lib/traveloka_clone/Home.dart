import 'package:flutter/material.dart';
import 'package:latihan1/traveloka_clone/awal.dart';
import 'package:latihan1/traveloka_clone/inbox.dart';
import 'package:latihan1/traveloka_clone/pesanan.dart';
import 'package:latihan1/traveloka_clone/profile.dart';
import 'package:latihan1/traveloka_clone/simpan.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  final _layoutPage= {
    Awal(),
    Simpan(),
    Pesanan(),
    Inbox(),
    Profile(),
  };

  void _onTabItem(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: _layoutPage.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Awal")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.save),
            title: Text("Simpan")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.view_agenda),
            title: Text("pesanan")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.inbox),
            title: Text("Inbox")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text("Profile")
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onTabItem,
      ),
    );
  }
}