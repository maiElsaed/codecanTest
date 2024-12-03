import 'package:flutter/material.dart';
import 'package:codecansecond/departments/similar/firstsimilar.dart';
import 'package:codecansecond/logicoperation/voice.dart';
import 'package:codecansecond/logicoperation/sqlflite2.dart';

import '../picturecomplete/firstPage.dart';
import '../repeatnumber/repeat_number1.dart';
class Vocublary1Class extends StatefulWidget{
  State<Vocublary1Class>createState()=> _pg();
}
class _pg extends State<Vocublary1Class> {
  Reader obg=Reader();
  SqlDb sql= SqlDb();
  late List<Map> question;
  int counters=2;
  int ImageCounter=0;
  List ImagePath=['images/vocublary1.png','images/vocublary2.png','images/vocublary3.png','images/vocublary4.png'];
  var questionDisplay="ما هو البلح؟";
  @override
  Widget build(BuildContext buildcontext) {
    return SafeArea(
        child: Material(

          child: OrientationBuilder(
            builder: (context, orientation) {
              return orientation==Orientation.portrait
                  ?_PortraitLayout()
                  :_LandscapeLayout();
            },
          ),
        )
    );
  }
  Widget _PortraitLayout(){
    return Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('images/vocublarybg.jpg')
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
              SizedBox(height:MediaQuery.of(context).size.height*.05,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(ImagePath[ImageCounter],height:MediaQuery.of(context).size.height*.2,width:MediaQuery.of(context).size.width*.4 ,),
                  // Image.asset('images/similar9.png',height: 120,width:120 ,),
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
                    margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*.08),
                    padding: EdgeInsets.all(1),
                    child:Image(image:AssetImage('images/vocublarylisten.png',) ),
                  )
              ),
              SizedBox(height:MediaQuery.of(context).size.height*.05,),
              GestureDetector(
                // onTap: (){
                //   Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                //     return  Vocublary2Class();
                //   },));
                // },
                onTap: ()async{

                  if(counters>40){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                      return RepeatNumberFirst();
                    },));
                  }else{
                    var questions=await sql.readData("SELECT question FROM 'questiondata' WHERE department='v' AND id=${counters} ");
                    setState(() {
                      questionDisplay=questions[0]["question"];
                      print(counters);
                      print(questions);
                      counters+=1;
                       if(ImageCounter==3){
                         ImageCounter=0;
                       }else{
                         ImageCounter++;
                       }
                    });
                  }
                },
                child:  Container(
                  width: MediaQuery.of(context).size.width*.38,
                  height:MediaQuery.of(context).size.height*.07,
                  decoration: BoxDecoration(
                    color: Color(0xffBEB1E2),
                    borderRadius: BorderRadius.circular(31,),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xffA3A3CA),
                        offset: Offset(-5,10),
                        blurRadius: 5,
                        // spreadRadius: 2
                      ),
                    ],
                    gradient: LinearGradient(colors: [
                      Color(0xffECE4F2),
                      Color(0xffF483AD),
                    ]
                    ,begin: Alignment.topCenter,
                      end: Alignment.bottomCenter
                    ),
                    border: Border.all(width: 1 ,color: Color(0xff745C9C)),

                  ),
                  child: Center(
                    child: Text(
                      'التالي',
                      style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontSize:MediaQuery.of(context).size.width*.07,
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
  Widget _LandscapeLayout(){
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('images/vocublarybg.jpg')
          )
      ),
      child: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height*.05,),
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
          SizedBox(height:MediaQuery.of(context).size.height*.05,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(ImagePath[ImageCounter],height:MediaQuery.of(context).size.height*.2,width:MediaQuery.of(context).size.width*.4 ,),
              // Image.asset('images/similar9.png',height: 120,width:120 ,),
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
                margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*.08),
                padding: EdgeInsets.all(1),
                child:Image(image:AssetImage('images/vocublarylisten.png',) ),
              )
          ),
          SizedBox(height:MediaQuery.of(context).size.height*.05,),
          GestureDetector(
            // onTap: (){
            //   Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            //     return  Similar1Class();
            //   },));
            // },
            onTap: ()async{

              if(counters>40){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return RepeatNumberFirst();
                },));
              }else{
                var questions=await sql.readData("SELECT question FROM 'questiondata' WHERE department='v' AND id=${counters} ");
                setState(() {
                  questionDisplay=questions[0]["question"];
                  print(counters);
                  print(questions);
                  counters+=1;
                  if(ImageCounter==3){
                    ImageCounter=0;
                  }else{
                    ImageCounter++;
                  }
                });
              }
            },
            child:  Container(
              width: MediaQuery.of(context).size.width*.13,
              height:MediaQuery.of(context).size.height*.1,
              decoration: BoxDecoration(
                color: Color(0xffBEB1E2),
                borderRadius: BorderRadius.circular(31,),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xffA3A3CA),
                    offset: Offset(-5,10),
                    blurRadius: 5,
                    // spreadRadius: 2
                  ),
                ],
                gradient: LinearGradient(colors: [
                  Color(0xffECE4F2),
                  Color(0xffF483AD),
                ]
                    ,begin: Alignment.topCenter,
                    end: Alignment.bottomCenter
                ),
                border: Border.all(width: 1 ,color: Color(0xff745C9C)),

              ),
              child: Center(
                child: Text(
                  'التالي',
                  style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontSize:MediaQuery.of(context).size.width*.024,
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