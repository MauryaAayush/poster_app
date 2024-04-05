import 'package:flutter/material.dart';
import 'package:flutter_hsvcolor_picker/flutter_hsvcolor_picker.dart';
import '../../utils/All_Variables.dart';
import '../../utils/Gradient_List.dart';
import '../../utils/Text_Decoration.dart';
import '../../utils/festivals.dart';
import 'Components/All_Text_Elements/addthetext/addtext.dart';
import 'Components/All_Text_Elements/alignment/bottom.dart';
import 'Components/All_Text_Elements/alignment/fontsize.dart';
import 'Components/All_Text_Elements/alignment/left.dart';
import 'Components/All_Text_Elements/alignment/rigth.dart';
import 'Components/All_Text_Elements/alignment/simple.dart';
import 'Components/All_Text_Elements/alignment/top.dart';
import 'Components/All_Text_Elements/buttons.dart';
import 'Components/All_Text_Elements/fontcolor/color.dart';
import 'Components/All_Text_Elements/fontfamily/family.dart';
import 'Components/background/backcolor.dart';
import 'Components/background/backgroundimage.dart';
import 'Components/bottomnavigator.dart';
import 'Components/simple.dart';

class edit_template_screen extends StatefulWidget {
  const edit_template_screen({super.key});

  @override
  State<edit_template_screen> createState() => _edit_template_screenState();
}

class _edit_template_screenState extends State<edit_template_screen> {
  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color(0xff1c2438),
        title: Text(
          'Edit',
          style: TextStyle(color: Colors.white,
          fontSize: 25),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      height: 430,
                      width: 430,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: (isImageandColor)
                              ? AssetImage(
                                  festivalList[postviewIndex]['image']
                                      [backgroungindex],
                                )
                              : AssetImage(''),
                          fit: BoxFit.fill,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xff1c2438),
                            blurRadius: 0.5,
                            spreadRadius: 1,
                          )
                        ],
                
                        gradient:
                             LinearGradient(
                                colors: gradient_List[backgroundcolorindex],
                              )
                
                      ),
                      child: Stack(
                        children: [
                          Container(
                              width: width,
                              height: height,
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
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          IndexedStack(
            index: posteditindex,
            children: [

              canvas(), //0
              text(), //1
              Container(
                height: 100,
                color: Colors.blue,
              ),
              Container(
                height: 100,
                color: Colors.red,
              ),
              background(), //4
              backgroundcolors(), //5
              textfield(), // 6


              // Alignment conatiner
              Container(
                height: 230,
                padding:  EdgeInsets.all(10),
                decoration:  BoxDecoration(
                  color: Color(0xff1c2438),
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                alignment: Alignment.center,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        headofalignments(),
                        InkWell(
                            onTap: () {
                              setState(() {
                                posteditindex = 1;
                              });
                            },
                            child: icons())
                      ],
                    ),
                    dividerandspace(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              headofpostion(),
                              SizedBox(
                                height: 5,
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    bottem += 4;
                                    top -= 4;
                                  });
                                },
                                child: alignmenttop(),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: 12,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        right += 4;
                                        left -= 4;
                                      });
                                    },
                                    child: alignmentleft(),
                                  ),
                                  SizedBox(
                                    width: 38,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        right -= 4;
                                        left += 4;
                                      });
                                    },
                                    child: alignmentrigth(),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    top += 4;
                                    bottem -= 4;
                                  });
                                },
                                child: alignmentbottom(),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              fontsizetext(),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        fontofsize++;
                                      });
                                    },
                                    child: fontsizeincrease(),
                                  ),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        fontofsize--;
                                      });
                                    },
                                    child: fontsizereduce(),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),//7 for the alignment
              fontfamilys(),//8
              textcolor(), //9
            ],
          ),
          Container(
            height: 80,
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
                  child: canvasedit(),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      posteditindex = 1;
                    });
                  },
                  child: textedit(),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      posteditindex = 2;
                    });
                  },
                    child: save()),
                InkWell(
                  onTap: () {
                    setState(() {
                      posteditindex = 3;
                    });
                  },
                    child: share()),
              ],
            ),
          ),
        ],
      ),
    );
  }


  Container textfield() {
    return Container(
      height: 230,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: Color(0xff1c2438),
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              headtext(),
              InkWell(
                  onTap: () {
                    setState(() {
                      TextEditingControllerlist.add(txtname.text);
                      posteditindex = 1;
                    });
                  },
                  child: icons())
            ],
          ),
          dividerandspace(),
          InkWell(
            onTap: () {
              setState(() {
                posteditindex = 6;
              });
            },
              child: textFields())
        ],
      ),
    );
  }
  Container fontfamilys() {
    return Container(
      height: 230,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: Color(0xff1c2438),
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              familyheadtext(),
              InkWell(
                  onTap: () {
                    setState(() {
                      posteditindex = 1;
                    });
                  },
                  child: icons())
            ],
          ),
          dividerandspace(),
          Container(
            height: 144,
            child: SingleChildScrollView(
              child: Column(
                  children: List.generate(
                      textfamily.length,
                          (index) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              textfontfamilyindex = index;
                            });
                          },
                          child: fontfamilytext(index),
                        ),
                      ))),
            ),
          )
        ],
      ),
    );
  }
  Container textcolor() {
    return Container(
      height: 230,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: Color(0xff1c2438),
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              headfontcolor(),
              InkWell(
                  onTap: () {
                    setState(() {
                      posteditindex = 1;
                    });
                  },
                  child: icons())
            ],
          ),
          dividerandspace(),
          GridView.builder(
            itemCount: Colorlist.length,
            shrinkWrap: true,
            gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 6),
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                setState(() {
                  textcolorindex = index;
                  (index == 0)
                      ? showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text('Pick your color'),
                        content: Container(
                          height: 400,
                          width: 300,
                          child: ColorPicker(
                            color: Colorlist[0],
                            onChanged: (value) {
                              setState(() {
                                Colorlist[0] = value;
                              });
                            },
                            initialPicker: Picker.paletteHue,
                          ),
                        ),
                        actions: [
                          InkWell(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text("save"))
                        ],
                      ))
                      : null;
                });
              },
              child: coloricon(index),
            ),
          )
        ],
      ),
    );
  }

  Container backgroundcolors() {
    return Container(
      height: 230,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: Color(0xff1c2438),
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      alignment: Alignment.center,
      child: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              headofbgcolor(),
              InkWell(
                  onTap: () {
                    setState(() {
                      posteditindex = 0;
                    });
                  },
                  child: icons())
            ],
          ),
          const SizedBox(
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
                  child: backcolors(index),
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
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: Color(0xff1c2438),
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      alignment: Alignment.center,
      child: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              headofimage(),
              InkWell(
                  onTap: () {
                    setState(() {
                      posteditindex = 0;
                    });
                  },
                  child: icons())
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                festivalList[postviewIndex]['image'].length,
                    (index) => InkWell(
                  onTap: () {
                    setState(() {
                      isImageandColor = true;
                      backgroungindex = index;
                    });
                  },
                  child: backimage(index),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
  Container text() {
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
          headoftext(),
           SizedBox(
            height: 20,
          ),


          // Add Text and alingment
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
             InkWell(
                onTap: () {
                  setState(() {
                    posteditindex = 6;
                  });
                },
                 child: addtext()),
              InkWell(
                onTap: () {
                  setState(() {
                    posteditindex = 7;
                  });
                },
                  child: alignment()),
            ],
          ),


           SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    posteditindex = 8;
                  });
                },
                  child: fontfamily()),
              InkWell(
                  onTap: () {
                    setState(() {
                      posteditindex = 9;
                    });
                  },
                  child: fontcolor()),

            ],
          ),
        ],
      ),
    );
  }
  Container canvas() {
    return Container(
      height: 230,
      decoration: const BoxDecoration(
        color: Color(0xff1c2438),
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      alignment: Alignment.center,
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          textname(),
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
                child: backgroundimg(),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    posteditindex = 5;
                  });
                },
                child: backgroundcol(),
              ),
            ],
          )
        ],
      ),
    );
  }


}
