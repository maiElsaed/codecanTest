import 'package:flutter/material.dart';
import 'maze_one.dart';
import 'maze_a.dart';
class MazeFirst extends StatefulWidget{
  State<MazeFirst>createState()=> _pg();
}
class _pg extends State<MazeFirst> {
  @override
  Widget build(BuildContext buildcontext) {
    return SafeArea(
        child: Material(
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('images/maze_first_bg.jpg')
                  )
              ),
              child: OrientationBuilder(
                builder: (context, orientation) {
                  return orientation==Orientation.portrait
                      ? _buildPortraitLayout()
                      : _buildLandscapeLayout();
                },
              ),
            )
        )
    );
  }
  Widget _buildPortraitLayout(){
    return Column(
      children: [
        GestureDetector(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return MazeScreenA();
            },),
            );
          },
          child: Container(
            margin: EdgeInsets.only(
                top:MediaQuery.of(context).size.height*.7,
            ),
            width: MediaQuery.of(context).size.width*.35,
            height: MediaQuery.of(context).size.height*.07,
            decoration: BoxDecoration(
                color: Color(0xffDCDBFC).withOpacity(.89),
                borderRadius: BorderRadius.circular(31,),
                // boxShadow: [
                //   BoxShadow(
                //     color: Color(0xff000000),
                //     offset: Offset(0, 3),
                //     blurRadius: 4,
                //     // spreadRadius: 2
                //   ),
                // ],
                border: Border.all(width: 0.5,color: Color(0xff1D1A83)),
                gradient: LinearGradient(
                    colors: [
                      Color(0xffDCDBFC),
                      Color(0xffDCDBFC)
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter
                )
            ),
            child: Center(
              child: Text('التالي',
                style: TextStyle(color: Color(0xff1D1A83),fontWeight: FontWeight.w400,fontSize: MediaQuery.of(context).size.width*.06
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
  Widget _buildLandscapeLayout(){
    return Column(
      children: [
        GestureDetector(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return MazeScreenA();
            },),
            );
          },
          child: Container(
            margin: EdgeInsets.only(
              top:MediaQuery.of(context).size.height*.7,
            ),
            width: MediaQuery.of(context).size.width*.35,
            height: MediaQuery.of(context).size.height*.07,
            decoration: BoxDecoration(
                color: Color(0xffDCDBFC).withOpacity(.89),
                borderRadius: BorderRadius.circular(31,),
                border: Border.all(width: 0.5,color: Color(0xff1D1A83)),
                gradient: LinearGradient(
                    colors: [
                      Color(0xffDCDBFC),
                      Color(0xffDCDBFC)
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter
                )
            ),
            child: Center(
              child: Text('التالي',
                style: TextStyle(color: Color(0xff1D1A83),fontWeight: FontWeight.w400,fontSize: MediaQuery.of(context).size.width*.06
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}