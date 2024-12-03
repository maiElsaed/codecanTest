import 'package:flutter/material.dart';

//import 'firstquestionunderstand.dart';
//import 'forgetinformation2.dart';
class AnswerInformation1Class extends StatefulWidget {
  State<AnswerInformation1Class> createState() => _pg();
}

class _pg extends State<AnswerInformation1Class> {
  @override
  var v;
  Widget build(BuildContext buildcontext) {
    var st = ModalRoute.of(context)!.settings.arguments;
    // var nextpages;
    if (st != null) {
      v = st;
      // nextpages=v["nextpage"];
    }
    return SafeArea(
        child: Material(
    //         child: Container(
    //           width: double.infinity,
    //           height: double.infinity,
    //           decoration: BoxDecoration(
    //           image: DecorationImage(
    //          fit: BoxFit.fill,
    //          image: AssetImage('images/informationvoicebg.jpg'),
    //             )
    //         ),
    //         child: Column(
    //           children: [
    //             SizedBox(
    //              height:MediaQuery.of(context).size.height*.25,
    //             ),
    //           GestureDetector(
    //             onTap: () {},
    //             child: Image(
    //             image: AssetImage('images/vocublary7.png'),
    //             width: MediaQuery.of(context).size.width*.4,
    //             height: MediaQuery.of(context).size.height*.15,
    //            ),
    //           ),
    //          GestureDetector(
    //            onTap: () {
    //             Navigator.of(context).pushNamed(v["nextpage"]);
    //           },
    //         child: Container(
    //           margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*.05, left: 5),
    //           width: MediaQuery.of(context).size.width*.4,
    //           height: 50,
    //           decoration: BoxDecoration(
    //               color: Color(0xffE8AA9A),
    //               borderRadius: BorderRadius.circular(
    //                 31,
    //               ),
    //               boxShadow: [
    //                 BoxShadow(
    //                   color: Color(0xff000000),
    //                   offset: Offset(0, 3),
    //                   blurRadius: 4,
    //                   // spreadRadius: 2
    //                 ),
    //               ],
    //               border: Border.all(width: 0.5, color: Color(0xffFFFFFF)),
    //               gradient: LinearGradient(
    //                   colors: [Color(0xffFFBFAD), Color(0xffEF5124)],
    //                   begin: Alignment.topCenter,
    //                   end: Alignment.bottomCenter)),
    //           child: Center(
    //             child: Text(
    //               'ارسال',
    //               style: TextStyle(
    //                   color: Color(0xff35333D),
    //                   fontWeight: FontWeight.w400,
    //                   fontSize: MediaQuery.of(context).size.width*.07),
    //             ),
    //           ),
    //         ),
    //       )
    //     ],
    //   ),
    // )
          child: OrientationBuilder(
            builder: (context, orientation) {
              return orientation==Orientation.portrait
                  ?_Layoutportrate()
                  :_Layoutlandscape();
            },
          ),
        )
    );
  }
  Widget _Layoutportrate(){
    return Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                  image: DecorationImage(
                 fit: BoxFit.fill,
                 image: AssetImage('images/informationvoicebg.jpg'),
                    )
                ),
                child: Column(
                  children: [
                    SizedBox(
                     height:MediaQuery.of(context).size.height*.33,
                    ),
                  GestureDetector(
                    onTap: () {},
                    child: Image(
                    image: AssetImage('images/vocublary7.png'),
                    width: MediaQuery.of(context).size.width*.4,
                    height: MediaQuery.of(context).size.height*.15,
                   ),
                  ),
                 GestureDetector(
                   onTap: () {
                    Navigator.of(context).pushNamed(v["nextpage"]);
                  },
                child: Container(
                  margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*.05, left: 5),
                  width: MediaQuery.of(context).size.width*.4,
                  height: MediaQuery.of(context).size.height*.07,
                  decoration: BoxDecoration(
                      color: Color(0xffE8AA9A),
                      borderRadius: BorderRadius.circular(
                        31,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xff000000),
                          offset: Offset(0, 3),
                          blurRadius: 4,
                          // spreadRadius: 2
                        ),
                      ],
                      border: Border.all(width: 0.5, color: Color(0xffFFFFFF)),
                      gradient: LinearGradient(
                          colors: [Color(0xffFFBFAD), Color(0xffEF5124)],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter)),
                  child: Center(
                    child: Text(
                      'ارسال',
                      style: TextStyle(
                          color: Color(0xff35333D),
                          fontWeight: FontWeight.w400,
                          fontSize: MediaQuery.of(context).size.width*.07),
                    ),
                  ),
                ),
              )
            ],
          ),
        );
  }
  Widget _Layoutlandscape(){
    return  Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                  image: DecorationImage(
                 fit: BoxFit.fill,
                 image: AssetImage('images/informationvoicebg.jpg'),
                    )
                ),
                child: Column(
                  children: [
                    SizedBox(
                     height:MediaQuery.of(context).size.height*.25,
                    ),
                  GestureDetector(
                    onTap: () {},
                    child: Image(
                    image: AssetImage('images/vocublary7.png'),
                    width: MediaQuery.of(context).size.width*.4,
                    height: MediaQuery.of(context).size.height*.15,
                   ),
                  ),
                 GestureDetector(
                   onTap: () {
                    Navigator.of(context).pushNamed(v["nextpage"]);
                  },
                child: Container(
                  margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*.05, left: 5),
                  width: MediaQuery.of(context).size.width*.19,
                  height: MediaQuery.of(context).size.height*.1,
                  decoration: BoxDecoration(
                      color: Color(0xffE8AA9A),
                      borderRadius: BorderRadius.circular(
                        31,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xff000000),
                          offset: Offset(0, 3),
                          blurRadius: 4,
                          // spreadRadius: 2
                        ),
                      ],
                      border: Border.all(width: 0.5, color: Color(0xffFFFFFF)),
                      gradient: LinearGradient(
                          colors: [Color(0xffFFBFAD), Color(0xffEF5124)],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter)),
                  child: Center(
                    child: Text(
                      'ارسال',
                      style: TextStyle(
                          color: Color(0xff35333D),
                          fontWeight: FontWeight.w400,
                          fontSize: MediaQuery.of(context).size.width*.03),
                    ),
                  ),
                ),
              )
            ],
          ),
        );
  }
}
