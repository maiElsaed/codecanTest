import 'package:flutter/material.dart';
//import 'page1vocublary.dart';
import 'package:codecansecond/drag_drop_department/views/assembles_image_first.dart';

class Page1PictureComplete extends StatefulWidget {
  State<Page1PictureComplete> createState() => _pg();
}

class _pg extends State<Page1PictureComplete> {
  String questionDisplay = "ايه الحاجه المهمة اللى ناقصة ف الصورة دى";
  int counter = 0;
  List<String> ImagePath = [
    "images/pc1_prev_ui.png",
    "images/pc2_prev_ui.png",
    "images/pc3_prev_ui.png",
    "images/pc4_prev_ui.png",
    "images/pc5_prev_ui.png",
    "images/pc6_prev_ui.png",
    "images/pc7_prev_ui.png",
    "images/pc8_prev_ui.png",
    "images/pc9_prev_ui.png",
    "images/pc10_prev_ui.png",
    "images/pc11_prev_ui.png",
    "images/pc12_prev_ui.png",
    "images/pc13_prev_ui.png",
    "images/pc14_prev_ui.png",
    "images/pc15_prev_ui.png",
    "images/pc16_prev_ui.png",
    "images/pc17_prev_ui.png"
  ];
  @override
  Widget build(BuildContext buildcontext) {
    return SafeArea(child: Material(
      child: OrientationBuilder(
        builder: (context, orientation) {
          return orientation == Orientation.portrait
              ? _PortraiteLayout()
              : _LandScapeLayout();
        },
      ),
    ));
  }

  Widget _PortraiteLayout() {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill, image: AssetImage('images/pcbackground.jpg'))),
      child: Column(
        children: [
          Container(
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * .1),
            // padding: EdgeInsets.only(bottom: 5),
            width: MediaQuery.of(context).size.width * .65,
            height: MediaQuery.of(context).size.height * .2,
            decoration: BoxDecoration(
              color: Color(0xff8978BE),
              borderRadius: BorderRadius.circular(
                31,
              ),
              boxShadow: [
                BoxShadow(
                  color: Color(0xffD2D1F6),
                  offset: Offset(0, 8),
                  blurRadius: 4,
                  // spreadRadius: 2
                ),
              ],
              border: Border.all(width: 3, color: Color(0xffD2D1F6)),
              // gradient: LinearGradient(
              //     colors: [
              //       Color(0xffDD9FD5),
              //       Color(0xff9180C4)
              //     ],
              //     begin: Alignment.topCenter,
              //     end: Alignment.bottomCenter
              // )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                    child: Padding(
                  padding: EdgeInsets.only(left: 4, right: 4),
                  child: Text(
                    questionDisplay,
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * .05,
                        color: Color(0xffEFEAFF)),
                    textAlign: TextAlign.center,
                  ),
                )),
              ],
            ),
          ),
          Container(
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * .05),
            // padding: EdgeInsets.only(bottom: 5),
            width: MediaQuery.of(context).size.width * .65,
            height: MediaQuery.of(context).size.height * .3,
            decoration: BoxDecoration(
              color: Color(0xffF7F5FF),
              borderRadius: BorderRadius.circular(
                31,
              ),
              boxShadow: [
                BoxShadow(
                  color: Color(0xffD2D1F6),
                  offset: Offset(0, 8),
                  blurRadius: 4,
                  // spreadRadius: 2
                ),
              ],
              border: Border.all(width: 3, color: Color(0xffD2D1F6)),
              // gradient: LinearGradient(
              //     colors: [
              //       Color(0xffDD9FD5),
              //       Color(0xff9180C4)
              //     ],
              //     begin: Alignment.topCenter,
              //     end: Alignment.bottomCenter
              // )
            ),
            child: Image(
              image: AssetImage(ImagePath[counter]),
            ),
          ),
          GestureDetector(
            onTap: () {
              // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              //   return Page1PictureComplete();
              // },));
              if (counter <= 15) {
                setState(() {
                  counter += 1;
                });
              } else {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return AssembleImageFirst();
                    },
                  ),
                );
              }
            },
            child: Container(
              margin:
                  EdgeInsets.only(top: MediaQuery.of(context).size.height * .1),
              // padding: EdgeInsets.only(bottom: 5),
              width: MediaQuery.of(context).size.width * .4,
              height: MediaQuery.of(context).size.height * .07,
              decoration: BoxDecoration(
                  color: Color(0xffB5B3DC),
                  borderRadius: BorderRadius.circular(
                    31,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xffE1BFE1),
                      offset: Offset(0, 8),
                      blurRadius: 4,
                      // spreadRadius: 2
                    ),
                  ],
                  border: Border.all(width: 1, color: Color(0xffB5B3DC)),
                  gradient: LinearGradient(
                      colors: [Color(0xffDD9FD5), Color(0xff9180C4)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)),
              child: Center(
                child: Text(
                  'ارسال',
                  style: TextStyle(
                    color: Color(0xff685687),
                    fontWeight: FontWeight.w400,
                    fontSize: MediaQuery.of(context).size.width * .08,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _LandScapeLayout() {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill, image: AssetImage('images/pcbackground.jpg'))),
      child: Column(
        children: [
          Container(
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * .1),
            // padding: EdgeInsets.only(bottom: 5),
            width: MediaQuery.of(context).size.width * .65,
            height: MediaQuery.of(context).size.height * .2,
            decoration: BoxDecoration(
              color: Color(0xff8978BE),
              borderRadius: BorderRadius.circular(
                31,
              ),
              boxShadow: [
                BoxShadow(
                  color: Color(0xffD2D1F6),
                  offset: Offset(0, 8),
                  blurRadius: 4,
                  // spreadRadius: 2
                ),
              ],
              border: Border.all(width: 3, color: Color(0xffD2D1F6)),
              // gradient: LinearGradient(
              //     colors: [
              //       Color(0xffDD9FD5),
              //       Color(0xff9180C4)
              //     ],
              //     begin: Alignment.topCenter,
              //     end: Alignment.bottomCenter
              // )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                    child: Padding(
                  padding: EdgeInsets.only(left: 4, right: 4),
                  child: Text(
                    questionDisplay,
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * .03,
                        color: Color(0xffEFEAFF)),
                    textAlign: TextAlign.center,
                  ),
                )),
              ],
            ),
          ),
          Container(
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * .05),
            // padding: EdgeInsets.only(bottom: 5),
            width: MediaQuery.of(context).size.width * .65,
            height: MediaQuery.of(context).size.height * .3,
            decoration: BoxDecoration(
              color: Color(0xffF7F5FF),
              borderRadius: BorderRadius.circular(
                31,
              ),
              boxShadow: [
                BoxShadow(
                  color: Color(0xffD2D1F6),
                  offset: Offset(0, 8),
                  blurRadius: 4,
                  // spreadRadius: 2
                ),
              ],
              border: Border.all(width: 3, color: Color(0xffD2D1F6)),
              // gradient: LinearGradient(
              //     colors: [
              //       Color(0xffDD9FD5),
              //       Color(0xff9180C4)
              //     ],
              //     begin: Alignment.topCenter,
              //     end: Alignment.bottomCenter
              // )
            ),
            child: Image(
              image: AssetImage(ImagePath[counter]),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return AssembleImageFirst();
                  },
                ),
              );
              if (counter <= 15) {
                setState(() {
                  counter += 1;
                });
              }
            },
            child: Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * .05),
              // padding: EdgeInsets.only(bottom: 5),
              width: MediaQuery.of(context).size.width * .25,
              height: MediaQuery.of(context).size.height * .13,
              decoration: BoxDecoration(
                  color: Color(0xffB5B3DC),
                  borderRadius: BorderRadius.circular(
                    31,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xffE1BFE1),
                      offset: Offset(0, 8),
                      blurRadius: 4,
                      // spreadRadius: 2
                    ),
                  ],
                  border: Border.all(width: 1, color: Color(0xffB5B3DC)),
                  gradient: LinearGradient(
                      colors: [Color(0xffDD9FD5), Color(0xff9180C4)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)),
              child: Center(
                child: Text(
                  'ارسال',
                  style: TextStyle(
                    color: Color(0xff685687),
                    fontWeight: FontWeight.w400,
                    fontSize: MediaQuery.of(context).size.width * .03,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
