import 'package:introduction_screen/introduction_screen.dart';
import 'package:flutter/material.dart';

import 'Mobx.dart';
import 'List.dart';

class IntroSlide extends StatefulWidget {
  @override
  _IntroSlideState createState() => _IntroSlideState();
}


class _IntroSlideState extends State<IntroSlide> {
  List<PageViewModel> listPagesViewModel = [
    PageViewModel(
      "MISI Puskopdit BKCU KALIMANTAN",
      "MEMASTIKAN KEBERLANJUTAN GERAKAN KREDIT UNION MELALUI TATA KELOLA YANG SEHAT DAN TERINTERGRASI UNTUK MENINGKATKAN KUALITAS ANGGOTA",
      image: Center(
        child: new Image.asset('assets/images/logo.png',scale: 2.0, width: 150, height: 150),
      ),
    ),
    PageViewModel(
      "VISI Puskopdit BKCU KALIMANTAN",
      "MENJADI GERAKAN CREDIT UNION NUSANTARA BERBASIS KOMUNITAS YANG TERINTREGRASI, TANGGUH DAN BERKELANJUTAN",
      image: Center(
        child: new Image.asset('assets/images/logo.png',scale: 1.0, width: 150, height: 150),
      ),
      decoration: const PageDecoration(
        pageColor: Colors.blue,
        dotsDecorator: DotsDecorator(
          activeColor: Colors.red,
        )
      ),
    ),
    PageViewModel(
      "NILAI INTI Puskopdit BKCU KALIMANTAN",
      "SETIA DALAM KESATUAN MEMBERDAYAKAN SECARA UNGGUL DAN INOVATIF DENGAN INTREGRITAS TINGGI SERTA BERPRILAKU RAMAH LINGKUNGAN",
      image: Center(
        child: new Image.asset('assets/images/logo.png',scale: 1.0, width: 150, height: 150),
      ),
      decoration: const PageDecoration(
        pageColor: Colors.brown,
        dotsDecorator: DotsDecorator(
          activeColor: Colors.blue,
        )
      ),
    )
  ];

  @override
  Widget build(BuildContext context) {
    
        return new IntroductionScreen(
          pages: listPagesViewModel,
          done: const Text("SELESAI", style: TextStyle(fontWeight: FontWeight.bold)),
      onDone: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ListData()),
          );
      },
    );
  }
}