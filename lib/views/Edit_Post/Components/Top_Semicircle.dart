import 'package:flutter/cupertino.dart';

Container top_semicircle(double height) {
  return Container(
    height: height * 0.2,
    alignment: Alignment.center,
    decoration: const BoxDecoration(
        color: Color(0xff1d243b),
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(200),
            bottomRight: Radius.circular(200))),
  );
}