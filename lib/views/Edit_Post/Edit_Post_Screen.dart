import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Edit_POst_Screen extends StatefulWidget {
  const Edit_POst_Screen({super.key});

  @override
  State<Edit_POst_Screen> createState() => _Edit_POst_ScreenState();
}

class _Edit_POst_ScreenState extends State<Edit_POst_Screen> {
  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
              // automaticallyImplyLeading: ,
          backgroundColor: Color(0xff1d243b),
        ),
        body: Column(
          children: [

            Expanded(
              child: Container(
                child: Stack(
                  children: [

                  Container(
                  height: height*0.2,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Color(0xff1d243b),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.elliptical(200, 200),
                          bottomRight: Radius.elliptical(200, 200))),
                  ),

                    Container(

                    )
                    // Image.asset(''),
                  ],
                ),
              ),
            ),
            Container(
              height: 220,
              alignment: Alignment.bottomRight,
              decoration: const BoxDecoration(
                  color: Color(0xfffcbd05),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.elliptical(200, 200),
                      topRight: Radius.elliptical(200, 200))),
              child: Container(
                height: 180,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                    color: Color(0xff1d243b),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.elliptical(200, 200),
                        topRight: Radius.elliptical(200, 200))),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 35,
                    ),
                    Text(
                      'Festi Vals',
                      style: GoogleFonts.lobster(
                        fontSize: 35,
                        color: Colors.white,
                        letterSpacing: 2,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Create Your Template With us!!',
                      style: GoogleFonts.lobster(
                        fontSize: 15,
                        color: Colors.white,
                        letterSpacing: 2,
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
