

import 'package:flutter/material.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  Widget build(BuildContext context) {



    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
     body: Center(
       child: Container(
         height: height*0.8,
         width: width,
         decoration: BoxDecoration(
           image: DecorationImage(
             image: AssetImage('assets/gifs/splash.gif'),
             fit: BoxFit.fill
           )
         ),
       ),
     ),
    );
  }
}
