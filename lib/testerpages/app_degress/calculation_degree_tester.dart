import 'package:flutter/material.dart';
import 'package:codecansecond/logicoperation/childdegreefromapps.dart';
import 'package:codecansecond/departments/calculation/calculationfirst.dart';
//import 'informationtester4.dart';
import 'package:codecansecond/logicoperation/childdegreefromtesters.dart';
import 'package:codecansecond/testerpages/similartester/similartester1.dart';

import 'assembleobject_degree_tester.dart';

class TesterCalculationTotalDegree extends StatefulWidget {
  State<TesterCalculationTotalDegree> createState() => _pg();
}

class _pg extends State<TesterCalculationTotalDegree> {
  String check = "";
  int degree = 0;
  bool flag = false;
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
              image: AssetImage(
                'images/tester_calculation_degree.jpg',
              ),
            ),
          ),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * .7),
                width: MediaQuery.of(context).size.width * .25,
                height: MediaQuery.of(context).size.height * .1,

                child: Center(
                  child: TextField(
                    onChanged: (value) {
                      setState(() {
                        if (value.isEmpty) {
                          flag = false;
                        } else {
                          flag = true;
                          check=' ';
                        }
                        degree = int.parse(value);
                      });
                    },
                    style: TextStyle(color: Color(0xff706F9B),fontSize: 20),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                            color: Color(0xff706F9B),width: 2
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                            color: Color(0xff706F9B),width: 2
                        ),
                      ),
                      // fillColor: Color(0xffFBEDE6),
                    ),
                  ),
                ),
              ),

              //SizedBox(height:MediaQuery.of(context).size.height*.75 ,),
              GestureDetector(
                onTap: () {
                  if (flag == true) {
                    CalculationFromTester.CalculationDegree += degree;
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return TesterAssembleObjectTotalDegree();
                        },
                      ),
                    );
                  }else{
                    setState(() {
                      check='enter the degree';
                    });
                  }
                },
                child: Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * .02),
                  width: MediaQuery.of(context).size.height * .3,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xffFDDAF9),
                          Color(0xffDADAF6),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      borderRadius: BorderRadius.circular(
                        31,
                      ),
                      // boxShadow: [
                      //   BoxShadow(
                      //     color: Color(0xff252033),
                      //     offset: Offset(0,4),
                      //     blurRadius: 4,
                      //   )
                      // ],
                      border: Border.all(color: Color(0xffBEB1E2), width: 2)),
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
              Text(
                check,style: TextStyle(
                  color: Colors.red
              ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
