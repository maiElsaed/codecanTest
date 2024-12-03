import 'package:flutter/material.dart';
import 'page1pc.dart';
class FirstPictureComplete extends StatefulWidget{
  State<FirstPictureComplete>createState()=> _pg();
}
class _pg extends State<FirstPictureComplete> {
  @override
  Widget build(BuildContext buildcontext) {
    return SafeArea(
        child: Material(
          child: OrientationBuilder(
            builder: (context, orientation) {
              return orientation==Orientation.portrait
                  ?_PortraiteLayout()
                  :_LandScapeLayout();
            },
          ),
        )
    );

  }
  Widget _PortraiteLayout(){
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('images/CPFirest.jpg')
          )
      ),
      child: Column(
        children: [
          GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return Page1PictureComplete();
              },));
            },
            child: Container(
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*.8),
              // padding: EdgeInsets.only(bottom: 5),
              width: MediaQuery.of(context).size.width*.4,
              height:MediaQuery.of(context).size.height*.07,
              decoration: BoxDecoration(
                  color: Color(0xffB5B3DC),
                  borderRadius: BorderRadius.circular(31,),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xffE1BFE1),
                      offset: Offset(0, 8),
                      blurRadius: 4,
                      // spreadRadius: 2
                    ),
                  ],
                  border: Border.all(width: 1,color: Color(0xffB5B3DC)),
                  gradient: LinearGradient(
                      colors: [
                        Color(0xffDD9FD5),
                        Color(0xff9180C4)
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter
                  )
              ),
              child: Center(
                child: Text('ابدأ',
                  style: TextStyle(color: Color(0xff685687),fontWeight: FontWeight.w400,
                    fontSize:MediaQuery.of(context).size.width*.08,
                  )
                  ,),
              ),
            ),
          )
        ],
      ),
    );
  }
  Widget _LandScapeLayout(){
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('images/CPFirest.jpg')
          )
      ),
      child: Column(
        children: [
          GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return Page1PictureComplete();
              },));
            },
            child: Container(
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*.76),
              // padding: EdgeInsets.only(bottom: 5),
              width: MediaQuery.of(context).size.width*.15,
              height:MediaQuery.of(context).size.height*.1,
              decoration: BoxDecoration(
                  color: Color(0xffB5B3DC),
                  borderRadius: BorderRadius.circular(31,),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xffE1BFE1),
                      offset: Offset(0, 8),
                      blurRadius: 4,
                      // spreadRadius: 2
                    ),
                  ],
                  border: Border.all(width: 1,color: Color(0xffB5B3DC)),
                  gradient: LinearGradient(
                      colors: [
                        Color(0xffDD9FD5),
                        Color(0xff9180C4)
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter
                  )
              ),
              child: Center(
                child: Text('ابدأ',
                  style: TextStyle(color: Color(0xff685687),fontWeight: FontWeight.w400,
                    fontSize:MediaQuery.of(context).size.width*.03,
                  )
                  ,),
              ),
            ),
          )
        ],
      ),
    );
  }
}