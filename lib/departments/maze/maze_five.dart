import 'package:flutter/material.dart';
import 'package:maze/maze.dart';
import 'package:codecansecond/logicoperation/childdegreefromapps.dart';
import '../information/totalchilddegree.dart';
import 'maze_total_degree.dart';
import 'dart:async';
class MazeScreenFive extends StatefulWidget {
  const MazeScreenFive({super.key});

  @override
  State<MazeScreenFive> createState() => _MazeScreenState();
}

class _MazeScreenState extends State<MazeScreenFive> {
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
              image: AssetImage('images/mazze.png',),
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
                width: MediaQuery.of(context).size.width*.95,
                height: MediaQuery.of(context).size.height*.7,
                child:Maze(
                  wallThickness: 5,
                  rows: 14,
                  columns: 12,
                  wallColor: Color(0xffDCDBFC).withOpacity(.85),
                  player: MazeItem(
                      'images/player.png',
                      ImageType.asset),
                  finish: MazeItem(
                      'images/finish.png',
                      ImageType.asset),
                  onFinish: () {
                    setState(() {
                      flag=true;

                    });
                  },
                ),
              ),
              //SizedBox(height: MediaQuery.of(context).size.height*.,),
              GestureDetector(
                onTap: (){
                  if(flag==true){
                    CalculationFromApp.Maze+=3;
                  }
                  //_timer?.cancel();
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                    return TotalDegreeChildInformation();
                  },),
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(
                      top:MediaQuery.of(context).size.height*.05,
                      left: MediaQuery.of(context).size.width*.3
                  ),
                  width: MediaQuery.of(context).size.width*.35,
                  height: MediaQuery.of(context).size.height*.07,
                  decoration: BoxDecoration(
                      color: Color(0xffDCDAFF).withOpacity(.85),
                      borderRadius: BorderRadius.circular(31,),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xff000000),
                          offset: Offset(0, 3),
                          blurRadius: 4,
                          // spreadRadius: 2
                        ),
                      ],
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
          ),
        ),
      ),
    );
    // @override
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
  //
  //           if(flag==true){
  //             setState(() {
  //               CalculationFromApp.Maze+=3;
  //             });
  //           }
  //           print("maze4 ${CalculationFromApp.Maze}");
  //           _timer?.cancel();
  //           Navigator.of(context).push(
  //             MaterialPageRoute(
  //               builder: (context) {
  //                 return MazeTotalDegree();
  //               },
  //             ),
  //           );
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



}
