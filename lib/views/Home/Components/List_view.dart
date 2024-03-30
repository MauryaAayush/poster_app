

import 'package:flutter/material.dart';

import '../../../utils/Festivals.dart';
import 'List_View_Container.dart';

Widget List_view() {
  return ListView.builder(
    shrinkWrap: true,
      itemCount: festivalList.length,
    itemBuilder: (context, index) => festival(
      festivalList[index]['Color'],
      festivalList[index]['Festival name'],
      festivalList[index]['Text'],
      festivalList[index]['Images'],
      index,
      context
    )
  );
}

