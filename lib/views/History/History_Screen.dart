import 'package:flutter/material.dart';

class History_Page extends StatefulWidget {
  const History_Page({super.key});

  @override
  State<History_Page> createState() => _History_PageState();
}

class _History_PageState extends State<History_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          height: 300,
          color: Colors.red,
          child: Row(

            // crossAxisAlignment: CrossAxisAlignment.end,
            children: [
                        Text('Hello',style: TextStyle(color: Colors.black,fontSize: 40),)
          ],),
        ),
    );
  }
}
