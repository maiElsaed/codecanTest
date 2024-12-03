import 'package:flutter/material.dart';
import 'package:codecansecond/logicoperation/childdegreefromapps.dart';
import 'package:codecansecond/departments/calculation/calculationfirst.dart';
//import 'informationtester4.dart';
import 'package:codecansecond/drag_drop_department/views/box_puzzle_first_page.dart';

import 'box_puzzle_degree.dart';
class AssembleImageTotalDegree extends StatefulWidget{
  State<AssembleImageTotalDegree> createState() => _pg();
}
class _pg extends State<AssembleImageTotalDegree> {
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
                    image: AssetImage('images/tester_objectassemble_degree.jpg',),
                  ),
                ),
                child: Column(
                    children: [

                      Container(
                        margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*.6 ),
                        width: MediaQuery.of(context).size.width*.3,
                        height:MediaQuery.of(context).size.height*.1,
                        decoration: BoxDecoration(
                            color: Color(0xffCFA7DA),
                            borderRadius: BorderRadius.circular(31,),
                            // boxShadow: [
                            //   BoxShadow(
                            //     color: Color(0xffFCE3DB),
                            //     offset: Offset(0,4),
                            //     blurRadius: 10,
                            //   )
                            // ],
                            border: Border.all(color: Color(0xffEFEAFF),width: 2)
                        ),
                        child: Center(
                          child: Text(
                            "${CalculationFromApp.ObjectAssembles}",
                            //"10",
                            style: TextStyle(
                              color: Color(0xff745C9C),
                              fontSize: 30,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      //SizedBox(height:MediaQuery.of(context).size.height*.75 ,),
                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder:
                              (context) {
                            return BoxPuzzleTotalDegree();
                          },
                          ));
                        },
                        child: Container(
                          margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*.1),
                          width: MediaQuery.of(context).size.height*.3,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xffFFCFF7),
                                  Color(0xff9180C4),
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                              borderRadius: BorderRadius.circular(31,),
                              // boxShadow: [
                              //   BoxShadow(
                              //     color: Color(0xff252033),
                              //     offset: Offset(0,4),
                              //     blurRadius: 4,
                              //   )
                              // ],
                              border: Border.all(color: Color(0xffA985C3),width: 2)
                          ),
                          child: Center(
                            child: Text(
                              'ارسال',
                              style: TextStyle(
                                color: Color(0xffEFEAFF),
                                fontSize: 30,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ]
                )
            )
        )
    );
  }
}