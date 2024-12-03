import 'package:flutter/material.dart';

import 'package:codecansecond/logicoperation/voice.dart';
import 'package:codecansecond/logicoperation/sqlflite2.dart';
import 'package:codecansecond/departments/information/page1information.dart';
class Page2understandClass extends StatefulWidget{
  State<Page2understandClass>createState()=> _pg();
}
class _pg extends State<Page2understandClass> {
  Reader obg=Reader();
  SqlDb sql= SqlDb();
  late List<Map> question;
  int counters=2;
  var questionDisplay="إذا جُرح إصبعك، ماذا ستفعل";
  @override
  Widget build(BuildContext buildcontext) {
    return SafeArea(
        child: Material(
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('images/background2.jpeg')
                )
            ),
            child:OrientationBuilder(
              builder: (context, orientation) {
               return orientation == Orientation.portrait
                    ? _buildPortraitLayout()
                    : _buildLandscapeLayout();
              },
            )

          ),
        )
    );
  }
  Widget _buildPortraitLayout() {
    return Column(
      children: [
        SizedBox(height: MediaQuery.of(context).size.height*.1),

        SizedBox(height: MediaQuery.of(context).size.height*.02,),
        Image.asset('images/smilicon.png',height:MediaQuery.of(context).size.height*.2,width:MediaQuery.of(context).size.width*.3 ,),
        SizedBox(height:  MediaQuery.of(context).size.height*.02,),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
                child: Padding(
                  padding: EdgeInsets.only(left: 4,right: 4),
                  child: Text(
                    questionDisplay,
                    style: TextStyle(fontSize: MediaQuery.of(context).size.width*.07, color: Color(0xff725058)),
                    textAlign: TextAlign.center,
                  ),
                )
            ),

          ],
        ),
        GestureDetector(
            onTap: ()async{
              print("mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm");
              obg.speak(questionDisplay);
            },
            child: Container(
              width: MediaQuery.of(context).size.width*.6,
              height: MediaQuery.of(context).size.height*.1,
              margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*.05),
              padding: EdgeInsets.all(1),
              child:Image(image:AssetImage('images/listen3.png',) ),
            )
        ),
        SizedBox(height: MediaQuery.of(context).size.height*.05,),
        GestureDetector(
          onTap: ()async{

            if(counters>14){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return Information1Class();
              },));
            }else{
              var questions=await sql.readData("SELECT question FROM 'questiondata' WHERE department='u' AND id=${counters} ");
              setState(() {
                questionDisplay=questions[0]["question"];
                print(counters);
                print(questions);
                counters+=1;

              });
            }
          },
          child:  Container(
            width:MediaQuery.of(context).size.width*.4,
            height: MediaQuery.of(context).size.height*.07,
            decoration: BoxDecoration(

                gradient: LinearGradient(
                  colors: [
                    Color(0xffF483AD),
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
                'التالى',
                style: TextStyle(
                  color: Color(0xff745C9C),
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
  Widget _buildLandscapeLayout() {
    return Column(
      children: [
        SizedBox(height: MediaQuery.of(context).size.height*.05),
        Image.asset('images/smilicon.png',height:MediaQuery.of(context).size.height*.2,width:MediaQuery.of(context).size.width*.5 ,),
        SizedBox(height:  MediaQuery.of(context).size.height*.01,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
                child: Padding(
                  padding: EdgeInsets.only(left: 4,right: 4),
                  child: Text(
                    questionDisplay,
                    style: TextStyle(fontSize: MediaQuery.of(context).size.width*.03, color: Color(0xff543686)),
                    textAlign: TextAlign.center,
                  ),
                )
            ),
            // Text(" (1)",
            //     style: TextStyle(fontSize: 30, color: Color(0xff543686))),
          ],
        ),
        GestureDetector(
            onTap: ()async{
              obg.speak(questionDisplay);
            },
            child: Container(
              width: MediaQuery.of(context).size.width*.5,
              height: MediaQuery.of(context).size.height*.14,
              margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*.05),
              padding: EdgeInsets.all(1),
              child:Image(image:AssetImage('images/listen3.png',) ),
            )
        ),
        SizedBox(height: MediaQuery.of(context).size.height*.05,),
        GestureDetector(
          onTap: ()async{

            if(counters>14){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return Information1Class();
              },));
            }else{
              var questions=await sql.readData("SELECT question FROM 'questiondata' WHERE department='u' AND id=${counters} ");
              setState(() {
                questionDisplay=questions[0]["question"];
                print(counters);
                print(questions);
                counters+=1;

              });
            }
          },

          child:  Container(
            width:MediaQuery.of(context).size.width*.25,
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
                'التالى',
                style: TextStyle(
                  color: Color(0xff745C9C),
                  fontSize:MediaQuery.of(context).size.width*.03,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        )
      ],

    );
  }
}