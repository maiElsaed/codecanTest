import 'package:flutter/material.dart';

import 'appreciation_calculation.dart';
import 'departments_degre.dart';
class EvaluationInformation extends StatefulWidget{
  State<EvaluationInformation> createState() => _pg();
}
class _pg extends State<EvaluationInformation> {

  @override

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
                    image: AssetImage('images/evaluation_information.jpg',),
                  ),
                ),
                child: Center(
                  child: Column(
                      children: [
                        SizedBox(height: MediaQuery.of(context).size.height*.72,),

                        Container(
                          // margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*.02 ),
                          width: MediaQuery.of(context).size.width*.47,
                          height:MediaQuery.of(context).size.height*.06,
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
                              "${DepartmentDegree.information()}",

                              style: TextStyle(
                                color: Color(0xff745C9C),
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height:MediaQuery.of(context).size.height*.03 ,),
                        GestureDetector(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder:
                                (context) {
                              return EvaluationICalculation();
                            },
                            ));
                          },
                          child: Container(
                            // margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*.1),
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
                                'التالي',
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
                  ),
                )
            )
        )
    );
  }
}