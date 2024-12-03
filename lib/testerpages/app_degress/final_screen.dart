import 'package:flutter/material.dart';
import 'package:codecansecond/logicoperation/childdegreefromapps.dart';
import 'package:codecansecond/departments/calculation/calculationfirst.dart';
//import 'informationtester4.dart';
import 'package:codecansecond/drag_drop_department/views/box_puzzle_first_page.dart';
import 'package:codecansecond/calculation_degree/service_model.dart';

import '../../logicoperation/childdegreefromtesters.dart';
import 'appreciations/appreciation_understand.dart';
class FinalScreenDegree extends StatefulWidget{
  State<FinalScreenDegree> createState() => _pg();
}
class _pg extends State<FinalScreenDegree> {
  int Questiondegree=0;
  bool check=false;
  String text="";
  late Map result;
  @override
  void initState() {
    result=CalculateFinalDegree.CheckAge();
    print("undestand${CalculationFromTester.understandDegree}");
    print("information${CalculationFromTester.InformationDegree}");
    print("calculation${CalculationFromTester.CalculationDegree}");
    print("similar${CalculationFromTester.SimilarDegree}");
    print("vocublary${CalculationFromTester.VocublaryDegree}");
    print("picturecomplete${CalculationFromTester.PictureComplete}");
    print("repeatNimber${CalculationFromTester.RepeatNumber}");
    print("object assemble${CalculationFromTester.ObjectAssemble}");
    print("block design${CalculationFromTester.BlockDesign}");
    print("maze${CalculationFromTester.Maze}");
  }
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
                    image: AssetImage('images/final_screen_bg.jpg',),
                  ),
                ),
                child: Center(
                  child: Column(
                      children: [
                        SizedBox(height: MediaQuery.of(context).size.height*.25,),
                        Text('درجة الاختبارات اللفظية',
                         style: TextStyle(color: Color(0xff755073),fontSize:20),),
                        Container(
                          margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*.01 ),
                          width: MediaQuery.of(context).size.width*.4,
                          height:MediaQuery.of(context).size.height*.08,
                          decoration: BoxDecoration(
                              color: Color(0xffCFA7DA).withOpacity(0.23),

                              borderRadius: BorderRadius.circular(31,),
                              // boxShadow: [
                              //   BoxShadow(
                              //     color: Color(0xffFCE3DB),
                              //     offset: Offset(0,4),
                              //     blurRadius: 10,
                              //   )
                              // ],
                              border: Border.all(color: Color(0xffB34FA8),width: 1)
                          ),
                          child: Center(
                            child: Text(
                              "${result['verbal']}",

                              style: TextStyle(
                                color: Color(0xff745C9C),
                                fontSize: 30,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        Text('درجة الاختبارات العملية ',
                          style: TextStyle(color: Color(0xff755073),fontSize:20),),
                        Container(
                          margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*.01 ),
                          width: MediaQuery.of(context).size.width*.4,
                          height:MediaQuery.of(context).size.height*.08,
                          decoration: BoxDecoration(
                              color: Color(0xffCFA7DA).withOpacity(0.23),

                              borderRadius: BorderRadius.circular(31,),
                              // boxShadow: [
                              //   BoxShadow(
                              //     color: Color(0xffFCE3DB),
                              //     offset: Offset(0,4),
                              //     blurRadius: 10,
                              //   )
                              // ],
                              border: Border.all(color: Color(0xffB34FA8),width: 1)
                          ),
                          child: Center(
                            child: Text(
                              "${result['practical']}",

                              style: TextStyle(
                                color: Color(0xff745C9C),
                                fontSize: 30,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        Text(' الدرجة النهائية ',
                          style: TextStyle(color: Color(0xff755073),fontSize:20),),
                        Container(
                          margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*.01 ),
                          width: MediaQuery.of(context).size.width*.4,
                          height:MediaQuery.of(context).size.height*.08,
                          decoration: BoxDecoration(
                              color: Color(0xffCFA7DA).withOpacity(0.23),

                              borderRadius: BorderRadius.circular(31,),
                              // boxShadow: [
                              //   BoxShadow(
                              //     color: Color(0xffFCE3DB),
                              //     offset: Offset(0,4),
                              //     blurRadius: 10,
                              //   )
                              // ],
                              border: Border.all(color: Color(0xffB34FA8),width: 1)
                          ),
                          child: Center(
                            child: Text(
                              "${result['Total_Iq']}",
                              style: TextStyle(
                                color: Color(0xff745C9C),
                                fontSize: 30,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        Text(' التقدير ',
                          style: TextStyle(color: Color(0xff755073),fontSize:20),),
                        Container(
                          margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*.01 ),
                          width: MediaQuery.of(context).size.width*.4,
                          height:MediaQuery.of(context).size.height*.08,
                          decoration: BoxDecoration(
                              color: Color(0xffCFA7DA).withOpacity(0.23),

                              borderRadius: BorderRadius.circular(31,),
                              // boxShadow: [
                              //   BoxShadow(
                              //     color: Color(0xffFCE3DB),
                              //     offset: Offset(0,4),
                              //     blurRadius: 10,
                              //   )
                              // ],
                              border: Border.all(color: Color(0xffB34FA8),width: 1)
                          ),
                          child: Center(
                            child: Text(
                              "${result['evaluation']}",

                              style: TextStyle(
                                color: Color(0xff745C9C),
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height:MediaQuery.of(context).size.height*.012 ,),
                        GestureDetector(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder:
                                (context) {
                              return EvaluationUnderstand();
                            },
                            ));
                          },
                          child: Container(
                            // margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*.1),
                            width: MediaQuery.of(context).size.height*.25,
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
                                'التالي',
                                style: TextStyle(
                                  color: Color(0xffEFEAFF),
                                  fontSize: 28,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ]
                  ),
                )
            )
        )
    );
  }
}