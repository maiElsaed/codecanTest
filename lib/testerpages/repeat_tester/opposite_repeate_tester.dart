import 'package:flutter/material.dart';
import 'package:codecansecond/logicoperation/childdegreefromapps.dart';
import 'package:codecansecond/departments/calculation/calculationfirst.dart';
//import 'informationtester4.dart';
import 'package:codecansecond/logicoperation/childdegreefromtesters.dart';
import 'package:codecansecond/testerpages/similartester/similartester1.dart';

import '../picturecompletetester/picturcomplete_tester1.dart';
class TesterOppositeRepeatDegree extends StatefulWidget {
  State<TesterOppositeRepeatDegree> createState() => _pg();
}
class _pg extends State<TesterOppositeRepeatDegree> {
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
                'images/repeat_number_tester.jpg',
              ),
            ),
          ),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * .53),
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
                          check = ' ';
                        }
                        degree = int.parse(value);
                      });
                    },
                    decoration: InputDecoration(
                      // contentPadding: EdgeInsets.only(left: ),

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color: Color(0xffFFFFFF),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color: Color(0xffFFFFFF),
                        ),
                      ),
                      fillColor: Color(0xff96CAEE),
                    ),
                  ),
                ),
              ),

              //SizedBox(height:MediaQuery.of(context).size.height*.75 ,),
              GestureDetector(
                onTap: () {
                  if (flag == true) {
                    CalculationFromTester.RepeatNumber += degree;
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return Page1PictureCompleteTester();
                        },
                      ),
                    );
                  } else {
                    setState(() {
                      check = 'enter the degree';
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
                          Color(0xffF6DFF7),
                          Color(0xffA4CDEE),
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
                      border: Border.all(color: Color(0xffC9C2EB), width: 2)),
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
              Text(
                check,
                style: TextStyle(color: Colors.red),
              )
            ],
          ),
        ),
      ),
    );
  }
}
