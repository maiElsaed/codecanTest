import 'package:flutter/material.dart';
import 'package:maze/maze.dart';
import 'package:codecansecond/logicoperation/childdegreefromapps.dart';
import 'maze_b.dart';
import 'maze_two.dart';
import 'dart:async';

class MazeScreenA extends StatefulWidget {
  const MazeScreenA({super.key});

  @override
  State<MazeScreenA> createState() => _MazeScreenOneState();
}

class _MazeScreenOneState extends State<MazeScreenA> {
  int _minute = 00;
  int _second=0;
  int _counter=0;
  Timer? _timer;
  bool flag=false;
  // void initState() {
  //   super.initState();
  //   // Start the timer when the widget is initialized
  //   _startTimer();
  // }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                'images/mazze.png',
              ),
            ),
          ),
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height*.03,),
              // Container(
              //     width: MediaQuery.of(context).size.width*.3,
              //     height: MediaQuery.of(context).size.height*.05,
              //     decoration: BoxDecoration(
              //       // color: Color(0xffFCAD75).withOpacity(.7),
              //       gradient: LinearGradient(
              //           colors: [ Color(0xffDCDBFC),Color(0xffDCDBFC)],
              //           begin: Alignment.topCenter,
              //           end: Alignment.bottomCenter),
              //       borderRadius: BorderRadius.circular(31,),
              //
              //       border: Border.all(width: 1,color: Color(0xff1D1A83)),
              //
              //     ),
              //     child:Center(
              //         child:Text("$_minute : $_second", style: TextStyle(fontSize: 20,color: Color(0xff1D1A83)),
              //         )
              //     )
              //
              // ),
              Container(
                width: MediaQuery.of(context).size.width * .95,
                height: MediaQuery.of(context).size.height * .7,
                child: Maze(
                  wallThickness: 5,
                  rows: 4,
                  columns: 3,
                  wallColor: Color(0xffDCDBFC).withOpacity(.85),
                  player: MazeItem('images/player.png', ImageType.asset),
                  finish: MazeItem('images/finish.png', ImageType.asset),
                  onFinish: () {
                    setState(() {
                      flag=true;
                      //CalculationFromApp.Maze += 2;
                    });
                  },
                ),
              ),
              //SizedBox(height: MediaQuery.of(context).size.height*.,),
              GestureDetector(
                onTap: () {
                  if(flag==true){
                    CalculationFromApp.Maze+=2;
                  }
                  //_timer?.cancel();
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return MazeScreenB();
                      },
                    ),
                  );

                },
                child: Container(
                  margin: EdgeInsets.only(

                      left: MediaQuery.of(context).size.width * .3),
                  width: MediaQuery.of(context).size.width * .35,
                  height: MediaQuery.of(context).size.height * .07,
                  decoration: BoxDecoration(
                      color: Color(0xffDCDAFF).withOpacity(.85),
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
                      border: Border.all(width: 0.5, color: Color(0xff1D1A83)),
                      gradient: LinearGradient(
                          colors: [Color(0xffDCDBFC), Color(0xffDCDBFC)],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter)),
                  child: Center(
                    child: Text(
                      'التالي',
                      style: TextStyle(
                          color: Color(0xff1D1A83),
                          fontWeight: FontWeight.w400,
                          fontSize: MediaQuery.of(context).size.width * .06),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );

    // void dispose() {
    //   super.dispose();
    //   _timer?.cancel(); // Cancel the timer when the widget is disposed
    // }
  }
  // void _startTimer() {
  //   const oneSec = const Duration(seconds: 1);
  //   _timer = Timer.periodic(
  //     oneSec,
  //         (Timer timer) => setState(
  //           () {
  //         if (_counter < 60) {
  //           _counter++;
  //           _second++;
  //         } else {
  //           //onTap: () {
  //           _timer?.cancel();
  //           navigation_method();
  //           // if(flag==true){
  //           //   setState(() {
  //           //     CalculationFromApp.Maze+=2;
  //           //   });
  //           //
  //           // }
  //           // print("mazea ${CalculationFromApp.Maze}");
  //           // Navigator.of(context).push(
  //           //   MaterialPageRoute(
  //           //     builder: (context) {
  //           //       return MazeScreenB();
  //           //     },
  //           //   ),
  //           // );
  //         }
  //         // print(CalculationFromApp.ObjectAssembles);
  //         if(_second==60){
  //           _minute++;
  //           _second=0;
  //         }
  //
  //       },
  //     ),
  //   );
  //   // dispose();
  // }
  //
  // @override
  //
  // void navigation_method(){
  //   if(_counter==60){
  //     if(flag==true){
  //       CalculationFromApp.Maze+=2;
  //     }
  //     _timer?.cancel();
  //     Navigator.of(context).push(
  //       MaterialPageRoute(
  //         builder: (context) {
  //           return MazeScreenB();
  //         },
  //       ),
  //     );
  //   }
  // }
}
