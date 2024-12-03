import 'package:flutter/material.dart';
import 'package:codecansecond/logicoperation/childdegreefromtesters.dart';
//import 'informationtester4.dart';
class TotalDegreeTester extends StatefulWidget{
  State<TotalDegreeTester> createState() => _pg();
}
class _pg extends State<TotalDegreeTester> {
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
                    image: AssetImage('images/totaldegree.png',),
                  ),
                ),
                child: Column(
                    children: [

                      Container(
                        margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*.6 ),
                        width: MediaQuery.of(context).size.width*.3,
                        height:MediaQuery.of(context).size.height*.1,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(31,),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xff745C9C),
                                offset: Offset(0,4),
                                blurRadius: 10,
                              )
                            ],
                            border: Border.all(color: Color(0xff745C9C),width: 2)
                        ),
                        child: Center(
                          child: Text(
                            "${CalculationFromTester.understandDegree}",
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

                        },
                        child: Container(
                          margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*.1),
                          width: MediaQuery.of(context).size.height*.3,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xffDD9FD5),
                                  Color(0xff8DCEF6),
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                              borderRadius: BorderRadius.circular(31,),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xff252033),
                                  offset: Offset(0,4),
                                  blurRadius: 4,
                                )
                              ],
                              border: Border.all(color: Color(0xff3C5E80),width: 2)
                          ),
                          child: Center(
                            child: Text(
                              'ارسال',
                              style: TextStyle(
                                color: Color(0xff745C9C),
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