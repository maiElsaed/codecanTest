import 'package:flutter/material.dart';
//import 'page2.dart';
import 'package:codecansecond/departments/understandchild/understandfirst.dart';
class Page4Class extends StatefulWidget{
  State<Page4Class>createState()=> _pg();
}
class _pg extends State<Page4Class> {
  @override
  Widget build(BuildContext buildcontext) {
    return SafeArea(
      child: Material(
          child:Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('images/background2.jpeg'),
                )
            ),
            child:Column(
              children: [
                Container(
                   width: 180,
                   height: 180,
                   margin: EdgeInsets.only(top: 40),
                   padding: EdgeInsets.all(1),
                   decoration: BoxDecoration(
                     color: Color(0xff0A0E6D),
                     shape: BoxShape.circle,
                     boxShadow: [
                       BoxShadow(
                          color: Color(0xff235B7F),
                          blurRadius: 4,
                          spreadRadius: 0,
                          offset: Offset(
                             -2,6
                         )
                      ),
                     ]
                  ),
                  child: CircleAvatar(
                    radius: 91,
                    backgroundImage: AssetImage('images/girl.jpg',),
                  ),
              ),
                SizedBox(height: 35,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      padding: EdgeInsets.only(right: 0,left: 15),
                      child:  Text("مي السيد عبدالوارث",style: TextStyle(color: Color(0xff014470),
                        fontSize: 25,fontWeight: FontWeight.w400,),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 25,left: 15),
                      child:  Text("-: "+"الاسم",style: TextStyle(color: Color(0xff014470),
                          fontSize: 25,fontWeight: FontWeight.w400),),

                    )
                     ],
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      padding: EdgeInsets.only(right: 0,left: 15),
                      child:  Text("12",style: TextStyle(color: Color(0xff014470),
                        fontSize: 25,fontWeight: FontWeight.w400,),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 25,left: 15),
                      child:  Text("-: "+"العمر",style: TextStyle(color: Color(0xff014470),
                          fontSize: 25,fontWeight: FontWeight.w400),),

                    )
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      padding: EdgeInsets.only(right: 0,left: 15),
                      child:  Text("95",style: TextStyle(color: Color(0xff014470),
                        fontSize: 25,fontWeight: FontWeight.w400,),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 25,left: 15),
                      child:  Text("-: "+"نتيجة الاختبار السابق",style: TextStyle(color: Color(0xff014470),
                          fontSize: 25,fontWeight: FontWeight.w400),),

                    )
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      padding: EdgeInsets.only(right: 0,left: 15),
                      child:  Text("01267834789",style: TextStyle(color: Color(0xff014470),
                        fontSize: 25,fontWeight: FontWeight.w400,),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 20,left: 10),
                      child:  Text("-: "+" تليفون الاب",style: TextStyle(color: Color(0xff014470),
                          fontSize: 15,fontWeight: FontWeight.w400),),

                    )
                  ],
                ),

                SizedBox(height: 50,),
                Container(
                  height:60 ,
                  width: 335,
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (v){
                        return UnderstandFirst();
                      }
                      )
                      );
                    },
                    child: Text("بداية اختبار جديد ",style:TextStyle(fontWeight:FontWeight.w400,fontSize: 30,color: Color(0xffFFFFFF)),),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),

                      ),
                      backgroundColor: Color(0xff1B6EA5),
                    ),

                  ),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Color(0xff6194C1),
                            offset:Offset (0,6),
                            blurRadius: 10,
                            spreadRadius: 0
                        )
                      ]
                  ),
                ),
              ],

          ),
        /////////////////////////////////////////////////////////////////////////////////////
          )
      ),

    );
  }
}