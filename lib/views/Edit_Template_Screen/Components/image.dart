import 'package:flutter/material.dart';
import 'package:poster_app/utils/Gradient_List.dart';
import '../../../utils/All_Variables.dart';
import '../../../utils/Text_Decoration.dart';
import '../../../utils/festivals.dart';


Column image() {
  return Column(
    children: [
      const SizedBox(
        height: 20,
      ),
      Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration(
            boxShadow: [
              const BoxShadow(
                color: Colors.grey,
                blurRadius: 0.5,
                spreadRadius: 1,
              )
            ],
            color:
            (!isImageandColor && backgroundcolorindex == 0)
                ? color
                : null,
            gradient:
            (!isImageandColor && backgroundcolorindex > 0)
                ? LinearGradient(
              colors: gradient_List[backgroundcolorindex],
            )
                : null,
          ),
          child: Stack(
            children: [
              Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: (isImageandColor)
                      ? Image.asset(
                    festivalList[postviewIndex]['image']
                    [backgroungindex],
                    fit: BoxFit.cover,
                  )
                      : null),
              Positioned(
                  top: top,
                  bottom: bottem,
                  left: left,
                  right: right,
                  child: Container(
                      height: 300,
                      width: 300,
                      child: Text(
                        txtname.text,
                        style: textfamily[textfontfamilyindex](
                            fontSize: fontofsize,
                            color: Colorlist[textcolorindex]),
                      )))
            ],
          ))
    ],
  );
}