import 'package:flutter/material.dart';
//import 'answercalculation1.dart';
import 'package:codecansecond/departments/calculation/page2calculation.dart';
import 'package:codecansecond/logicoperation/voice.dart';

import 'package:codecansecond/departments/vocabulary/firstvocubalary.dart';
import 'package:codecansecond/logicoperation/sqlflite2.dart';

class Calculation1Class extends StatefulWidget {
  State<Calculation1Class> createState() => _pg();
}

class _pg extends State<Calculation1Class> {
  Reader obg = Reader();
  SqlDb sql = SqlDb();
  late List<Map> question;
  static int counters = 1;
  static int imageCounter = 0;
  static late int grade;
  static late String answer;
  static var questionDisplay = "ما عدد هذه المكعبات";
  List ImagePath = [
    'images/cup.png',
    'images/orange.png',
    'images/hand.png',
    'images/hand.png',
    'images/cake.png',
    'images/pen.png',
    'images/redorange.png',
    'images/thinkmen.png',
    'images/bag.png',
    'images/bagmony.png',
    'images/thinkmen.png',
    'images/thinkmen.png',
    ""
  ];
  @override
  void initState() {
    super.initState();
    operationMethod();
  }

  @override
  Widget build(BuildContext buildcontext) {
    return SafeArea(
        child: Material(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage('images/calculation.png'))),
        child: OrientationBuilder(
          builder: (context, orientation) {
            return orientation == Orientation.portrait
                ? _buildPortraitLayout()
                : _buildLandscapeLayout();
          },
        ),
      ),
    ));
  }

  Widget _buildPortraitLayout() {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * .1,
        ),
        Image.asset(
          ImagePath[imageCounter],
          height: MediaQuery.of(context).size.height * .2,
          width: MediaQuery.of(context).size.width * .7,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .05,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
                child: Padding(
              padding: EdgeInsets.only(left: 4, right: 4),
              child: Text(
                questionDisplay,
                style: TextStyle(
                    fontSize: counters == 14
                        ? MediaQuery.of(context).size.width * .06
                        : MediaQuery.of(context).size.width * .07,
                    color: Color(0xff725058)),
                textAlign: TextAlign.center,
              ),
            )),
          ],
        ),
        GestureDetector(
            onTap: () async {
              // print("mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm");
              obg.speak(questionDisplay);
            },
            child: Container(
              width: MediaQuery.of(context).size.width * .6,
              height: MediaQuery.of(context).size.height * .1,
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * .07,
              ),
              padding: EdgeInsets.all(1),
              child: Image(
                  image: AssetImage(
                'images/listencal.png',
              )),
            )),
        SizedBox(
          height: MediaQuery.of(context).size.height * .05,
        ),
        GestureDetector(
          onTap: () async {
            setState(
              () {
                counters += 1;
                imageCounter += 1;
              },
            );
            if (counters > 11) {
              Navigator.of(context).pushNamed("TextAnswerCalculation",
                  arguments: {
                    "nextpage": "Calculation2Class",
                    "grade": grade,
                    "answer": answer
                  });
            } else {
              Navigator.of(context).pushNamed("TextAnswerCalculation",
                  arguments: {
                    "nextpage": "Calculation1Class",
                    "grade": grade,
                    "answer": answer
                  });
            }
          },
          child: Container(
            width: MediaQuery.of(context).size.width * .4,
            height: MediaQuery.of(context).size.width * .15,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xffDD9FD5),
                    Color(0xff8DCEF6),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.circular(
                  31,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xff252033),
                    offset: Offset(0, 4),
                    blurRadius: 4,
                  )
                ],
                border: Border.all(color: Color(0xff3C5E80), width: 2)),
            child: Center(
              child: Text(
                'الاجابة',
                style: TextStyle(
                  color: Color(0xff745C9C),
                  fontSize: MediaQuery.of(context).size.width * .09,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _buildLandscapeLayout() {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * .05,
        ),
        Container(
          width: MediaQuery.of(context).size.width * .2,
          height: MediaQuery.of(context).size.height * .09,
          decoration: BoxDecoration(
              color: Color(0xffDDEAF8),
              borderRadius: BorderRadius.circular(
                31,
              ),
              boxShadow: [
                BoxShadow(
                  color: Color(0xff9CC7F2),
                  offset: Offset(0, 5),
                  blurRadius: 4,
                  // spreadRadius: 2
                ),
              ],
              border: Border.all(width: 3, color: Color(0xffBEB1E2))),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .05,
        ),
        Image.asset(
          ImagePath[imageCounter],
          height: MediaQuery.of(context).size.height * .25,
          width: MediaQuery.of(context).size.width * .8,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .05,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
                child: Padding(
              padding: EdgeInsets.only(left: 4, right: 4),
              child: Text(
                questionDisplay,
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * .02,
                    color: Color(0xff725058)),
                textAlign: TextAlign.center,
              ),
            ),),
          ],
        ),
        GestureDetector(
          onTap: () async {
            print(
                "mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm");
            obg.speak(questionDisplay);
          },
          child: Container(
            width: MediaQuery.of(context).size.width * .15,
            height: MediaQuery.of(context).size.height * .1,
            margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * .05,
            ),
            padding: EdgeInsets.all(1),
            child: Image(
              image: AssetImage(
                'images/listencal.png',
              ),
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .05,
        ),
        GestureDetector(
          onTap: () async {
            setState(
              () {
                counters += 1;
                imageCounter += 1;
              },
            );
            if (counters > 14) {
              Navigator.of(context).pushNamed("ChoiceInformation1", arguments: {
                "nextpage": "FirstVocublary",
                "grade": grade,
                "answer": answer
              });
            } else {
              // List<Map> question=await sql.readData("SELECT grade , answer , question FROM 'questiondata' WHERE department='i' AND id=${counters} ");
              // int grade=question[0]["grade"];
              // String answer=question[0]["answer"];
              // questionDisplay=question[0]["question"];
              // obg.speak(question[0]["question"]);
              Navigator.of(context).pushNamed("ChoiceCalculation", arguments: {
                "nextpage": "Calculation1Class",
                "grade": grade,
                "answer": answer
              });
            }
          },
          child: Container(
            width: MediaQuery.of(context).size.width * .15,
            height: MediaQuery.of(context).size.height * .1,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xffDD9FD5),
                    Color(0xff8DCEF6),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.circular(
                  31,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xff252033),
                    offset: Offset(0, 4),
                    blurRadius: 4,
                  )
                ],
                border: Border.all(color: Color(0xff3C5E80), width: 2)),
            child: Center(
              child: Text(
                'الاجابة',
                style: TextStyle(
                  color: Color(0xff745C9C),
                  fontSize: MediaQuery.of(context).size.width * .03,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }

  void operationMethod() async {
    List<Map> question = await sql.readData(
        "SELECT grade , answer , question FROM 'questiondata' WHERE department='c' AND id=${counters} ");
    setState(() {
      grade = question[0]["grade"];
      answer = question[0]["answer"];
      questionDisplay = question[0]["question"];
    });
    // print("inpage22mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm");
    // print("counters");
    // print(counters);
    print("question$questionDisplay");
    print("grade$grade");
    print("answer$answer");
    // print("finish22mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm");
  }
}
