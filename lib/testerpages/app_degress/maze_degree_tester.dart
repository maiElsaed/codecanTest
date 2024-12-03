import 'package:flutter/material.dart';
import 'package:codecansecond/logicoperation/childdegreefromapps.dart';
import 'package:codecansecond/departments/calculation/calculationfirst.dart';

import '../../logicoperation/childdegreefromtesters.dart';
import 'final_screen.dart';
//import 'informationtester4.dart';
class TesterMazeTotalDegree extends StatefulWidget{
  State<TesterMazeTotalDegree> createState() => _pg();
}
class _pg extends State<TesterMazeTotalDegree> {
  int degree=0;
  bool flag=false;
  String check=' ';

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
                        margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*.68 ),
                        width: MediaQuery.of(context).size.width*.25,
                        height:MediaQuery.of(context).size.height*.1,
                        child: Center(
                          child: TextField(

                            onChanged: (value) {
                              setState(() {
                                if (value.isEmpty) {
                                  flag = false;
                                } else {
                                  flag = true;
                                  check = ' ';
                                }
                                degree = int.parse(value);
                              });
                            },
                            style: TextStyle(color: Color(0xff7870EE),fontSize: 20,
                                 ),

                            decoration: InputDecoration(
                              filled: true,
                              fillColor:Color(0xffCBCCEE) ,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(
                                    color: Color(0xff7870EE),width: 2
                                ),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(
                                    color: Color(0xff7870EE),width: 2
                                ),
                              ),
                              // fillColor: Color(0xffFBEDE6),
                            ),
                          ),

                        ),
                      ),
                      //SizedBox(height:MediaQuery.of(context).size.height*.75 ,),
                      GestureDetector(
                          onTap: (){
                            if(flag==true){
                              CalculationFromTester.Maze+=degree;
                              Navigator.of(context).push(MaterialPageRoute(builder:
                                  (context) {
                                return FinalScreenDegree();

                              },
                              ));
                            }else {
                              setState(() {
                                check = 'enter the degree';
                              });
                            }
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