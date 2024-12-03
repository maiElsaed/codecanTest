import 'package:flutter/material.dart';
import 'package:codecansecond/logicoperation/childdegreefromapps.dart';
import 'package:codecansecond/departments/calculation/calculationfirst.dart';
//import 'informationtester4.dart';
import 'final_screen.dart';
import 'package:codecansecond/logicoperation/childdegreefromtesters.dart';
import 'package:codecansecond/departments/maze/first_maze.dart';

import 'maze_degree_tester.dart';
class TesterBlockDesignTotalDegree extends StatefulWidget{
  State<TesterBlockDesignTotalDegree> createState() => _pg();
}
class _pg extends State<TesterBlockDesignTotalDegree> {

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
                    image: AssetImage('images/tester_blockdesign_degree.jpg',),
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
                            style: TextStyle(color: Color(0xffB86732),fontSize: 20),
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(
                                    color: Color(0xffB86732),width: 2
                                ),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(
                                    color: Color(0xffB86732),width: 2
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
                              CalculationFromTester.BlockDesign+=degree;
                              Navigator.of(context).push(MaterialPageRoute(builder:
                                  (context) {
                                return TesterMazeTotalDegree();

                              },
                              ));
                            }else {
                              setState(() {
                                check = 'enter the degree';
                              });
                            }
                          },
                        child: Container(
                          margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*.02),
                          width: MediaQuery.of(context).size.height*.3,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xffFFD0A7),
                                  Color(0xffFCA061),
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
                              border: Border.all(color: Color(0xffA74300),width: 2)
                          ),
                          child: Center(
                            child: Text(
                              'ارسال',
                              style: TextStyle(
                                color: Color(0xffA74300),
                                fontSize: 30,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        check,style: TextStyle(
                          color: Colors.red
                      ),
                      )
                    ]
                )
            )
        )
    );
  }
}