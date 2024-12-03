import 'package:flutter/material.dart';
import 'package:codecansecond/logicoperation/childdegreefromapps.dart';
import 'package:codecansecond/departments/calculation/calculationfirst.dart';
//import 'informationtester4.dart';
class MazeTotalDegree extends StatefulWidget{
  State<MazeTotalDegree> createState() => _pg();
}
class _pg extends State<MazeTotalDegree> {
  int Questiondegree=0;
  bool check=false;
  String text="";

  Widget build(BuildContext buildcontext) {
    // var heights=mediaQuery.;
    return SafeArea(
        child: Material(
            child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('images/maze_bg_degree.jpg',),
                  ),
                ),
                child: Column(
                    children: [

                      Container(
                        margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*.65 ),
                        width: MediaQuery.of(context).size.width*.3,
                        height:MediaQuery.of(context).size.height*.1,
                        decoration: BoxDecoration(
                            color: Color(0xffCBCCEE).withOpacity(.66),
                            borderRadius: BorderRadius.circular(31,),
                            // boxShadow: [
                            //   BoxShadow(
                            //     color: Color(0xff745C9C),
                            //     offset: Offset(0,4),
                            //     blurRadius: 10,
                            //   )
                            // ],
                            border: Border.all(color: Color(0xff0D0E60),width: 2)
                        ),
                        child: Center(
                          child: Text(
                           "${CalculationFromApp.Maze}",
                            //"15",
                            style: TextStyle(
                              color: Color(0xff0D0E60),
                              fontSize: 30,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      //SizedBox(height:MediaQuery.of(context).size.height*.75 ,),
                      GestureDetector(
                        onTap: () {

                          // Navigator.of(context).push(
                          //   MaterialPageRoute(
                          //     builder: (context) {
                          //       return MazeScreenTwo();
                          //     },
                          //   ),
                          // );
                        },
                        child: Container(
                          margin: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * .05,
                              left: MediaQuery.of(context).size.width * .3),
                          width: MediaQuery.of(context).size.width * .35,
                          height: MediaQuery.of(context).size.height * .07,
                          decoration: BoxDecoration(
                              color: Color(0xffDCDAFF).withOpacity(.85),
                              borderRadius: BorderRadius.circular(
                                31,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xff000000),
                                  offset: Offset(0, 3),
                                  blurRadius: 4,
                                  // spreadRadius: 2
                                ),
                              ],
                              border: Border.all(width: 0.5, color: Color(0xff1D1A83)),
                              gradient: LinearGradient(
                                  colors: [Color(0xffDCDBFC), Color(0xffDCDBFC)],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter)),
                          child: Center(
                            child: Text(
                              'ارسال',
                              style: TextStyle(
                                  color: Color(0xff0D0E60),
                                  fontWeight: FontWeight.w400,
                                  fontSize: MediaQuery.of(context).size.width * .07),
                            ),
                          ),
                        ),
                      )
                    ]
                )
            )
        )
    );
  }
}