import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/All_Variables.dart';
import 'Components/Grid_View.dart';
import 'Components/List_view.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  @override
  Widget build(BuildContext context) {
      double height = MediaQuery.of(context).size.height;
      // double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65.0),
        child: AppBar(
          automaticallyImplyLeading: false,
          shadowColor: const Color(0xff1c2438),
          centerTitle: true,
          toolbarHeight: 80,
          title: Text(
            'Festy',
            style: GoogleFonts.greatVibes(
              fontSize: 50,
              fontWeight: FontWeight.w900,
              color: Colors.white,
              letterSpacing: 3,
            ),
          ),
          backgroundColor:  Color(0xff1c2438),
          actions: [
            InkWell(
              onTap: () {
                setState(() {
                  isfestival = !isfestival;
                });
              },
              child: Icon(
                (!isfestival) ? Icons.list_outlined : Icons.grid_view_rounded,
                color: Colors.white,
                size: 30,
              ),
            ),
            SizedBox(
              width: 15,
            )
          ],
        ),
      ),
      body: Center(
          child: Stack(
        children: [
          Column(
            children: [
              Container(
                height: height * 0.22,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                    color: Color(0xff1d243b),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.elliptical(200, 200),
                        bottomRight: Radius.elliptical(200, 200))),
              ),
            ],
          ),
          (isfestival) ? List_view() : Grid_View(),
        ],
      )),
    );
  }
}

//
