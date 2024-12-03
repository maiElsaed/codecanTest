import 'package:flutter/material.dart';

class Calculation10Class extends StatefulWidget{
  State<Calculation10Class>createState()=> _pg();
}
class _pg extends State<Calculation10Class> {
  @override
  Widget build(BuildContext buildcontext) {
    return SafeArea(
        child: Material(
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('images/calculation.png')
                )
            ),
            child: Column(
              children: [
                SizedBox(height: 50,),
                Container(
                  width: 140,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Color(0xffDDEAF8),
                      borderRadius: BorderRadius.circular(31,),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xff9CC7F2),
                          offset: Offset(0, 5),
                          blurRadius: 4,
                          // spreadRadius: 2
                        ),
                      ],
                      border: Border.all(width: 3,color: Color(0xffBEB1E2))
                  ),
                  child: Center(
                    child: Text('00:00',
                      style: TextStyle(color: Color(0xff235B7F),fontWeight: FontWeight.w400,fontSize: 30
                      ) ,),
                  ),
                ),
                SizedBox(height: 50,),
                Image.asset('images/bag.png',height: 170,width:170 ,),
                SizedBox(height: 30,),
                Column(

                  children: [
                    Row(
                      //(11) صنايعي كسب 48ج وكان بياخد 8ج في اليوم كده يبقى اشتغل كام يوم؟
                      mainAxisAlignment:MainAxisAlignment.center ,
                      children: [
                        Text("صنايعي كسب 48ج ",style: TextStyle(fontSize:30,color: Color(0xff543686) ),),
                        Text("(11)",style: TextStyle(fontSize:30,color: Color(0xff543686)  )),
                      ],
                    ),

                    Center(
                      child: Text("  وكان بياخد 8ج في اليوم",style: TextStyle(fontSize:30,color: Color(0xff543686)  )),
                    ),

                    Center(
                      child: Text("كده يبقى اشتغل كام يوم"+"؟",style: TextStyle(fontSize:30,color: Color(0xff543686)  )),
                    ),

                  ],
                ),
                SizedBox(height: 50,),
                Container(
                  width: 155,
                  height: 55,
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
                      'الاجابة',
                      style: TextStyle(
                        color: Color(0xff745C9C),
                        fontSize: 30,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}