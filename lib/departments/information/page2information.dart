import 'package:flutter/material.dart';
//import 'answerinformation5class.dart';
import 'package:codecansecond/logicoperation/voice.dart';
import 'package:codecansecond/logicoperation/sqlflite2.dart';
import 'package:codecansecond/departments/information/page3informationss.dart';
class Information2Class extends StatefulWidget{
  State<Information2Class>createState()=> _pg();
}
class _pg extends State<Information2Class> {
  Reader obg=Reader();
  SqlDb sql= SqlDb();
  String question="ما اِسْم هَذَا اْْلاِصْبَع";
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
    return  Container(
      //margin: EdgeInsets.only(top: 50),
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('images/informationbg.jpg')
            )
        ),
        child:Column(
          children: [
            SizedBox( height:MediaQuery.of(context).size.height*.18,),
            Container(
              width: MediaQuery.of(context).size.width*.85,
              height: MediaQuery.of(context).size.height*.1,
              // margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*.05),
              //padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*.1),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                      child: Padding(
                        padding: EdgeInsets.only(left: 3,),
                        child: Text(
                          question,
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
           SizedBox(height: MediaQuery.of(context).size.height*.05,),
           Image(image: AssetImage("images/hand-removebg.png"),width:MediaQuery.of(context).size.width*.4 ,
               height: MediaQuery.of(context).size.height*.15),
            GestureDetector(
                onTap: ()async{
                  print("mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm");
                  obg.speak(question);
                },
                child: Container(
                  width: MediaQuery.of(context).size.width*.6,
                  height: MediaQuery.of(context).size.height*.1,
                  margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*.1,),
                  padding: EdgeInsets.all(1),
                  child:Image(image:AssetImage('images/listeninfo.png',) ),
                )
            ),

            GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return Information3Class();
                },));
                // Navigator.of(context).pushNamed("Information5Class");
              },
              child: Container(
                margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*.05),
                width: MediaQuery.of(context).size.width*.4,
                height: MediaQuery.of(context).size.height*.07,
                decoration: BoxDecoration(
                    color: Color(0xffE8AA9A),
                    borderRadius: BorderRadius.circular(31,),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xff000000),
                        offset: Offset(0, 3),
                        blurRadius: 4,
                        // spreadRadius: 2
                      ),
                    ],
                    border: Border.all(width: 0.5,color: Color(0xffFFFFFF)),
                    gradient: LinearGradient(
                        colors: [
                          Color(0xffFFBFAD),
                          Color(0xffEF5124)
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter
                    )
                ),
                child: Center(
                  child: Text('التالي',
                    style: TextStyle(color: Color(0xff35333D),fontWeight: FontWeight.w400,fontSize: MediaQuery.of(context).size.width*.08
                    ) ,),
                ),
              ),
            )
          ],
        )
    );
  }
  Widget _buildLandscapeLayout(){
    return  Container(
      //margin: EdgeInsets.only(top: 50),
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('images/informationbg.jpg')
            )
        ),
        child:Column(
          children: [
            SizedBox( height:MediaQuery.of(context).size.height*.18,),
            Container(
              width: MediaQuery.of(context).size.width*.5,
              height: MediaQuery.of(context).size.height*.13,
              // margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*.05),
              //padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*.1),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                      child: Padding(
                        padding: EdgeInsets.only(left: 3,),
                        child: Text(
                          question,
                          style: TextStyle(fontSize: MediaQuery.of(context).size.width*.03, color: Color(0xff000000)),
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
            SizedBox(height: MediaQuery.of(context).size.height*.05,),
            Image(image: AssetImage("images/hand-removebg.png"),width:MediaQuery.of(context).size.width*.35 ,
                height: MediaQuery.of(context).size.height*.1),
            GestureDetector(
                onTap: ()async{
                  obg.speak(question);
                },
                child: Container(
                  width: MediaQuery.of(context).size.width*.6,
                  height: MediaQuery.of(context).size.height*.15,
                  margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*.05,),
                  padding: EdgeInsets.all(1),
                  child:Image(image:AssetImage('images/listeninfo.png',) ),
                )
            ),

            GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return Information3Class();
                },));
                //Navigator.of(context).pushNamed("Information5Class");
              },
              child: Container(
                margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*.05),
                width: MediaQuery.of(context).size.width*.2,
                height: MediaQuery.of(context).size.height*.1,
                decoration: BoxDecoration(
                    color: Color(0xffE8AA9A),
                    borderRadius: BorderRadius.circular(31,),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xff000000),
                        offset: Offset(0, 3),
                        blurRadius: 4,
                        // spreadRadius: 2
                      ),
                    ],
                    border: Border.all(width: 0.5,color: Color(0xffFFFFFF)),
                    gradient: LinearGradient(
                        colors: [
                          Color(0xffFFBFAD),
                          Color(0xffEF5124)
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter
                    )
                ),
                child: Center(
                  child: Text('التالي',
                    style: TextStyle(color: Color(0xff35333D),fontWeight: FontWeight.w400,fontSize: MediaQuery.of(context).size.width*.025
                    ),
                  ),
                ),
              ),
            )
          ],
        )
    );
  }
}