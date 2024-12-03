import 'package:flutter/material.dart';
import 'dart:async';
import 'package:codecansecond/drag_drop_department/views/car_puzzle/car_puzzle.dart';
import 'package:codecansecond/drag_drop_department/widgets/custom_button.dart';
import 'package:codecansecond/drag_drop_department/widgets/custom_drag_target_widget.dart';
import 'package:codecansecond/drag_drop_department/widgets/custom_draggable_widget.dart';
import 'package:codecansecond/drag_drop_department/widgets/custom_puzzle_image_container.dart';
import 'package:codecansecond/drag_drop_department/widgets/popup_window.dart';
import 'package:codecansecond/logicoperation/childdegreefromapps.dart';
class HorsePuzzle extends StatefulWidget {
  const HorsePuzzle({super.key});

  @override
  State<HorsePuzzle> createState() => Pg();
}

class Pg extends State<HorsePuzzle> {
  int _minute = 00;
  int _second=0;
  int _counter=0;
  Timer? _timer;
  List<AssetImage?> _droppedImages = List<AssetImage?>.filled(6, null);
  List<String> correctIndex = [
    'images/horse_4.png',
    'images/horse_2.png',
    'images/horse_1.png',
    'images/horse_3.png',
    'images/horse_6.png',
    'images/horse_5.png',
  ];
  List<bool> check = List<bool>.filled(6, false);
  void initState() {
    super.initState();
    // Start the timer when the widget is initialized
    _startTimer();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: OrientationBuilder(
          builder: (context, orientation) {
            return orientation == Orientation.portrait
                ? _buildPortraitLayout()
                : _buildLandscapeLayout();
          },
        ),
      ),
    );
  }

  Widget _buildPortraitLayout() {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
            'images/rearrangeimagebg.png',
          ),
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height*.03,),
          Container(
              width: MediaQuery.of(context).size.width*.3,
              height: MediaQuery.of(context).size.height*.05,
              decoration: BoxDecoration(
                color: Color(0xff8978BE).withOpacity(.7),
                borderRadius: BorderRadius.circular(31,),

                border: Border.all(width: 1,color: Color(0xff8978BE)),

              ),
              child:Center(
                  child:Text("$_minute : $_second", style: TextStyle(fontSize: 20,color: Color(0xffEFEAFF)),
                  )
              )

          ),
          SizedBox(height: MediaQuery.of(context).size.height*.05,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomDragTargetWidget(
                widthRatio: 84 / 375,
                heightRatio: 193 / 812,
                droppedImage: _droppedImages[0],
                onAccept: (AssetImage? droppedImage) {
                  if (droppedImage?.assetName == correctIndex[0]) {
                    check[0] = true;
                  }
                  debugPrint(droppedImage?.assetName);
                  setState(
                    () {
                      _droppedImages[0] = droppedImage;
                    },
                  );
                },
              ),
              Column(
                children: [
                  Row(
                    children: [
                      CustomDragTargetWidget(
                        widthRatio: 55 / 375,
                        heightRatio: 146 / 812,
                        droppedImage: _droppedImages[1],
                        onAccept: (AssetImage? droppedImage) {
                          if (droppedImage?.assetName == correctIndex[1]) {
                            check[1] = true;
                          }
                          debugPrint(droppedImage?.assetName);
                          setState(
                            () {
                              _droppedImages[1] = droppedImage;
                            },
                          );
                        },
                      ),
                      Column(
                        children: [
                          CustomDragTargetWidget(
                            widthRatio: 77 / 375,
                            heightRatio: 86 / 812,
                            droppedImage: _droppedImages[2],
                            onAccept: (AssetImage? droppedImage) {
                              if (droppedImage?.assetName == correctIndex[2]) {
                                check[2] = true;
                              }
                              debugPrint(droppedImage?.assetName);
                              setState(
                                () {
                                  _droppedImages[2] = droppedImage;
                                },
                              );
                            },
                          ),
                          CustomDragTargetWidget(
                            widthRatio: 77 / 375,
                            heightRatio: 60 / 812,
                            droppedImage: _droppedImages[3],
                            onAccept: (AssetImage? droppedImage) {
                              if (droppedImage?.assetName == correctIndex[3]) {
                                check[3] = true;
                              }
                              debugPrint(droppedImage?.assetName);
                              setState(
                                () {
                                  _droppedImages[3] = droppedImage;
                                },
                              );
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      CustomDragTargetWidget(
                        widthRatio: 45 / 375,
                        heightRatio: 47 / 812,
                        droppedImage: _droppedImages[4],
                        onAccept: (AssetImage? droppedImage) {
                          if (droppedImage?.assetName == correctIndex[4]) {
                            check[4] = true;
                          }
                          debugPrint(droppedImage?.assetName);
                          setState(
                            () {
                              _droppedImages[4] = droppedImage;
                            },
                          );
                        },
                      ),
                      CustomDragTargetWidget(
                        widthRatio: 88 / 375,
                        heightRatio: 47 / 812,
                        droppedImage: _droppedImages[5],
                        onAccept: (AssetImage? droppedImage) {
                          if (droppedImage?.assetName == correctIndex[5]) {
                            check[5] = true;
                          }
                          debugPrint(droppedImage?.assetName);
                          setState(
                            () {
                              _droppedImages[5] = droppedImage;
                            },
                          );
                        },
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
          ///////////////////////////////////////////////////////////////////////////////////////////
          SizedBox(
            height: MediaQuery.of(context).size.height * .05,
          ),
          CustomPuzzleImagesContainer(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .05,
                    ),
                    const CustomDraggableWidget(
                      image: 'images/horse_6.png',
                      widthRatio: .2,
                      heightRatio: .1,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .05,
                    ),
                    const CustomDraggableWidget(
                        image: 'images/horse_5.png',
                        widthRatio: .4,
                        heightRatio: .1),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .01,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomDraggableWidget(
                      image: 'images/horse_4.png',
                      widthRatio: .2,
                      heightRatio: .1,
                    ),
                    CustomDraggableWidget(
                      image: 'images/horse_3.png',
                      widthRatio: .2,
                      heightRatio: .1,
                    ),
                    CustomDraggableWidget(
                      image: 'images/horse_2.png',
                      widthRatio: .2,
                      heightRatio: .1,
                    ),
                    CustomDraggableWidget(
                      image: 'images/horse_1.png',
                      widthRatio: .2,
                      heightRatio: .1,
                    ),
                  ],
                )
              ],
            ),
          ),
          const Expanded(child: SizedBox()),
          CustomButton(
            height: 60,
            width: 250,
            text: 'إرسال',
            onTap: () {
              if (check.contains(false)) {
                // setState(() {
                //   _droppedImages = List<AssetImage?>.filled(6, null);
                //   check = List<bool>.filled(6, false);
                // });
                setState(() {
                  CalculationFromApp.ObjectAssembles+=0;
                });
              } else {
                CalculationFromApp.ObjectAssembles+=6;
              }
              _timer?.cancel();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CarPuzzle(),
                ),
              );
            },
          ),
          const SizedBox(
            height: 35,
          ),
        ],
      ),
    );
  }

  Widget _buildLandscapeLayout() {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
            'images/rearrangeimagebg.png',
          ),
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height*.03,),
          Container(
              width: MediaQuery.of(context).size.width*.3,
              height: MediaQuery.of(context).size.height*.05,
              decoration: BoxDecoration(
                color: Color(0xff8978BE).withOpacity(.7),
                borderRadius: BorderRadius.circular(31,),

                border: Border.all(width: 1,color: Color(0xff8978BE)),

              ),
              child:Center(
                  child:Text("$_minute : $_second", style: TextStyle(fontSize: 20,color: Color(0xffEFEAFF)),
                  )
              )
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomDragTargetWidget(
                widthRatio: .2,
                heightRatio: .1,
                droppedImage: _droppedImages[0],
                onAccept: (AssetImage? droppedImage) {
                  if (droppedImage?.assetName == correctIndex[0]) {
                    check[0] = true;
                  }
                  debugPrint(droppedImage?.assetName);
                  setState(() {
                    _droppedImages[0] = droppedImage;
                  });
                },
              ),
              CustomDragTargetWidget(
                widthRatio: .2,
                heightRatio: .1,
                droppedImage: _droppedImages[1],
                onAccept: (AssetImage? droppedImage) {
                  if (droppedImage?.assetName == correctIndex[1]) {
                    check[1] = true;
                  }
                  debugPrint(droppedImage?.assetName);
                  setState(() {
                    _droppedImages[1] = droppedImage;
                  });
                },
              ),
            ],
          ),
          CustomDragTargetWidget(
            widthRatio: .4,
            heightRatio: .1,
            droppedImage: _droppedImages[2],
            onAccept: (AssetImage? droppedImage) {
              if (droppedImage?.assetName == correctIndex[2]) {
                check[2] = true;
              }
              debugPrint(droppedImage?.assetName);
              setState(() {
                _droppedImages[2] = droppedImage;
              });
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomDragTargetWidget(
                  widthRatio: .2,
                  heightRatio: .1,
                  droppedImage: _droppedImages[3],
                  onAccept: (AssetImage? droppedImage) {
                    if (droppedImage?.assetName == correctIndex[3]) {
                      check[3] = true;
                    }
                    debugPrint(droppedImage?.assetName);
                    setState(() {
                      _droppedImages[3] = droppedImage;
                    });
                  }),
              CustomDragTargetWidget(
                widthRatio: .2,
                heightRatio: .1,
                droppedImage: _droppedImages[4],
                onAccept: (AssetImage? droppedImage) {
                  if (droppedImage?.assetName == correctIndex[4]) {
                    check[4] = true;
                  }
                  debugPrint(droppedImage?.assetName);
                  setState(() {
                    _droppedImages[4] = droppedImage;
                  });
                },
              ),
              CustomDragTargetWidget(
                widthRatio: .2,
                heightRatio: .1,
                droppedImage: _droppedImages[5],
                onAccept: (AssetImage? droppedImage) {
                  if (droppedImage?.assetName == correctIndex[4]) {
                    check[5] = true;
                  }
                  debugPrint(droppedImage?.assetName);
                  setState(() {
                    _droppedImages[5] = droppedImage;
                  });
                },
              ),
              CustomDragTargetWidget(
                widthRatio: .2,
                heightRatio: .1,
                droppedImage: _droppedImages[6],
                onAccept: (AssetImage? droppedImage) {
                  if (droppedImage?.assetName == correctIndex[4]) {
                    check[6] = true;
                  }
                  debugPrint(droppedImage?.assetName);
                  setState(() {
                    _droppedImages[6] = droppedImage;
                  });
                },
              ),
            ],
          ),
          ///////////////////////////////////////////////////////////////////////////////////////////
          SizedBox(
            height: MediaQuery.of(context).size.height * .05,
          ),
          CustomPuzzleImagesContainer(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .05,
                    ),
                    const CustomDraggableWidget(
                      image: 'images/horse_6.png',
                      widthRatio: .2,
                      heightRatio: .1,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .05,
                    ),
                    const CustomDraggableWidget(
                        image: 'images/horse_5.png',
                        widthRatio: .4,
                        heightRatio: .1),
                    const CustomDraggableWidget(
                      image: 'images/horse_4.png',
                      widthRatio: .2,
                      heightRatio: .1,
                    ),
                    const CustomDraggableWidget(
                      image: 'images/horse_3.png',
                      widthRatio: .2,
                      heightRatio: .1,
                    ),
                    const CustomDraggableWidget(
                      image: 'images/horse_2.png',
                      widthRatio: .2,
                      heightRatio: .1,
                    ),
                    const CustomDraggableWidget(
                      image: 'images/horse_1.png',
                      widthRatio: .2,
                      heightRatio: .1,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          CustomButton(
            height: 60,
            width: 250,
            text: 'إرسال',
            onTap: () {
              if (check.contains(false)) {
                // setState(() {
                //   _droppedImages = List<AssetImage?>.filled(6, null);
                //   check = List<bool>.filled(6, false);
                // });
                setState(() {
                  CalculationFromApp.ObjectAssembles+=0;
                });
              } else {
                CalculationFromApp.ObjectAssembles+=6;
              }
              _timer?.cancel();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CarPuzzle(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
  void _startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
          (Timer timer) => setState(
            () {
          if (_counter < 180) {
            _counter++;
            _second++;
          } else {
            //onTap: () {
            _timer?.cancel();
            if (check.contains(false)) {
              setState(() {
                CalculationFromApp.ObjectAssembles+=0;
              });
            } else {
              setState(() {
                CalculationFromApp.ObjectAssembles+=6;
              },);
            }

            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CarPuzzle(),
              ),
            );
          }
          if(_second==60){
            _minute++;
            _second=0;
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
