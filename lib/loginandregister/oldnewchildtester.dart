import 'package:flutter/material.dart';
import 'childregister.dart';
import 'childlogin.dart';
//import 'pagelogin.dart';
import 'package:codecansecond/testerpages/pagelogin.dart';
class Page5Class extends StatefulWidget{
  State<Page5Class>createState()=> _pg();
}
class _pg extends State<Page5Class> {
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
             child: Column(
               children: [
                 SizedBox(height: 270,),
                 Container(
                   height:60 ,
                   width: 335,
                   child: ElevatedButton(
                     onPressed: (){
                       Navigator.of(context).push(MaterialPageRoute(builder: (v){
                         return AllchildClass();
                       }
                       )
                       );
                     },
                     child: Text("طفل قديم",style:TextStyle(fontWeight:FontWeight.w400,fontSize: 35,color: Color(0xff9CDBFA),), ),
                     style: ElevatedButton.styleFrom(
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(40),
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
                 SizedBox(height: 65,),
                 Container(
                   height:60 ,
                   width: 335,
                   child: ElevatedButton(
                     onPressed: (){
                       Navigator.of(context).push(MaterialPageRoute(builder: (v){
                         return ChildInfo();
                       }
                       )
                       );
                     },
                     child: Text("طفل جديد",style:TextStyle(fontWeight:FontWeight.w400,fontSize: 35,color: Color(0xff9CDBFA)),),
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
                 SizedBox(height: 65,),
                 Container(
                   height:60 ,
                   width: 335,
                   child: ElevatedButton(
                     onPressed: (){
                       Navigator.of(context).push(MaterialPageRoute(builder: (v){
                         return childtesterlogin();
                       }
                       )
                       );
                     },
                     child: Text("تقييم الاداء",style:TextStyle(fontWeight:FontWeight.w400,fontSize: 35,color: Color(0xff9CDBFA)),),
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
          )
        )
    );
  }
}