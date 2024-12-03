import 'package:flutter/material.dart';
//import 'page1vocublary.dart';
import 'package:codecansecond/drag_drop_department/views/assembles_image_first.dart';
import 'package:codecansecond/logicoperation/childdegreefromtesters.dart';

import '../app_degress/information_degree_tester.dart';
class Page1PictureCompleteTester extends StatefulWidget {
  State<Page1PictureCompleteTester> createState() => _pg();
}

class _pg extends State<Page1PictureCompleteTester> {
  int Questiondegree=0 ;

  bool check = false;
  int  x=0;
  String text = "";


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
              fit: BoxFit.fill, image: AssetImage('images/pc_tester_bg.jpg'))),
      child: Column(
        children: [
          // Container(
          //   margin:
          //   EdgeInsets.only(top: MediaQuery.of(context).size.height * .1),
          //   // padding: EdgeInsets.only(bottom: 5),
          //   width: MediaQuery.of(context).size.width * .65,
          //   height: MediaQuery.of(context).size.height * .2,
          //   decoration: BoxDecoration(
          //     color: Color(0xff8978BE),
          //     borderRadius: BorderRadius.circular(
          //       31,
          //     ),
          //     boxShadow: [
          //       BoxShadow(
          //         color: Color(0xffD2D1F6),
          //         offset: Offset(0, 8),
          //         blurRadius: 4,
          //         // spreadRadius: 2
          //       ),
          //     ],
          //     border: Border.all(width: 3, color: Color(0xffD2D1F6)),
          //     // gradient: LinearGradient(
          //     //     colors: [
          //     //       Color(0xffDD9FD5),
          //     //       Color(0xff9180C4)
          //     //     ],
          //     //     begin: Alignment.topCenter,
          //     //     end: Alignment.bottomCenter
          //     // )
          //   ),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       Flexible(
          //           child: Padding(
          //             padding: EdgeInsets.only(left: 4, right: 4),
          //             child: Text(
          //               questionDisplay,
          //               style: TextStyle(
          //                   fontSize: MediaQuery.of(context).size.width * .05,
          //                   color: Color(0xffEFEAFF)),
          //               textAlign: TextAlign.center,
          //             ),
          //           )),
          //     ],
          //   ),
          // ),
          Container(
            margin:
            EdgeInsets.only(top: MediaQuery.of(context).size.height * .22),
            // padding: EdgeInsets.only(bottom: 5),
            width: MediaQuery.of(context).size.width * .4,
            height: MediaQuery.of(context).size.height * .17,
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
            onTap: (){
              setState(() {
                Questiondegree=0;
                check=true;
                text=" ";
                x=1;
              });
            },
            child: Container(
              width: MediaQuery.of(context).size.width*.5,
              height: MediaQuery.of(context).size.height*.07,
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*.02),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors:x==1? [
                        Color(0xff897ABD).withOpacity(.6),
                        Color(0xff897ABD).withOpacity(.6),
                      ]:[
                        Color(0xff897ABD).withOpacity(1),
                        Color(0xff897ABD).withOpacity(1),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter
                  ),
                  borderRadius: BorderRadius.circular(31,),
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: Color(0xff3C5E80),
                  //     offset: Offset(0,4),
                  //     blurRadius: 4,
                  //   )
                  // ],
                  border: Border.all(color: Color(0xff8B7CBF),width: 2)
              ),
              child: Center(
                //padding: EdgeInsets.only(bottom: 8,left: 100),
                child: Text(
                  'صفر',
                  style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontSize: MediaQuery.of(context).size.width*.07,
                   // fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              setState(() {
                Questiondegree=1;
                check=true;
                text=" ";
                x=2;
              });
            },
            child: Container(
              width: MediaQuery.of(context).size.width*.5,
              height: MediaQuery.of(context).size.height*.07,
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*.02),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors:x==2? [
                        Color(0xff897ABD).withOpacity(.6),
                        Color(0xff897ABD).withOpacity(.6),
                      ]:[
                        Color(0xff897ABD).withOpacity(1),
                        Color(0xff897ABD).withOpacity(1),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter
                  ),
                  borderRadius: BorderRadius.circular(31,),
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: Color(0xff3C5E80),
                  //     offset: Offset(0,4),
                  //     blurRadius: 4,
                  //   )
                  // ],
                  border: Border.all(color: Color(0xff8B7CBF),width: 2)
              ),
              child: Center(
                //padding: EdgeInsets.only(bottom: 8,left: 100),
                child: Text(
                  '١ درجه',
                  style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontSize: MediaQuery.of(context).size.width*.07,
                    // fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              //   return Page1PictureComplete();
              // },));
              if(check==true){
                CalculationFromTester.PictureComplete+=Questiondegree;
                if (counter <= 15) {
                  setState(() {
                    counter += 1;
                    check=false;
                    x=0;
                  });
                } else {

                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return TesterInformationTotalDegree();
                      },
                    ),
                  );
                }
              }else{
                setState(() {
                  text="select degree";
                }
                );
              }

            },
            child: Container(
              margin:
              EdgeInsets.only(top: MediaQuery.of(context).size.height *.02),
              // padding: EdgeInsets.only(bottom: 5),
              width: MediaQuery.of(context).size.width * .4,
              height: MediaQuery.of(context).size.height * .07,
              decoration: BoxDecoration(
                 // color: Color(0xffB5B3DC),
                  borderRadius: BorderRadius.circular(
                    31,
                  ),

                  border: Border.all(width: 1, color: Color(0xffA985C3)),
                  gradient: LinearGradient(
                      colors: [Color(0xffFFCFF7), Color(0xff9180C4)],
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
          ),
          SizedBox(height: MediaQuery.of(context).size.height*.01,),
          Center(
            child: Text(text,style: TextStyle(color: Colors.redAccent),
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
              fit: BoxFit.fill, image: AssetImage('images/pc_tester_bg.jpg'))),
      child: Column(
        children: [
          // Container(
          //   margin:
          //   EdgeInsets.only(top: MediaQuery.of(context).size.height * .1),
          //   // padding: EdgeInsets.only(bottom: 5),
          //   width: MediaQuery.of(context).size.width * .65,
          //   height: MediaQuery.of(context).size.height * .2,
          //   decoration: BoxDecoration(
          //     color: Color(0xff8978BE),
          //     borderRadius: BorderRadius.circular(
          //       31,
          //     ),
          //     boxShadow: [
          //       BoxShadow(
          //         color: Color(0xffD2D1F6),
          //         offset: Offset(0, 8),
          //         blurRadius: 4,
          //         // spreadRadius: 2
          //       ),
          //     ],
          //     border: Border.all(width: 3, color: Color(0xffD2D1F6)),
          //     // gradient: LinearGradient(
          //     //     colors: [
          //     //       Color(0xffDD9FD5),
          //     //       Color(0xff9180C4)
          //     //     ],
          //     //     begin: Alignment.topCenter,
          //     //     end: Alignment.bottomCenter
          //     // )
          //   ),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       Flexible(
          //           child: Padding(
          //             padding: EdgeInsets.only(left: 4, right: 4),
          //             child: Text(
          //               questionDisplay,
          //               style: TextStyle(
          //                   fontSize: MediaQuery.of(context).size.width * .05,
          //                   color: Color(0xffEFEAFF)),
          //               textAlign: TextAlign.center,
          //             ),
          //           )),
          //     ],
          //   ),
          // ),
          Container(
            margin:
            EdgeInsets.only(top: MediaQuery.of(context).size.height * .22),
            // padding: EdgeInsets.only(bottom: 5),
            width: MediaQuery.of(context).size.width * .23,
            height: MediaQuery.of(context).size.height * .1,
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
            onTap: (){
              setState(() {
                Questiondegree=0;
                check=true;
                text=" ";
                x=1;
              });
            },
            child: Container(
              width: MediaQuery.of(context).size.width*.2,
              height: MediaQuery.of(context).size.height*.07,
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*.02),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors:x==1? [
                        Color(0xff897ABD).withOpacity(.6),
                        Color(0xff897ABD).withOpacity(.6),
                      ]:[
                        Color(0xff897ABD).withOpacity(1),
                        Color(0xff897ABD).withOpacity(1),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter
                  ),
                  borderRadius: BorderRadius.circular(31,),
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: Color(0xff3C5E80),
                  //     offset: Offset(0,4),
                  //     blurRadius: 4,
                  //   )
                  // ],
                  border: Border.all(color: Color(0xff8B7CBF),width: 2)
              ),
              child: Center(
                //padding: EdgeInsets.only(bottom: 8,left: 100),
                child: Text(
                  'صفر',
                  style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontSize: MediaQuery.of(context).size.width*.02,
                    // fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              setState(() {
                Questiondegree=1;
                check=true;
                text=" ";
                x=2;
              });
            },
            child: Container(
              width: MediaQuery.of(context).size.width*.2,
              height: MediaQuery.of(context).size.height*.07,
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*.02),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors:x==2? [
                        Color(0xff897ABD).withOpacity(.6),
                        Color(0xff897ABD).withOpacity(.6),
                      ]:[
                        Color(0xff897ABD).withOpacity(1),
                        Color(0xff897ABD).withOpacity(1),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter
                  ),
                  borderRadius: BorderRadius.circular(31,),
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: Color(0xff3C5E80),
                  //     offset: Offset(0,4),
                  //     blurRadius: 4,
                  //   )
                  // ],
                  border: Border.all(color: Color(0xff8B7CBF),width: 2)
              ),
              child: Center(
                //padding: EdgeInsets.only(bottom: 8,left: 100),
                child: Text(
                  '١ درجه',
                  style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontSize: MediaQuery.of(context).size.width*.02,
                    // fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              //   return Page1PictureComplete();
              // },));
              if(check==true){
                CalculationFromTester.PictureComplete+=Questiondegree;
                if (counter <= 15) {
                  setState(() {
                    counter += 1;
                    check=false;
                    x=0;
                  });
                } else {

                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return TesterInformationTotalDegree();
                      },
                    ),
                  );
                }
              }else{
                setState(() {
                  text="select degree";
                }
                );
              }

            },
            child: Container(
              margin:
              EdgeInsets.only(top: MediaQuery.of(context).size.height *.02),
              // padding: EdgeInsets.only(bottom: 5),
              width: MediaQuery.of(context).size.width * .15,
              height: MediaQuery.of(context).size.height * .07,
              decoration: BoxDecoration(
                // color: Color(0xffB5B3DC),
                  borderRadius: BorderRadius.circular(
                    31,
                  ),

                  border: Border.all(width: 1, color: Color(0xffA985C3)),
                  gradient: LinearGradient(
                      colors: [Color(0xffFFCFF7), Color(0xff9180C4)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)),
              child: Center(
                child: Text(
                  'ارسال',
                  style: TextStyle(
                    color: Color(0xff685687),
                    fontWeight: FontWeight.w400,
                    fontSize: MediaQuery.of(context).size.width * .02,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height*.01,),
          Center(
            child: Text(text,style: TextStyle(color: Colors.redAccent),
            ),
          )
        ],
      ),
    );
  }
}
