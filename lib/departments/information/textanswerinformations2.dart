import 'package:flutter/material.dart';
import 'package:codecansecond/logicoperation/sqlflite2.dart';
import 'package:codecansecond/logicoperation/childdegreefromapps.dart';
//import 'page40vocublary.dart';
//import 'page3informations.dart';
//import 'forgetinformation2.dart';
import 'page22informationss.dart';
class TextAnswer1 extends StatefulWidget{
  State<TextAnswer1>createState()=> _pg();
}
class _pg extends State<TextAnswer1> {
  var variable;
  var v;
  SqlDb sqldb=SqlDb();
 // late int degree;
  @override
  void initState(){
    variable="";
  }
  @override
  Widget build(BuildContext buildcontext) {
    var st =ModalRoute.of(context)!.settings.arguments;

    // var nextpages;
    if(st != null){
      v=st;
    }
    return SafeArea(
        child: Material(
          child: OrientationBuilder(
            builder: (context, orientation) {
              return orientation==Orientation.portrait
                  ?_PortrateLayout()
                  :_LandScabeLayout();
            },
          ),
         )
          );
  }
  Widget _PortrateLayout(){
    return  Container(
        decoration: BoxDecoration(
        image: DecorationImage(
        fit: BoxFit.fill,
        image: AssetImage('images/information3.png')
        )
      ),
    child: Column(
      children: [
        SizedBox(height:MediaQuery.of(context).size.height*.23),
        Container(
          width: MediaQuery.of(context).size.width*.45,
          height: MediaQuery.of(context).size.height*.07,
          decoration: BoxDecoration(
            color: Color(0xffFEE6DE),
            border: Border.all(color: Color(0xffF16A44),width: 1),
            boxShadow: [
              BoxShadow(
                color: Color(0xffF16A44),
                offset: Offset(0,1),
                blurRadius: 1,
                // spreadRadius: 2
              ),
            ],
          ),
          child: Center(
            child: Text(variable,style: TextStyle(fontSize:MediaQuery.of(context).size.width*.05)),
          ),
        ),
        SizedBox(height:MediaQuery.of(context).size.height*.02,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: (){
                setState(() {
                  variable=variable+'1';
                });
              },
              child:  Container(
                width:MediaQuery.of(context).size.width*.16,
                height: MediaQuery.of(context).size.height*.075,
               // margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*.25),
                decoration: BoxDecoration(
                  color: Color(0xffFFD6C8),
                  borderRadius: BorderRadius.circular(15,),
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: Color(0xff542C3A),
                  //     offset: Offset(0,2),
                  //     blurRadius: 1,
                  //     // spreadRadius: 2
                  //   ),
                  // ],
                  border: Border.all(width: 1 ,color: Color(0xffF16A44)),
                ),
                child: Center(
                  child: Text(
                    '1',
                    style: TextStyle(
                      color: Color(0xff542C3A),
                      fontSize: MediaQuery.of(context).size.width*.09,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
           // SizedBox(height: 30,),
            GestureDetector(
              onTap: (){
                setState(() {
                  variable=variable+'2';
                });
              },
              child:  Container(
                width:MediaQuery.of(context).size.width*.16,
                height: MediaQuery.of(context).size.height*.075,
                margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*.05),
                decoration: BoxDecoration(
                  color: Color(0xffFFD6C8),
                  borderRadius: BorderRadius.circular(15,),

                  border: Border.all(width: 1 ,color: Color(0xffF16A44)),
                ),
                child: Center(
                  child: Text(
                    '2',
                    style: TextStyle(
                      color: Color(0xff542C3A),
                      fontSize: MediaQuery.of(context).size.width*.09,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
          //  SizedBox(height: 30,),
            GestureDetector(
              onTap: (){
                setState(() {
                  variable=variable+'3';
                });
              },
              child:  Container(
                width:MediaQuery.of(context).size.width*.16,
                height: MediaQuery.of(context).size.height*.075,
                margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*.05),
                decoration: BoxDecoration(
                  color: Color(0xffFFD6C8),
                  borderRadius: BorderRadius.circular(15,),

                  border: Border.all(width: 1 ,color: Color(0xffF16A44)),
                ),
                child: Center(
                  child: Text(
                    '3',
                    style: TextStyle(
                      color: Color(0xff542C3A),
                      fontSize: MediaQuery.of(context).size.width*.09,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: MediaQuery.of(context).size.height*.01,),
        Row(
           mainAxisAlignment: MainAxisAlignment.center,
          children: [

            GestureDetector(
              onTap: (){
                setState(() {
                  variable=variable+'4';
                });
              },
              child:  Container(
                width:MediaQuery.of(context).size.width*.16,
                height: MediaQuery.of(context).size.height*.075,
                //margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*.25),
                decoration: BoxDecoration(
                  color: Color(0xffFFD6C8),
                  borderRadius: BorderRadius.circular(15,),
                  border: Border.all(width: 1 ,color: Color(0xffF16A44)),
                ),
                child: Center(
                  child: Text(
                    '4',
                    style: TextStyle(
                      color: Color(0xff542C3A),
                      fontSize: MediaQuery.of(context).size.width*.09,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
            // SizedBox(height: 30,),
            GestureDetector(
              onTap: (){
                setState(() {
                  variable=variable+'5';
                });
              },
              child:  Container(
                width:MediaQuery.of(context).size.width*.16,
                height: MediaQuery.of(context).size.height*.075,
                margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*.05),
                decoration: BoxDecoration(
                  color: Color(0xffFFD6C8),
                  borderRadius: BorderRadius.circular(15,),
                  border: Border.all(width: 1 ,color: Color(0xffF16A44)),
                ),
                child: Center(
                  child: Text(
                    '5',
                    style: TextStyle(
                      color: Color(0xff542C3A),
                      fontSize:MediaQuery.of(context).size.width*.09,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
            //  SizedBox(height: 30,),
            GestureDetector(
              onTap: (){
                setState(() {
                  variable=variable+'6';
                });
              },
              child:  Container(
                width:MediaQuery.of(context).size.width*.16,
                height: MediaQuery.of(context).size.height*.075,
                margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*.05),
                decoration: BoxDecoration(
                  color: Color(0xffFFD6C8),
                  borderRadius: BorderRadius.circular(15,),

                  border: Border.all(width: 1 ,color: Color(0xffF16A44)),
                ),
                child: Center(
                  child: Text(
                    '6',
                    style: TextStyle(
                      color: Color(0xff542C3A),
                      fontSize: MediaQuery.of(context).size.width*.09,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height:MediaQuery.of(context).size.height*.01,),
        Row(
           mainAxisAlignment: MainAxisAlignment.center,
          children: [

            GestureDetector(
              onTap: (){
                setState(() {
                  variable=variable+'7';
                });
              },
              child:  Container(
                width:MediaQuery.of(context).size.width*.16,
                height: MediaQuery.of(context).size.height*.075,
                //margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*.25),
                decoration: BoxDecoration(
                  color: Color(0xffFFD6C8),
                  borderRadius: BorderRadius.circular(15,),
                  border: Border.all(width: 1 ,color: Color(0xffF16A44)),
                ),
                child: Center(
                  child: Text(
                    '7',
                    style: TextStyle(
                      color: Color(0xff542C3A),
                      fontSize: MediaQuery.of(context).size.width*.09,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
            // SizedBox(height: 30,),
            GestureDetector(
              onTap: (){
                setState(() {
                  variable=variable+'8';
                });
              },
              child:  Container(
                width:MediaQuery.of(context).size.width*.16,
                height: MediaQuery.of(context).size.height*.075,
                margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*.05),
                decoration: BoxDecoration(
                  color: Color(0xffFFD6C8),
                  borderRadius: BorderRadius.circular(15,),

                  border: Border.all(width: 1 ,color: Color(0xffF16A44)),
                ),
                child: Center(
                  child: Text(
                    '8',
                    style: TextStyle(
                      color: Color(0xff542C3A),
                      fontSize: MediaQuery.of(context).size.width*.09,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
            //  SizedBox(height: 30,),
            GestureDetector(
              onTap: (){
                setState(() {
                  variable=variable+'9';
                });
              },
              child:  Container(
                width:MediaQuery.of(context).size.width*.16,
                height: MediaQuery.of(context).size.height*.075,
                margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*.05),
                decoration: BoxDecoration(
                  color: Color(0xffFFD6C8),
                  borderRadius: BorderRadius.circular(15,),
                  border: Border.all(width: 1 ,color: Color(0xffF16A44)),
                ),
                child: Center(
                  child: Text(
                    '9',
                    style: TextStyle(
                      color: Color(0xff542C3A),
                      fontSize: MediaQuery.of(context).size.width*.09,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height:MediaQuery.of(context).size.height*.01,),
        Row(
           mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: (){
                setState(() {
                  variable=variable+'.';
                });
              },
              child:  Container(
                width:MediaQuery.of(context).size.width*.16,
                height: MediaQuery.of(context).size.height*.075,
                //margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*.25),
                decoration: BoxDecoration(
                  color: Color(0xffFFD6C8),
                  borderRadius: BorderRadius.circular(15,),
                  border: Border.all(width: 1 ,color: Color(0xffF16A44)),
                ),
                child: Center(
                  child: Text(
                    '.',
                    style: TextStyle(
                      color: Color(0xff542C3A),
                      fontSize: MediaQuery.of(context).size.width*.09,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
            // SizedBox(height: 30,),
            GestureDetector(
              onTap: (){
                setState(() {
                  variable=variable+'0';
                });
              },
              child:  Container(
                width:MediaQuery.of(context).size.width*.16,
                height: MediaQuery.of(context).size.height*.075,
                margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*.05),
                decoration: BoxDecoration(
                  color: Color(0xffFFD6C8),
                  borderRadius: BorderRadius.circular(15,),
                  border: Border.all(width: 1 ,color: Color(0xffF16A44)),
                ),
                child: Center(
                  child: Text(
                    '0',
                    style: TextStyle(
                      color: Color(0xff542C3A),
                      fontSize: MediaQuery.of(context).size.width*.09,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
            //  SizedBox(height: 30,),
            GestureDetector(
              onTap: (){
                setState(() {
                  String x=variable.toString();
                  if (x != null && x.length > 0) {
                    x = x.substring(0, x.length - 1);
                  }
                  variable=x;
                });
              },
              child:  Container(
                width:MediaQuery.of(context).size.width*.16,
                height: MediaQuery.of(context).size.height*.075,
                margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*.05),
                decoration: BoxDecoration(
                  color: Color(0xffFFD6C8),
                  borderRadius: BorderRadius.circular(15,),
                  border: Border.all(width: 1 ,color: Color(0xffF16A44)),
                ),
                child: Center(
                  child: Text(
                    'x',
                    style: TextStyle(
                      color: Color(0xff542C3A),
                      fontSize: MediaQuery.of(context).size.width*.09,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        GestureDetector(
          onTap: (){
            // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            //   return ForgetInformation2Class();
            // },));
            //Navigator.of(context).pushNamed(v["nextpage"]);

              print("degree calculationmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm");
              print(CalculationFromApp.InformationDegree);

              int x=v["grade"];
              if(variable==v["answer"]){
                CalculationFromApp.InformationDegree+=x;
              }
              print("degree calculationmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm");
              print(CalculationFromApp.InformationDegree);
              // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              //   return  Information22Class();
              // },));
              Navigator.of(context).pushNamed(v["nextpage"]);

            print("degree calculationmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm");
            print(CalculationFromApp.InformationDegree);

            int y=v["grade"];
            if(variable==v["answer"]){
              CalculationFromApp.InformationDegree+=y;
            }
            print("degree calculationmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm");
            print(CalculationFromApp.InformationDegree);
            // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            //   return  Information22Class();
            // },));
            Navigator.of(context).pushNamed(v["nextpage"]);
          },
          child:  Container(
            width: MediaQuery.of(context).size.width*.4,
            height: MediaQuery.of(context).size.height*.08,
            margin: EdgeInsets.only(left:MediaQuery.of(context).size.width*.0,top: MediaQuery.of(context).size.height*.01,),

            decoration: BoxDecoration(
              color: Color(0xffFFD6C8),
              borderRadius: BorderRadius.circular(15,),

              border: Border.all(width: 1 ,color: Color(0xffF16A44)),
            ),
            child: Center(
              child: Text(
                'ارسال',
                style: TextStyle(
                  color: Color(0xff542C3A),
                  fontSize: 35,
                  fontWeight: FontWeight.w400,
                ),
              ),

            ),
          ),
        ),
      ],

    )
    );
  }
  Widget _LandScabeLayout(){
    return  Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('images/information3.png')
            )
        ),
        child: Column(
          children: [
            SizedBox(height:MediaQuery.of(context).size.height*.2),
            Container(
              width: MediaQuery.of(context).size.width*.2,
              height: MediaQuery.of(context).size.height*.07,
              decoration: BoxDecoration(
                color: Color(0xffFEE6DE),
                border: Border.all(color: Color(0xffF16A44),width: 1),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xffF16A44),
                    offset: Offset(0,1),
                    blurRadius: 1,
                    // spreadRadius: 2
                  ),
                ],
              ),
              child: Center(
                child: Text(variable,style: TextStyle(fontSize:MediaQuery.of(context).size.width*.02)),
              ),
            ),
            SizedBox(height:MediaQuery.of(context).size.height*.01,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (){
                    setState(() {
                      variable=variable+'1';
                    });
                  },
                  child:  Container(
                    width:MediaQuery.of(context).size.width*.16,
                    height: MediaQuery.of(context).size.height*.075,
                    // margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*.25),
                    decoration: BoxDecoration(
                      color: Color(0xffFFD6C8),
                      borderRadius: BorderRadius.circular(15,),
                      // boxShadow: [
                      //   BoxShadow(
                      //     color: Color(0xff542C3A),
                      //     offset: Offset(0,2),
                      //     blurRadius: 1,
                      //     // spreadRadius: 2
                      //   ),
                      // ],
                      border: Border.all(width: 1 ,color: Color(0xffF16A44)),
                    ),
                    child: Center(
                      child: Text(
                        '1',
                        style: TextStyle(
                          color: Color(0xff542C3A),
                          fontSize: MediaQuery.of(context).size.width*.02,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
                // SizedBox(height: 30,),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      variable=variable+'2';
                    });
                  },
                  child:  Container(
                    width:MediaQuery.of(context).size.width*.16,
                    height: MediaQuery.of(context).size.height*.075,
                    margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*.05),
                    decoration: BoxDecoration(
                      color: Color(0xffFFD6C8),
                      borderRadius: BorderRadius.circular(15,),

                      border: Border.all(width: 1 ,color: Color(0xffF16A44)),
                    ),
                    child: Center(
                      child: Text(
                        '2',
                        style: TextStyle(
                          color: Color(0xff542C3A),
                          fontSize: MediaQuery.of(context).size.width*.02,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
                //  SizedBox(height: 30,),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      variable=variable+'3';
                    });
                  },
                  child:  Container(
                    width:MediaQuery.of(context).size.width*.16,
                    height: MediaQuery.of(context).size.height*.075,
                    margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*.05),
                    decoration: BoxDecoration(
                      color: Color(0xffFFD6C8),
                      borderRadius: BorderRadius.circular(15,),

                      border: Border.all(width: 1 ,color: Color(0xffF16A44)),
                    ),
                    child: Center(
                      child: Text(
                        '3',
                        style: TextStyle(
                          color: Color(0xff542C3A),
                          fontSize: MediaQuery.of(context).size.width*.02,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height*.01,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                GestureDetector(
                  onTap: (){
                    setState(() {
                      variable=variable+'4';
                    });
                  },
                  child:  Container(
                    width:MediaQuery.of(context).size.width*.16,
                    height: MediaQuery.of(context).size.height*.075,
                    //margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*.25),
                    decoration: BoxDecoration(
                      color: Color(0xffFFD6C8),
                      borderRadius: BorderRadius.circular(15,),
                      border: Border.all(width: 1 ,color: Color(0xffF16A44)),
                    ),
                    child: Center(
                      child: Text(
                        '4',
                        style: TextStyle(
                          color: Color(0xff542C3A),
                          fontSize: MediaQuery.of(context).size.width*.02,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
                // SizedBox(height: 30,),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      variable=variable+'5';
                    });
                  },
                  child:  Container(
                    width:MediaQuery.of(context).size.width*.16,
                    height: MediaQuery.of(context).size.height*.075,
                    margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*.05),
                    decoration: BoxDecoration(
                      color: Color(0xffFFD6C8),
                      borderRadius: BorderRadius.circular(15,),
                      border: Border.all(width: 1 ,color: Color(0xffF16A44)),
                    ),
                    child: Center(
                      child: Text(
                        '5',
                        style: TextStyle(
                          color: Color(0xff542C3A),
                          fontSize:MediaQuery.of(context).size.width*.02,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
                //  SizedBox(height: 30,),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      variable=variable+'6';
                    });
                  },
                  child:  Container(
                    width:MediaQuery.of(context).size.width*.16,
                    height: MediaQuery.of(context).size.height*.075,
                    margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*.05),
                    decoration: BoxDecoration(
                      color: Color(0xffFFD6C8),
                      borderRadius: BorderRadius.circular(15,),

                      border: Border.all(width: 1 ,color: Color(0xffF16A44)),
                    ),
                    child: Center(
                      child: Text(
                        '6',
                        style: TextStyle(
                          color: Color(0xff542C3A),
                          fontSize: MediaQuery.of(context).size.width*.02,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height:MediaQuery.of(context).size.height*.01,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                GestureDetector(
                  onTap: (){
                    setState(() {
                      variable=variable+'7';
                    });
                  },
                  child:  Container(
                    width:MediaQuery.of(context).size.width*.16,
                    height: MediaQuery.of(context).size.height*.075,
                    //margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*.25),
                    decoration: BoxDecoration(
                      color: Color(0xffFFD6C8),
                      borderRadius: BorderRadius.circular(15,),
                      border: Border.all(width: 1 ,color: Color(0xffF16A44)),
                    ),
                    child: Center(
                      child: Text(
                        '7',
                        style: TextStyle(
                          color: Color(0xff542C3A),
                          fontSize: MediaQuery.of(context).size.width*.02,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
                // SizedBox(height: 30,),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      variable=variable+'8';
                    });
                  },
                  child:  Container(
                    width:MediaQuery.of(context).size.width*.16,
                    height: MediaQuery.of(context).size.height*.075,
                    margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*.05),
                    decoration: BoxDecoration(
                      color: Color(0xffFFD6C8),
                      borderRadius: BorderRadius.circular(15,),

                      border: Border.all(width: 1 ,color: Color(0xffF16A44)),
                    ),
                    child: Center(
                      child: Text(
                        '8',
                        style: TextStyle(
                          color: Color(0xff542C3A),
                          fontSize: MediaQuery.of(context).size.width*.02,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
                //  SizedBox(height: 30,),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      variable=variable+'9';
                    });
                  },
                  child:  Container(
                    width:MediaQuery.of(context).size.width*.16,
                    height: MediaQuery.of(context).size.height*.075,
                    margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*.05),
                    decoration: BoxDecoration(
                      color: Color(0xffFFD6C8),
                      borderRadius: BorderRadius.circular(15,),
                      border: Border.all(width: 1 ,color: Color(0xffF16A44)),
                    ),
                    child: Center(
                      child: Text(
                        '9',
                        style: TextStyle(
                          color: Color(0xff542C3A),
                          fontSize: MediaQuery.of(context).size.width*.02,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height:MediaQuery.of(context).size.height*.01,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (){
                    setState(() {
                      variable=variable+'.';
                    });
                  },
                  child:  Container(
                    width:MediaQuery.of(context).size.width*.16,
                    height: MediaQuery.of(context).size.height*.075,
                    //margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*.25),
                    decoration: BoxDecoration(
                      color: Color(0xffFFD6C8),
                      borderRadius: BorderRadius.circular(15,),
                      border: Border.all(width: 1 ,color: Color(0xffF16A44)),
                    ),
                    child: Center(
                      child: Text(
                        '.',
                        style: TextStyle(
                          color: Color(0xff542C3A),
                          fontSize: MediaQuery.of(context).size.width*.02,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
                // SizedBox(height: 30,),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      variable=variable+'0';
                    });
                  },
                  child:  Container(
                    width:MediaQuery.of(context).size.width*.16,
                    height: MediaQuery.of(context).size.height*.075,
                    margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*.05),
                    decoration: BoxDecoration(
                      color: Color(0xffFFD6C8),
                      borderRadius: BorderRadius.circular(15,),
                      border: Border.all(width: 1 ,color: Color(0xffF16A44)),
                    ),
                    child: Center(
                      child: Text(
                        '0',
                        style: TextStyle(
                          color: Color(0xff542C3A),
                          fontSize: MediaQuery.of(context).size.width*.02,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
                //  SizedBox(height: 30,),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      String x=variable.toString();
                      if (x != null && x.length > 0) {
                        x = x.substring(0, x.length - 1);
                      }
                      variable=x;
                    });
                  },
                  child:  Container(
                    width:MediaQuery.of(context).size.width*.16,
                    height: MediaQuery.of(context).size.height*.075,
                    margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*.05),
                    decoration: BoxDecoration(
                      color: Color(0xffFFD6C8),
                      borderRadius: BorderRadius.circular(15,),
                      border: Border.all(width: 1 ,color: Color(0xffF16A44)),
                    ),
                    child: Center(
                      child: Text(
                        'x',
                        style: TextStyle(
                          color: Color(0xff542C3A),
                          fontSize: MediaQuery.of(context).size.width*.02,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: (){
                // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                //   return ForgetInformation2Class();
                // },));

                  print("degree calculationmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm");
                  print(CalculationFromApp.InformationDegree);
                  int x=v["grade"];
                  if(variable==v["answer"]){
                    CalculationFromApp.InformationDegree+=x;
                  }
                  print("degree calculationmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm");
                  print(CalculationFromApp.InformationDegree);
                  // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  //   return  Information22Class();
                  // },));
                  print(v["nextpage"]);
                  Navigator.of(context).pushNamed(v["nextpage"]);

              },
              child:  Container(
                width: MediaQuery.of(context).size.width*.2,
                height: MediaQuery.of(context).size.height*.1,
                margin: EdgeInsets.only(left:MediaQuery.of(context).size.height*.1,top: MediaQuery.of(context).size.height*.01,),
                decoration: BoxDecoration(
                  color: Color(0xffFFD6C8),
                  borderRadius: BorderRadius.circular(15,),

                  border: Border.all(width: 1 ,color: Color(0xffF16A44)),
                ),
                child: Center(
                  child: Text(
                    'ارسال',
                    style: TextStyle(
                      color: Color(0xff542C3A),
                      fontSize: MediaQuery.of(context).size.width*.03,
                      fontWeight: FontWeight.w400,
                    ),
                  ),

                ),
              ),
            ),
          ],
        )
    );
  }
}