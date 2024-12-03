import 'package:codecansecond/departments/calculation/total_degree.dart';
import 'package:flutter/material.dart';
//import 'package:codecansecond/testerpages/understandtester/understandtester2.dart';
import 'package:codecansecond/logicoperation/childdegreefromapps.dart';
import 'package:codecansecond/departments/calculation/calculationfirst.dart';
//import 'informationtester4.dart';
class TotalDegreeChildInformation extends StatefulWidget{
  State<TotalDegreeChildInformation> createState() => _pg();
}
class _pg extends State<TotalDegreeChildInformation> {
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
                    image: AssetImage('images/tester_information_degree.jpg',),
                  ),
                ),
                child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*.65 ),
                        width: MediaQuery.of(context).size.width*.3,
                        height:MediaQuery.of(context).size.height*.1,
                        decoration: BoxDecoration(
                            color: Color(0xffFBEDE6),
                            borderRadius: BorderRadius.circular(31,),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xff745C9C),
                                offset: Offset(0,4),
                                blurRadius: 10,
                              )
                            ],
                            border: Border.all(color: Color(0xff8E1F00),width: 2)
                        ),
                        child: Center(
                          child: Text(
                            "${CalculationFromApp.InformationDegree}",
                            //"15",
                            style: TextStyle(
                              color: Color(0xff8E1F00),
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
                            return CalculationTotalDegree();
                          },
                          ));
                        },
                        child: Container(
                          margin: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * .05),
                          width: MediaQuery.of(context).size.height * .3,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xffFBEDE6),
                                  Color(0xffF78E71),
                                  Color(0xffF78E71)
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                              borderRadius: BorderRadius.circular(
                                31,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xff252033),
                                  offset: Offset(0, 4),
                                  blurRadius: 4,
                                )
                              ],
                              border: Border.all(color: Color(0xff8E1F00), width: 2)),
                          child: Center(
                            child: Text(
                              'ارسال',
                              style: TextStyle(
                                color: Color(0xff8E1F00),
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