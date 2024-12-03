import 'package:flutter/material.dart';
import 'page1calculation.dart';
class CalculationFirst extends StatefulWidget{
  State<CalculationFirst>createState()=> _pg();
}
class _pg extends State<CalculationFirst> {
  @override
  Widget build(BuildContext buildcontext) {
    return SafeArea(
        child: Material(
            child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('images/page1.png')
                    )
                ),
                child: OrientationBuilder(
                  builder: (context, orientation) {
                    return orientation==Orientation.portrait
                        ? _buildPortraitLayout()
                        : _buildLandscapeLayout();
                  },
                ),
                // child:Column(
                //   children: [
                //     GestureDetector(
                //       // onTap: (){
                //       //   Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                //       //     return Calculation1Class();
                //       //   },));
                //       // },
                //       child: Container(
                //         width: 140,
                //         height: 65,
                //         margin: EdgeInsets.only(
                //           top: 520,
                //         ),
                //         decoration: BoxDecoration(
                //             gradient: LinearGradient(
                //               colors: [
                //                 Color(0xffDD9FD5),
                //                 Color(0xff8DCEF6),
                //               ],
                //               begin: Alignment.topCenter,
                //               end: Alignment.bottomCenter,
                //             ),
                //             borderRadius: BorderRadius.circular(31,),
                //             boxShadow: [
                //               BoxShadow(
                //                 color: Color(0xff252033),
                //                 offset: Offset(0,4),
                //                 blurRadius: 4,
                //               )
                //             ],
                //             border: Border.all(color: Color(0xff3C5E80),width: 2)
                //         ),
                //         child: Center(
                //           child: Text(
                //             'ابدأ',
                //             style: TextStyle(
                //               color: Color(0xff745C9C),
                //               fontSize: 30,
                //               fontWeight: FontWeight.w400,
                //             ),
                //           ),
                //         ),
                //       ),
                //     )
                //   ],
                // )

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
                  return Calculation1Class();
                },));
              },
              child: Container(
                width: MediaQuery.of(context).size.width*.35,
                height:MediaQuery.of(context).size.height*.08,
                margin: EdgeInsets.only(
                  top:  MediaQuery.of(context).size.height*.75,
                ),
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
                    'ابدأ',
                    style: TextStyle(
                      color: Color(0xff745C9C),
                      fontSize: MediaQuery.of(context).size.width*.09,
                      fontWeight: FontWeight.w400,
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
              return Calculation1Class();
            },));
          },
          child: Container(
            width: MediaQuery.of(context).size.width*.2,
            height:MediaQuery.of(context).size.height*.1,
            margin: EdgeInsets.only(
              top:  MediaQuery.of(context).size.height*.67,
            ),
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
                'ابدأ',
                style: TextStyle(
                  color: Color(0xff745C9C),
                  fontSize: MediaQuery.of(context).size.width*.03,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}