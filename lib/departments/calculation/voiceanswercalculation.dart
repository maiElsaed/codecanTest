import 'package:flutter/material.dart';

//import 'firstquestionunderstand.dart';
//import 'forgetinformation2.dart';
class VoiceAnswerCalculation extends StatefulWidget {
  State<VoiceAnswerCalculation> createState() => _pg();
}

class _pg extends State<VoiceAnswerCalculation> {
  @override
  Widget build(BuildContext buildcontext) {
    var st = ModalRoute.of(context)!.settings.arguments;
    var v;
    // var nextpages;
    if (st != null) {
      v = st;
      // nextpages=v["nextpage"];
    }
    return SafeArea(
        child: Material(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('images/calculationanswer.png'),
                  )),
              child: Column(
                children: [
                  SizedBox(
                    height: 140,
                  ),
                  SizedBox(
                    height: 150,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Image(
                      image: AssetImage('images/mic.png'),
                      width: 110,
                      height: 110,
                    ),
                  ),
                  //Image.asset('images/vocublary7.png',width: 110,height: 110,),

                  GestureDetector(
                    onTap: () {
                      //  Navigator.of(context).push(MaterialPageRoute(builder: (v){
                      //   return ForgetInformation2Class();
                      //    //Information3ForgetClass();
                      //  }
                      // ),
                      //  );
                      Navigator.of(context).pushNamed(v["nextpage"]);
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 200, left: 5),
                      width: 140,
                      height: 50,
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
                              fontSize: 30),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
        )
    );
  }
}
