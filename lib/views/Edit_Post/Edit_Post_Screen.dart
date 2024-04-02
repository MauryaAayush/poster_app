
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/All_Variables.dart';
import '../../utils/festivals.dart';
import 'Components/Bottem_Semicircle.dart';
import 'Components/Image_Container.dart';
import 'Components/Top_Semicircle.dart';

class Edit_POst_Screen extends StatefulWidget {
  const Edit_POst_Screen({super.key});

  @override
  State<Edit_POst_Screen> createState() => _Edit_POst_ScreenState();
}

class _Edit_POst_ScreenState extends State<Edit_POst_Screen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: ,
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xff1d243b),

        actions: [IconButton(onPressed: () { Navigator.of(context).pushNamed('/four');}, icon: Icon(Icons.download))],
      ),
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                top_semicircle(height),
                Image_Container(width, height),
                // Edit container
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('/four');
                  },
                  child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.fromLTRB(
                        width * 0.05, height * 0.45, width * 0.05, height * 0),
                    height: height * 0.09,
                    width: width * 0.9,
                    decoration: BoxDecoration(
                        color: Color(0xff1d243b),
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 8,
                              spreadRadius: 0.5,
                              offset: Offset(1, 8))
                        ]),
                    child: Text(
                      'Edit Template',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                )
              ],
            ),
          ),
          Bottom_Semicircle(height, width)
        ],
      ),
    );
  }
}
