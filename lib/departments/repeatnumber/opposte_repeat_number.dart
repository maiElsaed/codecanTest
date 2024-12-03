import 'package:flutter/material.dart';
import 'package:codecansecond/departments/similarpart2/firstsimilarpart2.dart';
import 'package:codecansecond/logicoperation/voice.dart';
import 'package:codecansecond/logicoperation/sqlflite2.dart';

import '../picturecomplete/firstPage.dart';
class OppositeRepeatNumber extends StatefulWidget{
  State<OppositeRepeatNumber>createState()=> _pg();
}
class _pg extends State<OppositeRepeatNumber> {
  Reader obg=Reader();
  SqlDb sql= SqlDb();
  late List<Map> question;

  int counters=2;
  var questionDisplay="ثلاثة ثمانية ستة";
  int grade=3;
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
              image: AssetImage('images/repeat_number_bg.jpg')
          )
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*.07 ),
            width: MediaQuery.of(context).size.width*.3,
            height:MediaQuery.of(context).size.height*.1,
            decoration: BoxDecoration(
                color: Color(0xffF4EBE5),
                borderRadius: BorderRadius.circular(31,),
                gradient: LinearGradient(
                  colors: [
                    Color(0xffFDDAF9),
                    Color(0xffDADAF6),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xff706F9B),
                    offset: Offset(0,4),
                    blurRadius: 10,
                  )
                ],
                border: Border.all(color: Color(0xff706F9B),width: 2)
            ),
            child: Center(
              child: Text(
                "$grade",
                style: TextStyle(
                  color: Color(0xff745C9C),
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height*.45,),

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
                child:Image(image:AssetImage('images/repeat_listen.png',) ),
              )
          ),
          SizedBox(height: MediaQuery.of(context).size.height*.05,),
          GestureDetector(
            onTap: ()async{
              if(counters>7){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return FirstPictureComplete();
                },));
              }else{
                List<Map> questions=await sql.readData("SELECT grade , answer , question FROM 'questiondata' WHERE department='r' AND id=${counters} ");
                setState(() {
                  questionDisplay=questions[0]["question"];
                  grade=questions[0]["grade"];
                  print("the question is $questionDisplay");
                  print("the grade is $grade");
                  counters+=1;
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
              image: AssetImage('images/repeat_number_bg.jpg')
          )
      ),
      child: Column(
        children: [

          Container(
            margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*.07 ),
            width: MediaQuery.of(context).size.width*.2,
            height:MediaQuery.of(context).size.height*.12,
            decoration: BoxDecoration(
                color: Color(0xffF4EBE5),
                borderRadius: BorderRadius.circular(31,),
                gradient: LinearGradient(
                  colors: [
                    Color(0xffFDDAF9),
                    Color(0xffDADAF6),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xff706F9B),
                    offset: Offset(0,4),
                    blurRadius: 10,
                  )
                ],
                border: Border.all(color: Color(0xff706F9B),width: 2)
            ),
            child: Center(
              child: Text(
                "1",
                style: TextStyle(
                  color: Color(0xff745C9C),
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height*.35,),

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
              if(counters>7){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return FirstPictureComplete();
                },));
              }else{
                List<Map> questions=await sql.readData("SELECT grade , answer , question FROM 'questiondata' WHERE department='r' AND id=${counters} ");
                setState(() {
                  questionDisplay=questions[0]["question"];
                  grade=questions[0]["grade"];
                  print("the question is $questionDisplay");
                  print("the grade is $grade");
                  counters+=1;
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