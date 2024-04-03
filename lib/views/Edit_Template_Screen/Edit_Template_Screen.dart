import 'package:flutter/material.dart';

import '../../utils/All_Variables.dart';
import '../../utils/Gradient_List.dart';
import '../../utils/festivals.dart';

class edit_template_screen extends StatefulWidget {
  const edit_template_screen({super.key});

  @override
  State<edit_template_screen> createState() => _edit_template_screenState();
}

class _edit_template_screenState extends State<edit_template_screen> {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color(0xff1c2438),
        title: Text(
          'Edit',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Column(
                children: [

                  Container(
                      height: 350,
                      width: 450,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 0.5,
                            spreadRadius: 1,
                          )
                        ],
                        color: (!isImageandColor && backgroundcolorindex == 0)
                            ? color
                            : null,
                        gradient: (!isImageandColor && backgroundcolorindex > 0)
                            ? LinearGradient(
                                colors: gradient_List[backgroundcolorindex],
                              )
                            : null,
                      ),
                      child: (isImageandColor)
                          ? Image.asset(
                              festivalList[postviewIndex]['image']
                                  [backgroungindex],
                              fit: BoxFit.fill,
                            )
                          : null),
                ],
              ),
            ),
          ),
          IndexedStack(
            index: posteditindex,
            children: [
              Container(
                height: 230,
                decoration: BoxDecoration(
                  color: Color(0xff1c2438),
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                alignment: Alignment.center,
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Change Background Image And Color',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              posteditindex = 4;
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white,
                                  blurRadius: 5,
                                  spreadRadius: 2,
                                )
                              ],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              color: Color(0xff1c2438),
                            ),
                            child: Text(
                              'Background',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              posteditindex = 5;
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white,
                                  blurRadius: 5,
                                  spreadRadius: 2,
                                )
                              ],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              color: Color(0xff1c2438),
                            ),
                            child: Text(
                              'BG Color',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ), //  For canvas  index = 0
              Container(
                height: 220,
                decoration: BoxDecoration(
                  color: Color(0xff1c2438),
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                alignment: Alignment.center,
                child: Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Edit Your Text Here!!',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 150,
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white,
                                blurRadius: 5,
                                spreadRadius: 2,
                              )
                            ],
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: Color(0xff1c2438),
                          ),
                          child: Text(
                            'Add Text',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                        Container(
                          width: 150,
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white,
                                blurRadius: 5,
                                spreadRadius: 2,
                              )
                            ],
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: Color(0xff1c2438),
                          ),
                          child: Text(
                            'Alignment',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 150,
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white,
                                blurRadius: 5,
                                spreadRadius: 2,
                              )
                            ],
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: Color(0xff1c2438),
                          ),
                          child: Text(
                            'Font Family',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                        Container(
                          width: 150,
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white,
                                blurRadius: 5,
                                spreadRadius: 2,
                              )
                            ],
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: Color(0xff1c2438),
                          ),
                          child: Text(
                            'Font Color',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ), // For Text  index = 1
              Container(
                alignment: Alignment.center,
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.red),
                child: Text("Under proccessing"),
              ), // for share  index = 2
              Container(
                alignment: Alignment.center,
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.teal),
                child: Text("Under proccessing"),
              ), // for save index = 3
              background(), //4
              backgroundcolors(), //5
              Container(), //6
            ],
          ),
          Container(
            height: 70,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.white,
                  blurRadius: 5,
                  spreadRadius: 2,
                )
              ],
              color: Color(0xff1c2438),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      posteditindex = 0;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.draw,
                        color: Colors.white,
                      ),
                      Text(
                        'Canvas',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      posteditindex = 1;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.text_fields,
                        color: Colors.white,
                      ),
                      Text(
                        'Text',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      posteditindex = 2;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.share,
                        color: Colors.white,
                      ),
                      Text(
                        'Share',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      posteditindex = 3;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.save_alt,
                        color: Colors.white,
                      ),
                      Text(
                        'Save',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container backgroundcolors() {
    return Container(
      height: 230,
      decoration: BoxDecoration(
        color: Color(0xff1c2438),
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      alignment: Alignment.center,
      child: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Choose Background Color',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              InkWell(
                  onTap: () {
                    setState(() {
                      posteditindex = 0;
                    });
                  },
                  child: Icon(
                    Icons.done,
                    color: Colors.white,
                  ))
            ],
          ),
          SizedBox(
            height: 25,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                gradient_List.length,
                (index) => InkWell(
                  onTap: () {
                    setState(() {
                      isImageandColor = false;
                      backgroundcolorindex = index;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 18.0),
                    child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 0.5,
                                spreadRadius: 1,
                              )
                            ],
                            color: (index == 0) ? Colors.teal : null,
                            gradient: (index > 0)
                                ? LinearGradient(colors: gradient_List[index])
                                : null)),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Container background() {
    return Container(
      height: 230,
      decoration: const BoxDecoration(
        color: Color(0xff1c2438),
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      alignment: Alignment.center,
      child: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Choose Background',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              InkWell(
                  onTap: () {
                    setState(() {
                      posteditindex = 0;
                    });
                  },
                  child: Icon(
                    Icons.done,
                    color: Colors.white,
                  ))
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: festivalList[3]['image'].length,
              itemBuilder: (context, index) => Card(
                child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isImageandColor = true;
                        backgroungindex = index;
                      });
                    },
                    child: Image.asset(festivalList[3]['image'][index])),
              ),
            ),
          )
        ],
      ),
    );
  }
}

