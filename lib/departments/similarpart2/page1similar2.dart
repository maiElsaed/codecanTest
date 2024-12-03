import 'package:flutter/material.dart';
//import 'page2similar.dart';
import 'package:codecansecond/departments/picturecomplete/firstPage.dart';
import 'package:codecansecond/logicoperation/voice.dart';
import 'package:codecansecond/logicoperation/sqlflite2.dart';

import '../vocabulary/firstvocubalary.dart';
class Similar2Part2Class extends StatefulWidget{
  State<Similar2Part2Class>createState()=> _pg();
}
class _pg extends State<Similar2Part2Class> {
  Reader obg=Reader();
  SqlDb sql= SqlDb();
  late List<Map> question;
  int counters=2;
  int ImageCounter=0;
  List ImagePath1=[
    "images/vocublary1.png","images/vocublary2.png","images/vocublary3.png","images/vocublary4.png"
  ];
  var questionDisplay="الليمون حادق ، لكن السكر";
  @override
  Widget build(BuildContext buildcontext) {
    return SafeArea(
        child: Material(

            child:OrientationBuilder(
              builder: (context, orientation) {
                return orientation == Orientation.portrait
                    ? _buildPortraitLayout()
                    : _buildLandscapeLayout();
              },
            )
        )
    );
  }
  Widget _buildPortraitLayout(){
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('images/similarbg.png')
          )
      ),
      child: Column(
        children: [

          SizedBox(height: MediaQuery.of(context).size.height*.15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                  child: Padding(
                    padding: EdgeInsets.only(left: 4,right: 4),
                    child: Text(
                      questionDisplay,
                      style: TextStyle(fontSize: MediaQuery.of(context).size.width*.09, color: Color(0xff63464A)),
                      textAlign: TextAlign.center,
                    ),
                  )
              ),
            ],
          ),
          SizedBox(height:MediaQuery.of(context).size.width*.05,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(ImagePath1[ImageCounter],height:MediaQuery.of(context).size.height*.2,width:MediaQuery.of(context).size.width*.4 ,),
              // Image.asset('images/similar9.png',height: 120,width:120 ,),
             // Image.asset(ImagePath2[ImageCounter],height:MediaQuery.of(context).size.height*.16,width:MediaQuery.of(context).size.width*.4 ,),
            ],
          ),

          SizedBox(height: MediaQuery.of(context).size.height*.05,),
          GestureDetector(
              onTap: ()async{
                print("mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm");
                obg.speak(questionDisplay);
              },
              child: Container(
                width: MediaQuery.of(context).size.width*.75,
                height:MediaQuery.of(context).size.height*.1,
                // margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*.05,),
                padding: EdgeInsets.all(1),
                child:Image(image:AssetImage('images/listencal.png',) ),
              )
          ),
          SizedBox(height: MediaQuery.of(context).size.height*.05,),
          GestureDetector(
            // onTap: ()async{
            //
            //   Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            //     return Similar2Class();
            //   },));
            // }
            onTap: ()async{

              if(counters>4){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return FirstVocublary();
                },));
              }else{
                var questions=await sql.readData("SELECT question FROM 'questiondata' WHERE department='p' AND id=${counters} ");
                setState(() {
                  questionDisplay=questions[0]["question"];
                  print(counters);
                  print(questions);
                  counters+=1;
                  ImageCounter+=1;
                  // if(ImageCounter==3){
                  //   ImageCounter=0;
                  // }else{
                  //   ImageCounter++;
                  // }
                });
              }
            },

            child:Container(
              width: MediaQuery.of(context).size.width*.35,
              height:MediaQuery.of(context).size.height*.07,
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
                  'التالي',
                  style: TextStyle(
                    color: Color(0xff745C9C),
                    fontSize:MediaQuery.of(context).size.width*.07 ,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
  Widget _buildLandscapeLayout(){
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('images/similarbg.png')
          )
      ),
      child: Column(
        children: [

          SizedBox(height: MediaQuery.of(context).size.height*.05,),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                      child: Padding(
                        padding: EdgeInsets.only(left: 4,right: 4),
                        child: Text(
                          questionDisplay,
                          style: TextStyle(fontSize: MediaQuery.of(context).size.width*.03, color: Color(0xff63464A)),
                          textAlign: TextAlign.center,
                        ),
                      )
                  ),
                ],
              ),
              //
              // Center(
              //   child: Text("البرتقال والموز؟",style: TextStyle(fontSize:MediaQuery.of(context).size.width*.03,color: Color(0xff3A2725),fontWeight: FontWeight.w400 )),
              // ),
            ],
          ),
          SizedBox(height:MediaQuery.of(context).size.width*.05,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(ImagePath1[ImageCounter],height:MediaQuery.of(context).size.height*.2,width:MediaQuery.of(context).size.width*.4 ,),
              // Image.asset('images/similar9.png',height: 120,width:120 ,),
              //Image.asset(ImagePath2[ImageCounter],height:MediaQuery.of(context).size.height*.16,width:MediaQuery.of(context).size.width*.4 ,),
            ],
          ),
          //  ,SizedBox(height: MediaQuery.of(context).size.height*.05,),
          GestureDetector(
              onTap: ()async{
                print("mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm");
                obg.speak(questionDisplay);
              },
              child: Container(
                width: MediaQuery.of(context).size.width*.8,
                height:MediaQuery.of(context).size.height*.15,
                // margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*.05,),
                padding: EdgeInsets.all(1),
                child:Image(image:AssetImage('images/listencal.png',) ),
              )
          ),
          SizedBox(height: MediaQuery.of(context).size.height*.05,),
          GestureDetector(
            // onTap: ()async{
            //
            //   Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            //     return Similar2Class();
            //   },));
            // }
            onTap: ()async{

              if(counters>4){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return FirstVocublary();
                },));
              }else{
                var questions=await sql.readData("SELECT question FROM 'questiondata' WHERE department='s' AND id=${counters} ");
                setState(() {
                  questionDisplay=questions[0]["question"];
                  print(counters);
                  print(questions);
                  counters+=1;
                  ImageCounter+=1;
                  // if(ImageCounter==3){
                  //   ImageCounter=0;
                  // }else{
                  //   ImageCounter++;
                  // }
                });
              }
            },

            child:Container(
              width: MediaQuery.of(context).size.width*.15,
              height:MediaQuery.of(context).size.height*.12,
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
                  'التالي',
                  style: TextStyle(
                    color: Color(0xff745C9C),
                    fontSize:MediaQuery.of(context).size.width*.03 ,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}