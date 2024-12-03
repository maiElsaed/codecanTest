import 'package:flutter/material.dart';
//import 'answerinformation4.dart';
import 'package:codecansecond/logicoperation/voice.dart';
import 'package:codecansecond/logicoperation/sqlflite2.dart';
import 'package:codecansecond/departments/information/page22informationss.dart';
class Information3Class extends StatefulWidget {
  State<Information3Class> createState() => _pg();
}
class _pg extends State<Information3Class> {
  Reader obg=Reader();
  SqlDb sql= SqlDb();
  late List<Map> question;
  int counters=3;
  var questionDisplay="أي حيوان يمْكِننَا الحصول على اللبنُ منه";
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
                // Container(
                //   margin: EdgeInsets.only(top: 50,bottom: 120),
                //   width: 140,
                //   height: 50,
                //   decoration: BoxDecoration(
                //     color: Color(0xffE8AA9A),
                //     borderRadius: BorderRadius.circular(31,),
                //     boxShadow: [
                //       BoxShadow(
                //         color: Color(0xff000000),
                //         offset: Offset(0, 3),
                //         blurRadius: 4,
                //         // spreadRadius: 2
                //       ),
                //     ],
                //     // border: Border.all(width: 3,color: Color(0xffBEB1E2))
                //   ),
                //   child: Center(
                //     child: Text('00:00',
                //       style: TextStyle(color: Color(0xff000000),fontWeight: FontWeight.w400,fontSize: 30
                //       ) ,),
                //   ),
                // ),
                //إيه الحيوان اللي بنأخذ منه اللبن ؟
                SizedBox(
                  height:MediaQuery.of(context).size.height*.2,
                ),
                // Flexible(
                //     child: Padding(
                //       padding: EdgeInsets.only(left: 3),
                //       child: Text(
                //         questionDisplay,
                //         style: TextStyle(fontSize: MediaQuery.of(context).size.width*.07, color: Color(0xff725058)),
                //         textAlign: TextAlign.center,
                //       ),
                //     )
                // ),
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
                              padding: EdgeInsets.only(left: 3,),
                              child: Text(
                                questionDisplay,
                                style: TextStyle(fontSize: MediaQuery.of(context).size.width*.07, color: Color(0xff000000)),
                                textAlign: TextAlign.center,
                              ),
                            )
                        ),
                      ],
                   ),
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
                  onTap: ()async {
                    // Navigator.of(context).push(MaterialPageRoute(builder: (v){
                    //   return Information4Class();
                    // }));
                    if(counters>20){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                        return Information22Class();
                      },));
                    }else{
                      var questions=await sql.readData("SELECT question FROM 'questiondata' WHERE department='i' AND id=${counters} ");
                      setState(() {
                        questionDisplay=questions[0]["question"];
                        print(counters);
                        print(questions);
                        counters+=1;

                      });
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
            // Container(
            //   margin: EdgeInsets.only(top: 50,bottom: 120),
            //   width: 140,
            //   height: 50,
            //   decoration: BoxDecoration(
            //     color: Color(0xffE8AA9A),
            //     borderRadius: BorderRadius.circular(31,),
            //     boxShadow: [
            //       BoxShadow(
            //         color: Color(0xff000000),
            //         offset: Offset(0, 3),
            //         blurRadius: 4,
            //         // spreadRadius: 2
            //       ),
            //     ],
            //     // border: Border.all(width: 3,color: Color(0xffBEB1E2))
            //   ),
            //   child: Center(
            //     child: Text('00:00',
            //       style: TextStyle(color: Color(0xff000000),fontWeight: FontWeight.w400,fontSize: 30
            //       ) ,),
            //   ),
            // ),
            //إيه الحيوان اللي بنأخذ منه اللبن ؟
            SizedBox(
              height:MediaQuery.of(context).size.height*.2,
            ),
            // Flexible(
            //     child: Padding(
            //       padding: EdgeInsets.only(left: 3),
            //       child: Text(
            //         questionDisplay,
            //         style: TextStyle(fontSize: MediaQuery.of(context).size.width*.07, color: Color(0xff725058)),
            //         textAlign: TextAlign.center,
            //       ),
            //     )
            // ),
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
              onTap: ()async {
                // Navigator.of(context).push(MaterialPageRoute(builder: (v){
                //   return Information4Class();
                // }));
                if(counters>20){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                    return Information22Class();
                  },));
                }else{
                  var questions=await sql.readData("SELECT question FROM 'questiondata' WHERE department='i' AND id=${counters} ");
                  setState(() {
                    questionDisplay=questions[0]["question"];
                    print(counters);
                    print(questions);
                    counters+=1;

                  }
                  );
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
}
