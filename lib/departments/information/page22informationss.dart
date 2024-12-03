import 'package:flutter/material.dart';
//import 'page3informations.dart';
import 'choiceinformation1.dart';
import 'package:codecansecond/logicoperation/voice.dart';
import 'package:codecansecond/logicoperation/sqlflite2.dart';
import 'package:codecansecond/logicoperation/childdegreefromapps.dart';
//import 'totalchilddegree.dart';
class Information22Class extends StatefulWidget{
  State<Information22Class>createState()=> _pg();
}
class _pg extends State<Information22Class> {
  Reader obg=Reader();
  SqlDb sql= SqlDb();
  static late List<Map> question;
  static int counters=21;
  static late int imageCounter=0;
  static late int grade;
  static late String answer;
  static String questionDisplay="كم أذن لديك";
  @override
  void initState() {
    super.initState();
    operationMethod();
  }
  @override
  Widget build(BuildContext buildcontext) {
    return SafeArea(
        child: Material(
          child: OrientationBuilder(
            builder: (context, orientation) {
              return orientation==Orientation.portrait
                  ? _buildPortraitLayout()
                  : _buildLandscapeLayout();
            },
          ),
        )
    );
  }
  Widget _buildPortraitLayout(){
    return Container(
      //margin: EdgeInsets.only(top: 50),
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('images/informationbg.jpg'))),
        child: Column(
          children: [
            SizedBox(
              height:MediaQuery.of(context).size.height*.2,
            ),

            Container(
              width: MediaQuery.of(context).size.width*.85,
              height: MediaQuery.of(context).size.height*.35,
              // margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*.05),
              //padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*.1),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                      child: Padding(
                        padding: EdgeInsets.only(left:0 ,),
                        child: Text(
                          questionDisplay,
                          style: TextStyle(fontSize: MediaQuery.of(context).size.width*.07, color: Color(0xff000000)),
                          textAlign: TextAlign.center,
                        ),
                      )
                  ),
                ],
              ),
              /*
                  Color(0xffFFBFAD), Color(0xffEF5124)
                   */
              decoration: BoxDecoration(
                color: Color(0xffEE8E73),
                borderRadius: BorderRadius.circular(
                  31,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xff000000),
                    offset: Offset(0, 3),
                    blurRadius: 4,
                    // spreadRadius: 2
                  ),
                ],
                border: Border.all(
                    width: 2,
                    color: Color(0xffFFFFFF)
                ),
                // gradient: LinearGradient(
                //     colors: [Color(0xffFFBFAD), Color(0xffEF5124)],
                //     begin: Alignment.topCenter,
                //     end: Alignment.bottomCenter)
              ),
            ),
            GestureDetector(
                onTap: () async {
                  obg.speak(questionDisplay);
                },
                child: Container(
                  width: MediaQuery.of(context).size.width*.6,
                  height: MediaQuery.of(context).size.height*.1,
                  margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*.05,),
                  padding: EdgeInsets.all(1),
                  child: Image(
                      image: AssetImage(
                        'images/listeninfo.png',
                      )),
                )),

            GestureDetector(

              onTap: ()async{
                setState(() {
                  counters+=1;
                });
                if(counters>30){//TotalDegreeChild
                  // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  //   return  TotalDegreeChild();
                  // },));
                  Navigator.of(context).pushNamed("TextAnswer1",
                      arguments: {"nextpage":"CalculationFirst","grade":grade,"answer":answer});
                }else{
                  // List<Map> question=await sql.readData("SELECT grade , answer , question FROM 'questiondata' WHERE department='i' AND id=${counters} ");
                  // int grade=question[0]["grade"];
                  // String answer=question[0]["answer"];
                  // questionDisplay=question[0]["question"];
                  // obg.speak(question[0]["question"]);
                  Navigator.of(context).pushNamed("TextAnswer1",
                      arguments: {"nextpage":"Information22Class","grade":grade,"answer":answer});
                }
              },
              child: Container(
                margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*.05),
                width: MediaQuery.of(context).size.width*.4,
                height: MediaQuery.of(context).size.height*.07,
                decoration: BoxDecoration(
                    color: Color(0xffE8AA9A),
                    borderRadius: BorderRadius.circular(
                      31,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xff000000),
                        offset: Offset(0, 3),
                        blurRadius: 4,
                        // spreadRadius: 2
                      ),
                    ],
                    border: Border.all(
                        width: 0.5, color: Color(0xffFFFFFF)),
                    gradient: LinearGradient(
                        colors: [Color(0xffFFBFAD), Color(0xffEF5124)],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter)),
                child: Center(
                  child: Text(
                    'التالي',
                    style: TextStyle(
                        color: Color(0xff35333D),
                        fontWeight: FontWeight.w400,
                        fontSize: MediaQuery.of(context).size.width*.07),
                  ),
                ),
              ),
            )
          ],
        )
    );
  }
  Widget _buildLandscapeLayout(){
    return Container(
      //margin: EdgeInsets.only(top: 50),
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('images/informationbg.jpg'))),
        child: Column(
          children: [

            SizedBox(
              height:MediaQuery.of(context).size.height*.2,
            ),

            Container(
              width: MediaQuery.of(context).size.width*.85,
              height: MediaQuery.of(context).size.height*.35,
              // margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*.05),
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*.1),
              child:Flexible(
                  child: Padding(
                    padding: EdgeInsets.only(left: 3),
                    child: Text(
                      questionDisplay,
                      style: TextStyle(fontSize: MediaQuery.of(context).size.width*.03, color: Color(0xff000000)),
                      textAlign: TextAlign.center,
                    ),
                  )
              ),
              /*
                  Color(0xffFFBFAD), Color(0xffEF5124)
                   */
              decoration: BoxDecoration(
                color: Color(0xffEE8E73),
                borderRadius: BorderRadius.circular(
                  31,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xff000000),
                    offset: Offset(0, 3),
                    blurRadius: 4,
                    // spreadRadius: 2
                  ),
                ],
                border: Border.all(
                    width: 2,
                    color: Color(0xffFFFFFF)
                ),

              ),
            ),
            GestureDetector(
                onTap: () async {
                  obg.speak(questionDisplay);
                },
                child: Container(
                  width: MediaQuery.of(context).size.width*.6,
                  height: MediaQuery.of(context).size.height*.1,
                  margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*.05,),
                  padding: EdgeInsets.all(1),
                  child: Image(
                      image: AssetImage(
                        'images/listeninfo.png',
                      )),
                )),

            GestureDetector(
              onTap: ()async{
                setState(() {
                  counters+=1;
                });
                if(counters>30){//TotalDegreeChild
                  Navigator.of(context).pushNamed("ChoiceInformation1",
                      arguments: {"nextpage":"TotalDegreeChild","grade":grade,"answer":answer});
                }else{
                  Navigator.of(context).pushNamed("ChoiceInformation1",
                      arguments: {"nextpage":"Information22Class","grade":grade,"answer":answer});
                }
              },
              child: Container(
                margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*.05),
                width: MediaQuery.of(context).size.width*.12,
                height: MediaQuery.of(context).size.height*.08,
                decoration: BoxDecoration(
                    color: Color(0xffE8AA9A),
                    borderRadius: BorderRadius.circular(
                      31,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xff000000),
                        offset: Offset(0, 3),
                        blurRadius: 4,
                        // spreadRadius: 2
                      ),
                    ],
                    border: Border.all(
                        width: 0.5, color: Color(0xffFFFFFF)),
                    gradient: LinearGradient(
                        colors: [Color(0xffFFBFAD), Color(0xffEF5124)],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter)),
                child: Center(
                  child: Text(
                    'التالي',
                    style: TextStyle(
                        color: Color(0xff35333D),
                        fontWeight: FontWeight.w400,
                        fontSize: MediaQuery.of(context).size.width*.02),
                  ),
                ),
              ),
            )
          ],
        )
    );
  }
  void operationMethod() async{
    List<Map> question=await sql.readData("SELECT grade , answer , question FROM 'questiondata' WHERE department='i' AND id=${counters} ");
     setState(() {
       grade=question[0]["grade"];
       answer=question[0]["answer"];
       questionDisplay=question[0]["question"];
     });
    print("inpage22mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm");
    print("counters");
    print(counters);
    print(questionDisplay);
    print(grade);
    print(answer);
    print("finish22mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm");
  }
}
