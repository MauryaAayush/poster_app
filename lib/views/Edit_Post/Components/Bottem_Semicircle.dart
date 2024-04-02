import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Container Bottom_Semicircle(double height, double width) {
  return Container(
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
  );
}