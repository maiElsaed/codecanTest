import 'package:flutter/material.dart';
import 'page2information.dart';
class Information1Class extends StatefulWidget {
  State<Information1Class> createState() => _pg();
}
class _pg extends State<Information1Class> {
  @override
  Widget build(BuildContext buildcontext) {
    return SafeArea(
        child: Material(
        child: OrientationBuilder(
        builder: (context, orientation) {
        return orientation==Orientation.portrait
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
                    image: AssetImage('images/information1.png'))),
            child: Center(
              child: GestureDetector(
                onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (v){
                  return Information2Class();
                 }
                ));
                //Navigator.of(context).pushNamed('Information2Class');
              },
              child: Container(
                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*.75,),
                width: MediaQuery.of(context).size.width*.4,
                height: MediaQuery.of(context).size.height*.07,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xffFFBFAD),
                        Color(0xffEF5124),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    borderRadius: BorderRadius.circular(
                      31,
                    ),
                    border: Border.all(color: Color(0xffD9411F), width: 2)),
                child: Center(
                  child: Text(
                    'ابدأ',
                    style: TextStyle(
                      color: Color(0xff35333D),
                      fontSize:MediaQuery.of(context).size.width*.09,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            )
           )
        );
  }
  Widget _buildLandscapeLayout(){
    return Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('images/information1.png'))),
            child: Center(
                child: GestureDetector(
              onTap: () {
                 Navigator.of(context).push(MaterialPageRoute(builder: (v){
                  return Information2Class();
                 }
                 ));
                //Navigator.of(context).pushNamed('Information2Class');
              },
              child: Container(
                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*.7,),
                width: MediaQuery.of(context).size.width*.2,
                height: MediaQuery.of(context).size.height*.09,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xffFFBFAD),
                        Color(0xffEF5124),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    borderRadius: BorderRadius.circular(
                      31,
                    ),
                    border: Border.all(color: Color(0xffD9411F), width: 2)),
                child: Center(
                  child: Text(
                    'ابدأ',
                    style: TextStyle(
                      color: Color(0xff35333D),
                      fontSize: MediaQuery.of(context).size.width*.025,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            )
           )
        );
  }
}
