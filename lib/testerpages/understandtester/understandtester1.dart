import 'package:flutter/material.dart';
import 'package:codecansecond/logicoperation/childdegreefromtesters.dart';
import 'package:codecansecond/logicoperation/sqlflite2.dart';
import 'package:codecansecond/testerpages/informationtester/informationtester1.dart';
//import 'package:codecansecond/logicoperation/voice.dart';
class UnderstandTester2Class extends StatefulWidget {
  State<UnderstandTester2Class> createState() => _pg();
}
class _pg extends State<UnderstandTester2Class> {
  int Questiondegree = 0;
  SqlDb sql= SqlDb();
  bool check = false;
  String text = "";
  int x=0;
  int counters=2;
  var question="إذا جُرح إصبعك، ماذا ستفعل";
  //var x=GlobalKey();
  Widget build(BuildContext buildcontext) {
    return SafeArea(
        child: Material(
            child:OrientationBuilder(
              builder: (context, orientation) {
                return orientation==Orientation.portrait?
                     _PortrateLayout()
                    :_LandScapeLayout();
              },
            )
        )


    );
  }
  Widget _PortrateLayout(){
    return Container(
           width: double.infinity,
           height: double.infinity,
           decoration: BoxDecoration(
           image: DecorationImage(
              fit: BoxFit.fill,
           image: AssetImage(
             'images/backgroungp3.png',
           ),
        ),
      ),
       child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*.03),
            child: Text('(الفهم العام)',
                style: TextStyle(fontSize: MediaQuery.of(context).size.width*.09, color: Color(0xff543686))),
          ),
          SizedBox(
            height:MediaQuery.of(context).size.height*.07,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                      child: Text(
                        question,
                        style: TextStyle(fontSize: MediaQuery.of(context).size.width*.07, color: Color(0xff543686)),
                        textAlign: TextAlign.center,
                      ),
                  ),
                  // Text(" (1)",
                  //     style: TextStyle(fontSize: 30, color: Color(0xff543686))),
                ],
              ),
              // Center(
              //   child: Text("ماذا ستفعل" + "؟",
              //       style: TextStyle(fontSize: 30, color: Color(0xff543686))),
              // ),
            ],
          ),
          SizedBox(height:MediaQuery.of(context).size.height*.03),
          GestureDetector(
            onTap: () {
              setState(() {
                Questiondegree = 2;
                check = true;
                text = " ";
                x=1;
              });
            },
            child: Container(
              width: MediaQuery.of(context).size.width*.7,
              height: MediaQuery.of(context).size.height*.07,
              decoration: BoxDecoration(
                  // color:Colors(0xffB9B4E4),
                  color:x==1?Color(0xff7A78B2):Color(0xffB9B4E4),
                  // Opacity(opacity: 9),
                  borderRadius: BorderRadius.circular(
                    31,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xff3C5E80),
                      offset: Offset(0, 4),
                      blurRadius: 4,
                    )
                  ],
                  border: Border.all(color: Color(0xff3C5E80), width: 2)),
              child: Padding(
                padding: EdgeInsets.only(bottom: 8, left: 80),
                child: Text(
                  'درجتين',
                  style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontSize: MediaQuery.of(context).size.width*.07,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                Questiondegree = 1;
                check = true;
                text = " ";
                x=2;
              });
            },
            child: Container(
              width: MediaQuery.of(context).size.width*.7,
              height: MediaQuery.of(context).size.height*.07,
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*.03,),
              decoration: BoxDecoration(
                  // color:Colors(0xffB9B4E4),
                  color:x==2?Color(0xff7A78B2):Color(0xffB9B4E4),
                  // Opacity(opacity: 9),
                  borderRadius: BorderRadius.circular(
                    31,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xff3C5E80),
                      offset: Offset(0, 4),
                      blurRadius: 4,
                    )
                  ],
                  border: Border.all(color: Color(0xff3C5E80), width: 2)),
              child: Padding(
                padding: EdgeInsets.only(bottom: 8, left: 80),
                child: Text(
                  '١ درجه',
                  style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontSize:MediaQuery.of(context).size.width*.07,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                Questiondegree = 0;
                check = true;
                text = " ";
                x=3;
              });
            },
            child: Container(
              width: MediaQuery.of(context).size.width*.7,
              height: MediaQuery.of(context).size.height*.07,
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*.03,),
              decoration: BoxDecoration(
                  // color:Colors(0xffB9B4E4),
                  color:x==3?Color(0xff7A78B2):Color(0xffB9B4E4),
                  // Opacity(opacity: 9),
                  borderRadius: BorderRadius.circular(
                    31,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xff3C5E80),
                      offset: Offset(0, 4),
                      blurRadius: 4,
                    )
                  ],
                  border: Border.all(color: Color(0xff3C5E80), width: 2)),
              child: Padding(
                padding: EdgeInsets.only(bottom: 8, left: 100),
                child: Text(
                  'صفر',
                  style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontSize:MediaQuery.of(context).size.width*.07,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height*.03,
          ),
          GestureDetector(
            onTap: ()async{
              CalculationFromTester.understandDegree += Questiondegree;
              print(CalculationFromTester.understandDegree);
              if (check == true) {


                if(counters>14){
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return InformationTester1Class();
                    },
                  ));
                }else{
                  var questions=await sql.readData("SELECT question FROM 'questiondata' WHERE department='u' AND id=${counters} ");
                  setState(() {
                    question=questions[0]["question"];
                    print(counters);
                    print(question);
                    counters+=1;
                    check = false;
                    x=0;
                  });
                }
               // print(question);
              } else {
                setState(() {
                  text = "select degree";
                });
              }

              // Navigator.of(context).pushNamed("UnderstandTester3Class",arguments: {"degree":degree});
            },
            child: Container(
              width: MediaQuery.of(context).size.width*.4,
              height: MediaQuery.of(context).size.height*.07,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xffDD9FD5),
                      Color(0xff8DCEF6),
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
                  border: Border.all(color: Color(0xff3C5E80), width: 2)),
              child: Center(
                child: Text(
                  'التالي',
                  style: TextStyle(
                    color: Color(0xff745C9C),
                    fontSize: MediaQuery.of(context).size.width*.07,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height:MediaQuery.of(context).size.height*.02,
          ),
          Center(
            // key: ,
            child: Text(
              text,
              style: TextStyle(color: Colors.redAccent),
            ),
          )
        ],
      ),
    );

  }
  Widget _LandScapeLayout(){
    return  Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
            'images/backgroungp3.png',
          ),
        ),
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*.0),
            child: Text('(الفهم العام)',
                style: TextStyle(fontSize: MediaQuery.of(context).size.width*.03, color: Color(0xff543686))),
          ),
          SizedBox(
            height:MediaQuery.of(context).size.height*.05,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Text(
                      question,
                      style: TextStyle(fontSize: MediaQuery.of(context).size.width*.03, color: Color(0xff543686)),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  // Text(" (1)",
                  //     style: TextStyle(fontSize: 30, color: Color(0xff543686))),
                ],
              ),
              // Center(
              //   child: Text("ماذا ستفعل" + "؟",
              //       style: TextStyle(fontSize: 30, color: Color(0xff543686))),
              // ),
            ],
          ),
          SizedBox(height:MediaQuery.of(context).size.height*.03),
          GestureDetector(
            onTap: () {
              setState(() {
                Questiondegree = 2;
                check = true;
                text = " ";
              });
            },
            child: Container(
              width: MediaQuery.of(context).size.width*.3,
              height: MediaQuery.of(context).size.height*.1,
              decoration: BoxDecoration(
                // color:Colors(0xffB9B4E4),
                  color:Questiondegree==2?Color(0xffFFFFFF):Color(0xffB9B4E4),
                  // Opacity(opacity: 9),
                  borderRadius: BorderRadius.circular(
                    31,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xff3C5E80),
                      offset: Offset(0, 4),
                      blurRadius: 4,
                    )
                  ],
                  border: Border.all(color: Color(0xff3C5E80), width: 2)),
              child: Padding(
                padding: EdgeInsets.only(bottom: 8, left: 80),
                child: Text(
                  'درجتين',
                  style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontSize: MediaQuery.of(context).size.width*.02,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                Questiondegree = 1;
                check = true;
                text = " ";
              });
            },
            child: Container(
              width: MediaQuery.of(context).size.width*.3,
              height: MediaQuery.of(context).size.height*.1,
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*.03,),
              decoration: BoxDecoration(
                // color:Colors(0xffB9B4E4),
                  color: Color(0xffB9B4E4),
                  // Opacity(opacity: 9),
                  borderRadius: BorderRadius.circular(
                    31,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xff3C5E80),
                      offset: Offset(0, 4),
                      blurRadius: 4,
                    )
                  ],
                  border: Border.all(color: Color(0xff3C5E80), width: 2)),
              child: Padding(
                padding: EdgeInsets.only(bottom: 8, left: 80),
                child: Text(
                  '١ درجه',
                  style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontSize:MediaQuery.of(context).size.width*.02,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                Questiondegree = 0;
                check = true;
                text = " ";
              });
            },
            child: Container(
              width: MediaQuery.of(context).size.width*.3,
              height: MediaQuery.of(context).size.height*.1,
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*.03,),
              decoration: BoxDecoration(
                // color:Colors(0xffB9B4E4),
                  color: Color(0xffB9B4E4),
                  // Opacity(opacity: 9),
                  borderRadius: BorderRadius.circular(
                    31,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xff3C5E80),
                      offset: Offset(0, 4),
                      blurRadius: 4,
                    )
                  ],
                  border: Border.all(color: Color(0xff3C5E80), width: 2)),
              child: Padding(
                padding: EdgeInsets.only(bottom: 8, left: 100),
                child: Text(
                  'صفر',
                  style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontSize:MediaQuery.of(context).size.width*.02,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height*.03,
          ),
          GestureDetector(
            onTap: ()async{
              CalculationFromTester.understandDegree += Questiondegree;
              print(CalculationFromTester.understandDegree);
              if (check == true) {
                if(counters>14){
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return InformationTester1Class();
                    },
                  ));
                }else{
                  var questions=await sql.readData("SELECT question FROM 'questiondata' WHERE department='u' AND id=${counters} ");
                  setState(() {
                    question=questions[0]["question"];
                    print(counters);
                    print(question);
                    counters+=1;
                    check = false;
                  });
                }
                // print(question);
              } else {
                setState(() {
                  text = "select degree";
                });
              }
              // Navigator.of(context).pushNamed("UnderstandTester3Class",arguments: {"degree":degree});
            },
            child: Container(
              width: MediaQuery.of(context).size.width*.2,
              height: MediaQuery.of(context).size.height*.1,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xffDD9FD5),
                      Color(0xff8DCEF6),
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
                  border: Border.all(color: Color(0xff3C5E80), width: 2)),
              child: Center(
                child: Text(
                  'التالي',
                  style: TextStyle(
                    color: Color(0xff745C9C),
                    fontSize: MediaQuery.of(context).size.width*.02,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height:MediaQuery.of(context).size.height*.02,
          ),
          Center(
            // key: ,
            child: Text(
              text,
              style: TextStyle(color: Colors.redAccent),
            ),
          )
        ],
      ),
    );

  }
}
