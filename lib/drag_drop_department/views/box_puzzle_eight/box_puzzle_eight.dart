import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:codecansecond/drag_drop_department/views/box_puzzle_nine/box_puzzle_nine.dart';
import 'package:codecansecond/drag_drop_department/widgets/color_box_container.dart';
import 'package:codecansecond/drag_drop_department/widgets/custom_background_container.dart';
import 'package:codecansecond/drag_drop_department/widgets/custom_button.dart';
import 'package:codecansecond/drag_drop_department/widgets/puzzle_question_container.dart';
import 'package:codecansecond/drag_drop_department/widgets/puzzle_solution_container.dart';
import 'package:codecansecond/logicoperation/childdegreefromapps.dart';
import 'dart:async';

class BoxPuzzleEight extends StatefulWidget {
  const BoxPuzzleEight({super.key});

  @override
  State<BoxPuzzleEight> createState() => _BoxPuzzleEightState();
}

class _BoxPuzzleEightState extends State<BoxPuzzleEight> {
  int _minute = 00;
  int _second = 0;
  int _counter = 0;
  Timer? _timer;
  static int gridNumber = 9;
  List<bool> checked = List.filled(gridNumber, false);
  List<AssetImage?> images = List<AssetImage?>.filled(gridNumber, null);
  List<String> correctIndex = [
    'images/red_and_white1.png',
    'images/red_box.png',
    'images/red_and_white2.png',
    'images/white_box.png',
    'images/red_box.png',
    'images/white_box.png',
    'images/red_and_white4.png',
    'images/red_box.png',
    'images/red_and_white3.png',
  ];
  void initState() {
    super.initState();
    // Start the timer when the widget is initialized
    _startTimer();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomBackgroundContainer(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .05,
            ),
            Container(
                width: MediaQuery.of(context).size.width * .3,
                height: MediaQuery.of(context).size.height * .05,
                decoration: BoxDecoration(
                  // color: Color(0xffFCAD75).withOpacity(.7),
                  gradient: LinearGradient(
                      colors: [Color(0xffFFD0A7), Color(0xffFCAD75)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter),
                  borderRadius: BorderRadius.circular(
                    31,
                  ),

                  border: Border.all(width: 1, color: Color(0xffA74300)),
                ),
                child: Center(
                    child: Text(
                      "$_minute : $_second",
                      style: TextStyle(fontSize: 20, color: Color(0xffEFEAFF)),
                    ))),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * .04,
            ),
            Row(
              children: [
                const Expanded(
                  child: PuzzleQuestionContainer(
                    imagePath: 'images/box_puzzle8.png',
                    title: 'البطاقه (5)',
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: PuzzleSolutionContainer(
                    gridCount: gridNumber,
                    checked: checked,
                    correctIndex: correctIndex,
                    images: images,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            const ColorBoxContainer(),
            const SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: () {
                if (checked.contains(false)) {
                  setState(() {
                    CalculationFromApp.BlockDesign+=0;
                  });
                } else {
                  setState(() {
                    CalculationFromApp.BlockDesign += 4;
                  });
                }
                print("box 8${CalculationFromApp.BlockDesign}");
                _timer?.cancel();
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BoxPuzzleNine(),
                    ),
                  );
                  //print(CalculationFromApp.BlockDesign);
              },
              child: Container(

                // padding: EdgeInsets.only(bottom: 5),
                width: MediaQuery.of(context).size.width * .4,
                height: MediaQuery.of(context).size.height * .07,
                decoration: BoxDecoration(
                  color: Color(0xff9A7B66),
                  borderRadius: BorderRadius.circular(
                    31,
                  ),
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: Color(0xff000000),
                  //     offset: Offset(0, 8),
                  //     blurRadius: 4,
                  //     // spreadRadius: 2
                  //   ),
                  // ],
                  border: Border.all(width: 1, color: Color(0xffA74300)),
                  gradient: LinearGradient(
                      colors: [Color(0xffF5EEE8), Color(0xffA74300)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter),
                ),
                child: Center(
                  child: Text(
                    'ارسال',
                    style: TextStyle(
                      color: Color(0xffA74300),
                      fontWeight: FontWeight.w400,
                      fontSize: MediaQuery.of(context).size.width * .08,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
  void _startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
          (Timer timer) => setState(
            () {
          if (_counter < 150) {
            _counter++;
            _second++;
          } else {
            //onTap: () {
            _timer?.cancel();
            if (checked.contains(false)) {
              setState(() {
                CalculationFromApp.ObjectAssembles += 0;
              });
            } else {
              setState(
                    () {
                  CalculationFromApp.ObjectAssembles += 4;
                },
              );
             // print(CalculationFromApp.ObjectAssembles);
            }
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BoxPuzzleNine(),
              ),
            );
          }
         // print(CalculationFromApp.ObjectAssembles);
          if (_second == 60) {
            _minute++;
            _second = 0;
          }
        },
      ),
    );
    // dispose();
  }

  @override
  void dispose() {
    super.dispose();
    _timer?.cancel(); // Cancel the timer when the widget is disposed
  }
}
