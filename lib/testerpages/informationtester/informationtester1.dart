import 'package:flutter/material.dart';
import 'package:codecansecond/logicoperation/childdegreefromtesters.dart';
//import 'informationtester2.dart';
import 'package:codecansecond/logicoperation/sqlflite2.dart';
import 'package:codecansecond/testerpages/similartester/similartester1.dart';
import 'package:codecansecond/testerpages/app_degress/information_degree_tester.dart';
class InformationTester1Class extends StatefulWidget{
  State<InformationTester1Class> createState() => _pg();
}
class _pg extends State<InformationTester1Class> {
  int Questiondegree=0 ;
  SqlDb sql= SqlDb();
  bool check = false;
  int  x=0;
  String text = "";
  int counters=2;
  var question="ما اِسْم هَذَا اْْلاِصْبَع";

  //var x=GlobalKey();
  Widget build(BuildContext buildcontext) {
    // var heights=mediaQuery.;
    return SafeArea(
        child: Material(
          child: OrientationBuilder(
            builder: (context, orientation) {
              return orientation==Orientation.portrait
                  ?_PortraiteLayout()
                  :_LandscabeLayout();
            },
          ),

        )
    );
  }
  Widget _PortraiteLayout(){
     return Container(
           width: double.infinity,
           height: double.infinity,
           decoration: BoxDecoration(
             image: DecorationImage(
               fit: BoxFit.fill,
               image: AssetImage('images/testerinfo2.png',),
             ),
           ),
           child: Column(
             children: [
               // Container(
               //   margin: EdgeInsets.only(top: 30),
               //   child: Text('(الفهم العام)',style: TextStyle(fontSize:30,color: Color(0xff543686) )),
               // ),
               SizedBox(height: MediaQuery.of(context).size.height*.2,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Flexible(
                     child: Padding(
                       padding: EdgeInsets.only(left: 4,right: 4),
                       child: Text(
                         question,
                         style: TextStyle(fontSize: MediaQuery.of(context).size.width*.07, color: Color(0xff3E1C12)),
                         textAlign: TextAlign.center,
                       ),
                     )
                   ),
                   // Text(" (1)",
                   //     style: TextStyle(fontSize: 30, color: Color(0xff543686))),
                 ],
               ),
               SizedBox(height:MediaQuery.of(context).size.height*.03),


               GestureDetector(

                 onTap: (){
                   setState(() {
                     Questiondegree=1;
                     check=true;
                     text=" ";
                     x=1;
                   });
                 },
                 child: Container(
                   width: MediaQuery.of(context).size.width*.7,
                   height: MediaQuery.of(context).size.height*.07,
                   margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*.05),
                   decoration: BoxDecoration(
                     gradient: LinearGradient(
                         colors:x==1? [
                           Color(0xffE03B16 ),
                           Color(0xffE03B16)
                         ]:[
                           Color(0xffFFBFAD),
                           Color(0xffEF5124)
                         ],
                           begin: Alignment.topCenter,
                           end: Alignment.bottomCenter
                       ),
                       borderRadius: BorderRadius.circular(31,),
                       boxShadow: [
                         BoxShadow(
                           color: Color(0xff3C5E80),
                           offset: Offset(0,4),
                           blurRadius: 4,
                         )
                       ],
                       border: Border.all(color: Color(0xffD9411F),width: 2)
                   ),
                   child: Padding(
                     padding: EdgeInsets.only(bottom: 8,left: 80),
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
                 onTap: (){
                   setState(() {
                     Questiondegree=0;
                     check=true;
                     text=" ";
                     x=2;
                   });
                 },
                 child: Container(
                   width: MediaQuery.of(context).size.width*.7,
                   height: MediaQuery.of(context).size.height*.07,
                   margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*.05),
                   decoration: BoxDecoration(
                       gradient: LinearGradient(
                           colors:x==2? [
                             Color(0xffE03B16 ),
                             Color(0xffE03B16)
                           ]:[
                             Color(0xffFFBFAD),
                             Color(0xffEF5124)
                           ],
                           begin: Alignment.topCenter,
                           end: Alignment.bottomCenter
                        ),
                       borderRadius: BorderRadius.circular(31,),
                       boxShadow: [
                         BoxShadow(
                           color: Color(0xff3C5E80),
                           offset: Offset(0,4),
                           blurRadius: 4,
                         )
                       ],
                       border: Border.all(color: Color(0xffD9411F),width: 2)
                   ),
                   child: Padding(
                     padding: EdgeInsets.only(bottom: 8,left: 100),
                     child: Text(
                       'صفر',
                       style: TextStyle(
                         color: Color(0xffFFFFFF),
                         fontSize: MediaQuery.of(context).size.width*.07,
                         fontWeight: FontWeight.w400,
                       ),
                     ),
                   ),
                 ),
               ),
               SizedBox(height: 30,),

               GestureDetector(

                 onTap: ()async{
                   CalculationFromTester.InformationDegree+=Questiondegree;
                   //print(calculation.degree);
                   if(check==true){
                     // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                     //   return SimilarTester1Class();
                     // },));
                     if(counters>20){
                       Navigator.of(context).push(MaterialPageRoute(
                         builder: (context) {
                           return SimilarTester1Class();
                         },
                       ));
                     }else{
                       var questions=await sql.readData("SELECT question FROM 'questiondata' WHERE department='i' AND id=${counters} ");
                       setState(() {
                         question=questions[0]["question"];
                         print(counters);
                         print(question);
                         counters+=1;
                         check = false;
                         x=0;
                       });
                     }
                   }else {
                     setState(() {
                       text="select degree";
                     }
                     );
                   }
                   print(text);
                   // Navigator.of(context).pushNamed("UnderstandTester3Class",arguments: {"degree":degree});
                 },
                 child: Container(
                   width: MediaQuery.of(context).size.width*.45,
                   height: MediaQuery.of(context).size.height*.07,
                   decoration: BoxDecoration(

                       gradient: LinearGradient(
                           colors: [
                             Color(0xffFFBFAD),
                             Color(0xffEF5124)
                           ],
                           begin: Alignment.topCenter,
                           end: Alignment.bottomCenter
                       ),
                       borderRadius: BorderRadius.circular(31,),
                       boxShadow: [
                         BoxShadow(
                           color: Color(0xff252033),
                           offset: Offset(0,4),
                           blurRadius: 4,
                         )
                       ],
                       border: Border.all(color: Color(0xffD9411F),width: 2)
                   ),
                   child: Center(
                     child: Text(
                       'التالى',
                       style: TextStyle(
                         color: Color(0xff3E1C12),
                         fontSize: MediaQuery.of(context).size.width*.07,
                         fontWeight: FontWeight.w400,
                       ),
                     ),
                   ),
                 ),
               ),
               SizedBox(height: MediaQuery.of(context).size.height*.05,),
               Center(
                 // key: ,
                 child: Text(text,style: TextStyle(color: Colors.redAccent),
                 ),
               )
             ],
           ),
         );
  }
  Widget _LandscabeLayout(){
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage('images/testerinfo2.png',),
        ),
      ),
      child: Column(
        children: [
          // Container(
          //   margin: EdgeInsets.only(top: 30),
          //   child: Text('(الفهم العام)',style: TextStyle(fontSize:30,color: Color(0xff543686) )),
          // ),
          SizedBox(height: MediaQuery.of(context).size.height*.2,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                  child: Padding(
                    padding: EdgeInsets.only(left: 4,right: 4),
                    child: Text(
                      question,
                      style: TextStyle(fontSize: MediaQuery.of(context).size.width*.03, color: Color(0xff3E1C12)),
                      textAlign: TextAlign.center,
                    ),
                  )
              ),
              // Text(" (1)",
              //     style: TextStyle(fontSize: 30, color: Color(0xff543686))),
            ],
          ),
          SizedBox(height:MediaQuery.of(context).size.height*.03),
          GestureDetector(

            onTap: (){
              setState(() {
                Questiondegree=1;
                check=true;
                text=" ";
                x=1;
              });
            },
            child: Container(
              width: MediaQuery.of(context).size.width*.3,
              height: MediaQuery.of(context).size.height*.12,
              //margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*.05),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors:x==1? [
                        Color(0xffE03B16 ),
                        Color(0xffE03B16)
                      ]:[
                        Color(0xffFFBFAD),
                        Color(0xffEF5124)
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter
                  ),
                  borderRadius: BorderRadius.circular(31,),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xff3C5E80),
                      offset: Offset(0,4),
                      blurRadius: 4,
                    )
                  ],
                  border: Border.all(color: Color(0xffD9411F),width: 2)
              ),
              child: Padding(
                padding: EdgeInsets.only(bottom: 8,left: 80),
                child: Text(
                  '١ درجه',
                  style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontSize:MediaQuery.of(context).size.width*.03,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              setState(() {
                Questiondegree=0;
                check=true;
                text=" ";
                x=2;
              });
            },
            child: Container(
              width: MediaQuery.of(context).size.width*.3,
              height: MediaQuery.of(context).size.height*.12,
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*.05),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors:x==2? [
                        Color(0xffE03B16 ),
                        Color(0xffE03B16)
                      ]:[
                        Color(0xffFFBFAD),
                        Color(0xffEF5124)
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter
                  ),
                  borderRadius: BorderRadius.circular(31,),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xff3C5E80),
                      offset: Offset(0,4),
                      blurRadius: 4,
                    )
                  ],
                  border: Border.all(color: Color(0xffD9411F),width: 2)
              ),
              child: Padding(
                padding: EdgeInsets.only(bottom: 8,left: 100),
                child: Text(
                  'صفر',
                  style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontSize: MediaQuery.of(context).size.width*.03,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height:MediaQuery.of(context).size.height*.03,),

          GestureDetector(

            onTap: ()async{
              CalculationFromTester.InformationDegree+=Questiondegree;
              //print(calculation.degree);
              if(check==true){
                // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                //   return SimilarTester1Class();
                // },));
                if(counters>20){
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return SimilarTester1Class();
                    },
                  ));
                }else{
                  var questions=await sql.readData("SELECT question FROM 'questiondata' WHERE department='i' AND id=${counters} ");
                  setState(() {
                    question=questions[0]["question"];
                    print(counters);
                    print(question);
                    counters+=1;
                    check = false;
                    x=0;
                  });
                }
              }else {
                setState(() {
                  text="select degree";
                }
                );
              }
              print(text);
              // Navigator.of(context).pushNamed("UnderstandTester3Class",arguments: {"degree":degree});
            },
            child: Container(
              width: MediaQuery.of(context).size.width*.2,
              height: MediaQuery.of(context).size.height*.1,
              decoration: BoxDecoration(

                  gradient: LinearGradient(
                      colors: [
                        Color(0xffFFBFAD),
                        Color(0xffEF5124)
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter
                  ),
                  borderRadius: BorderRadius.circular(31,),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xff252033),
                      offset: Offset(0,4),
                      blurRadius: 4,
                    )
                  ],
                  border: Border.all(color: Color(0xffD9411F),width: 2)
              ),
              child: Center(
                child: Text(
                  'التالى',
                  style: TextStyle(
                    color: Color(0xff3E1C12),
                    fontSize: MediaQuery.of(context).size.width*.02,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height*.05,),
          Center(
            // key: ,
            child: Text(text,style: TextStyle(color: Colors.redAccent),
            ),
          )
        ],
      ),
    );
  }
}
