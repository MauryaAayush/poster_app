import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/All_Variables.dart';
import '../../../utils/festivals.dart';

Container Image_Container(double width, double height) {
  return Container(
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
      ));
}