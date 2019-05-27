import 'package:introduction_screen/introduction_screen.dart';
import 'package:flutter/material.dart';

import 'login.dart';
import 'List.dart';

class IntroSlide extends StatefulWidget {
  @override
  _IntroSlideState createState() => _IntroSlideState();
}


class _IntroSlideState extends State<IntroSlide> {
  List<PageViewModel> listPagesViewModel = [
    PageViewModel(
      "Test 1",
      "Here you can write the description of the page, to explain someting...",
      image: Center(
        child: new Image.asset('assets/images/logo.png',scale: 2.0, width: 60, height: 60),
      ),
    ),
    PageViewModel(
      "Title of first page",
      "Here you can write the description of the page, to explain someting...",
      image: Center(
        child: new Image.asset('assets/images/logo.png',scale: 1.0, width: 60, height: 60),
      ),
      decoration: const PageDecoration(
        pageColor: Colors.blue,
        dotsDecorator: DotsDecorator(
          activeColor: Colors.red,
        )
      ),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return new IntroductionScreen(
      pages: listPagesViewModel,
      done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w600)),
      onDone: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ListData()),
          );
      },
    );
  }
}