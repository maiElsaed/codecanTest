import 'package:flutter/material.dart';
//import 'page3informations.dart';
import 'answerinformation1.dart';
import 'textanswerinformations2.dart';

class ChoiceInformation1 extends StatefulWidget {
  State<ChoiceInformation1> createState() => _pg();
}

class _pg extends State<ChoiceInformation1> {
  @override
  static var v;
  Widget build(BuildContext buildcontext) {
    var st = ModalRoute.of(context)!.settings.arguments;

    // var nextpages;
    if (st != null) {
      v = st;
      // nextpages=v["nextpage"];
    }
    return SafeArea(
        child: Material(
          child: OrientationBuilder(
            builder: (context, orientation) {
              return orientation==Orientation.portrait
                    ?_PortrateLayout()
                    :_LandscabeLayout();
            },
          ),
        )
    );
  }
  Widget _PortrateLayout(){
    return
      Container(
            //margin: EdgeInsets.only(top: 50),
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('images/information3.png'))),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*.27),
                  child: Image(
                    image: AssetImage('images/information2.jpg'),
                    width:MediaQuery.of(context).size.width*.3,
                    height:MediaQuery.of(context).size.height*.1,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigator.push(context,MaterialPageRoute(builder: (context) {
                    //   return AnswerInformation1Class();
                    // }
                    // ,)
                    // );"grade":grade,"answer":answer
                    Navigator.of(context)
                        .pushNamed("AnswerInformation1Class", arguments: {
                      "nextpage": v["nextpage"],
                      "grade": v["grade"],
                      "answer": v["answer"]
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*.05),
                    width:MediaQuery.of(context).size.width*.6,
                    height:MediaQuery.of(context).size.height*.06,
                    decoration: BoxDecoration(
                        color: Color(0xffFFFFFF),
                        borderRadius: BorderRadius.circular(
                          31,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xff000000),
                            offset: Offset(0, 3),
                            blurRadius: 4,
                          ),
                        ],
                        border: Border.all(
                            width: 0.5, color: Color(0xffFFFFFF)
                        )
                    ),
                    child: Center(
                      child: Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            'تسجيل مقطع صوتي',
                            style: TextStyle(
                                color: Color(0xff000000),
                                fontWeight: FontWeight.w400,
                                fontSize:MediaQuery.of(context).size.width*.05),
                          )),
                    ),
                  ),
                ),
                SizedBox(
                  height:MediaQuery.of(context).size.height*.05 ,
                ),
                Container(
                  //margin: EdgeInsets.only(top: 150),
                  child: Image(
                    image: AssetImage('images/information3.jpg'),
                    width:MediaQuery.of(context).size.width*.3,
                    height:MediaQuery.of(context).size.height*.1,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    //  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                    //   return TextAnswer1();
                    // },));
                    Navigator.of(context).pushNamed("TextAnswer1",
                        arguments: {
                          "nextpage": v["nextpage"],
                          "grade": v["grade"],
                          "answer": v["answer"]
                        });
                  },
                  child: Container(
                    margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*.05),
                    width:MediaQuery.of(context).size.width*.6,
                    height:MediaQuery.of(context).size.height*.06,
                    decoration: BoxDecoration(
                        color: Color(0xffFFFFFF),
                        borderRadius: BorderRadius.circular(
                          31,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xff000000),
                            offset: Offset(0, 3),
                            blurRadius: 4,
                          ),
                        ],
                        border: Border.all(
                            width: 0.5, color: Color(0xffFFFFFF))),
                    child: Center(
                      child: Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            'ادخال اجابه نصيه',
                            style: TextStyle(
                                color: Color(0xff000000),
                                fontWeight: FontWeight.w400,
                                fontSize: MediaQuery.of(context).size.width*.05),
                          )),
                    ),
                  ),
                ),
              ],
            )
        );
  }
  Widget _LandscabeLayout(){
       return Container(
               //margin: EdgeInsets.only(top: 50),
               decoration: BoxDecoration(
                   image: DecorationImage(
                       fit: BoxFit.fill,
                       image: AssetImage('images/information3.png'))),
               child: Column(
                 children: [
                   Container(
                     margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*.22),
                     child: Image(
                       image: AssetImage('images/information2.jpg'),
                       width:MediaQuery.of(context).size.width*.35,
                       height:MediaQuery.of(context).size.height*.1,
                     ),
                   ),
                   GestureDetector(
                     onTap: () {
                       // Navigator.push(context,MaterialPageRoute(builder: (context) {
                       //   return AnswerInformation1Class();
                       // }
                       // ,)
                       // );"grade":grade,"answer":answer
                       Navigator.of(context)
                           .pushNamed("AnswerInformation1Class", arguments: {
                         "nextpage": v["nextpage"],
                         "grade": v["grade"],
                         "answer": v["answer"]
                       });
                     },
                     child: Container(
                       margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*.03),
                       width:MediaQuery.of(context).size.width*.35,
                       height:MediaQuery.of(context).size.height*.08,
                       decoration: BoxDecoration(
                           color: Color(0xffFFFFFF),
                           borderRadius: BorderRadius.circular(
                             31,
                           ),
                           boxShadow: [
                             BoxShadow(
                               color: Color(0xff000000),
                               offset: Offset(0, 3),
                               blurRadius: 4,
                             ),
                           ],
                           border: Border.all(
                               width: 0.5, color: Color(0xffFFFFFF)
                           )
                       ),
                       child: Center(
                         child: Padding(
                             padding: EdgeInsets.only(left: 10),
                             child: Text(
                               'تسجيل مقطع صوتي',
                               style: TextStyle(
                                   color: Color(0xff000000),
                                   fontWeight: FontWeight.w400,
                                   fontSize:MediaQuery.of(context).size.width*.02),
                             )),
                       ),
                     ),
                   ),
                   SizedBox(
                     height:MediaQuery.of(context).size.height*.03 ,
                   ),
                   Container(
                     //margin: EdgeInsets.only(top: 150),
                     child: Image(
                       image: AssetImage('images/information3.jpg'),
                       width:MediaQuery.of(context).size.width*.3,
                       height:MediaQuery.of(context).size.height*.1,
                     ),
                   ),
                   GestureDetector(
                     onTap: () {
                       //  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                       //   return TextAnswer1();
                       // },));
                       Navigator.of(context).pushNamed("TextAnswer1",
                           arguments: {
                             "nextpage": v["nextpage"],
                             "grade": v["grade"],
                             "answer": v["answer"]
                           });
                     },
                     child: Container(
                       margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*.03),
                       width:MediaQuery.of(context).size.width*.35,
                       height:MediaQuery.of(context).size.height*.08,
                       decoration: BoxDecoration(
                           color: Color(0xffFFFFFF),
                           borderRadius: BorderRadius.circular(
                             31,
                           ),
                           boxShadow: [
                             BoxShadow(
                               color: Color(0xff000000),
                               offset: Offset(0, 3),
                               blurRadius: 4,
                             ),
                           ],
                           border: Border.all(
                               width: 0.5, color: Color(0xffFFFFFF))),
                       child: Center(
                         child: Padding(
                             padding: EdgeInsets.only(left: 10),
                             child: Text(
                               'ادخال اجابه نصيه',
                               style: TextStyle(
                                   color: Color(0xff000000),
                                   fontWeight: FontWeight.w400,
                                   fontSize: MediaQuery.of(context).size.width*.02),
                             )),
                       ),
                     ),
                   ),
                 ],
               )
           );
  }
}
