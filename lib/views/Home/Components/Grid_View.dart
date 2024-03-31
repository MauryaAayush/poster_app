import 'package:flutter/material.dart';

import '../../../utils/festivals.dart';
import 'Grid_View_Conatiner.dart';

GridView Grid_View() {
  return GridView.builder(
    itemCount: festivalList.length,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
    itemBuilder: (context, index) => festival1(
        festivalList[index]['Color'],
        festivalList[index]['Festival name'],
        festivalList[index]['Text'],
        festivalList[index]['Images'],index,context),);
}