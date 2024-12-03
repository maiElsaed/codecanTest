import 'package:flutter/material.dart';
//import 'package:codecansecond/testerpages/understandtester/understandtester2.dart';
import 'package:codecansecond/logicoperation/childdegreefromapps.dart';
import 'package:codecansecond/departments/calculation/calculationfirst.dart';
//import 'informationtester4.dart';
import 'package:codecansecond/departments/similar/firstsimilar.dart';

import '../../drag_drop_department/views/assemble_image_degree.dart';
class CalculationTotalDegree extends StatefulWidget{
  State<CalculationTotalDegree> createState() => _pg();
}
class _pg extends State<CalculationTotalDegree> {
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
                    image: AssetImage('images/tester_calculation_degree.jpg',),
                  ),
                ),
                child: Column(
                    children: [

                      Container(
                        margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*.7 ),
                        width: MediaQuery.of(context).size.width*.3,
                        height:MediaQuery.of(context).size.height*.1,
                        decoration: BoxDecoration(
                            color: Color(0xffF4EBE5),
                            borderRadius: BorderRadius.circular(31,),
                            gradient: LinearGradient(
                              colors: [
                                Color(0xffFDDAF9),
                                Color(0xffDADAF6),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xff706F9B),
                                offset: Offset(0,4),
                                blurRadius: 10,
                              )
                            ],
                            border: Border.all(color: Color(0xff706F9B),width: 2)
                        ),
                        child: Center(
                          child: Text(
                              "${CalculationFromApp.CalculationDegree}",
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
                            return AssembleImageTotalDegree();
                          },
                          ));
                        },
                        child: Container(
                          margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*.02),
                          width: MediaQuery.of(context).size.height*.3,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xffFDDAF9),
                                  Color(0xffDADAF6),
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
                              border: Border.all(color: Color(0xffBEB1E2),width: 2)
                          ),
                          child: Center(
                            child: Text(
                              'ارسال',
                              style: TextStyle(
                                color: Color(0xff625D8E),
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