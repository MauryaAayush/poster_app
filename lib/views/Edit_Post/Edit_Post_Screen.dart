import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/All_Variables.dart';
import '../../utils/festivals.dart';

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

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          // automaticallyImplyLeading: ,
          foregroundColor: Colors.white ,
          backgroundColor:  const Color(0xff1d243b),

          actions: [

            IconButton(onPressed: () {

            }, icon: Icon(Icons.download))

          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Container(
                    height: height * 0.2,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                        color: Color(0xff1d243b),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(200),
                            bottomRight: Radius.circular(200))),
                  ),
                  Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: width * 0.1, vertical: height * 0.05),
                      height: height * 0.35,
                      width: width * 0.8,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 0.5,
                            spreadRadius: 1,
                          )
                        ],
                        color: Colors.black,
                      ),
                      child: Image.asset(
                        festivalList[postviewIndex]['Images'],
                        fit: BoxFit.cover,
                      )),

                  // Edit container
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.fromLTRB(width*0.05, height*0.45, width*0.05, height*0),
                    height: height*0.09,
                    width: width*0.9,
                    decoration: BoxDecoration(
                      color: Color(0xff1d243b),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 8,
                          spreadRadius: 0.5,
                          offset: Offset(1, 8)

                        )
                      ]
                    ),
                    child: Text('Edit Template',style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w800

                    ),),
                  )
                ],
              ),
            ),
            Container(
              height: height*0.262,
              width: width,
              alignment: Alignment.bottomRight,
              decoration: const BoxDecoration(
                  color: Color(0xfffcbd05),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(220),
                      topRight: Radius.circular(220))),
              child: Container(
                height: height*0.22,
                width: width,

                alignment: Alignment.center,
                decoration: const BoxDecoration(
                    color: Color(0xff1d243b),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(250),
                        topRight: Radius.circular(250))),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 35,
                    ),
                    Text(
                      'FestiVals',
                      style: GoogleFonts.greatVibes(
                        fontSize: 55,
                        color: Colors.white,
                        letterSpacing: 2,
                        fontWeight: FontWeight.bold, // Add this line for font weight
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Create Your Template With us!!',
                      style: GoogleFonts.greatVibes(
                        fontSize: 22,
                        color: Colors.white,
                        letterSpacing: 2,
                        fontWeight : FontWeight.bold
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
