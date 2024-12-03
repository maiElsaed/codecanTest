import 'package:flutter/material.dart';
import 'package:codecansecond/drag_drop_department/widgets/custom_button.dart';
import 'package:codecansecond/drag_drop_department/widgets/custom_drag_target_widget.dart';
import 'package:codecansecond/drag_drop_department/widgets/custom_draggable_widget.dart';
import 'package:codecansecond/drag_drop_department/widgets/custom_puzzle_image_container.dart';
import 'package:codecansecond/drag_drop_department/widgets/popup_window.dart';
import 'package:codecansecond/logicoperation/childdegreefromapps.dart';
import 'package:flutter/widgets.dart';
import '../horse_puzzle/horse_puzzle.dart';
import 'dart:async';
class BoyPuzzle extends StatefulWidget {
  const BoyPuzzle({super.key});

  @override
  State<BoyPuzzle> createState() => Pg();
}

class Pg extends State<BoyPuzzle> {
  int _minute = 00;
  int _second=0;
  int _counter=0;
  Timer? _timer;

  List<AssetImage?> _droppedImages = List<AssetImage?>.filled(5, null);

  String x = "";
  // correctValue=[''];
  List<String> correctIndex = [
    'images/poy1.jpg',
    'images/poy2.jpg',
    'images/poy3.jpg',
    'images/poy4.jpg',
    'images/poy5.jpg'
  ];
  List<bool> check = List<bool>.filled(5, false);
  @override
  void initState() {
    super.initState();
    // Start the timer when the widget is initialized
    _startTimer();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Material(child: OrientationBuilder(
      builder: (context, orientation) {
        return orientation == Orientation.portrait
            ? _buildPortraitLayout()
            : _buildLandscapeLayout();
      },
    ),),);
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
          SizedBox(
            height: MediaQuery.of(context).size.height * .05,
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
                      image: 'images/poy5.jpg',
                      widthRatio: .2,
                      heightRatio: .1,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .05,
                    ),
                    const CustomDraggableWidget(
                        image: 'images/poy3.jpg',
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
                      image: 'images/poy4.jpg',
                      widthRatio: .2,
                      heightRatio: .1,
                    ),
                    CustomDraggableWidget(
                      image: 'images/poy1.jpg',
                      widthRatio: .2,
                      heightRatio: .1,
                    ),
                    CustomDraggableWidget(
                      image: 'images/poy2.jpg',
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
                // debugPrint("failed");
                // showDialog(
                //   context: context,
                //   builder: (context) => PopupWindow(
                //     title: 'إجابة خاطئه',
                //     content: 'ترتيب الصور غير صحيح',
                //     type: 'f',
                //     ok: () {
                //       setState(() {
                //         _droppedImages = List<AssetImage?>.filled(5, null);
                //         check = List<bool>.filled(5, false);
                //       });
                //       Navigator.pop(context);
                //     },
                //   ),
                // );
                setState(() {
                  CalculationFromApp.ObjectAssembles+=0;
                });
              } else {
                setState(() {
                  CalculationFromApp.ObjectAssembles+=4;
                });
                // debugPrint("good");
                // showDialog(
                //   context: context,
                //   builder: (context) => PopupWindow(
                //     title: ' إجابة صحيحه ',
                //     content: 'ترتيب الصور  صحيح',
                //     type: 's',
                //     ok: () {
                //       setState(() {
                //         _droppedImages = List<AssetImage?>.filled(5, null);
                //         check = List<bool>.filled(5, false);
                //       });
                //
                //     },
                //   ),
                // );
              }
              _timer?.cancel();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HorsePuzzle(),
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
          SizedBox(height: MediaQuery.of(context).size.height*.01,),
          Container(
              width: MediaQuery.of(context).size.width*.15,
              height: MediaQuery.of(context).size.height*.05,
              decoration: BoxDecoration(
                color: Color(0xff8978BE).withOpacity(.7),
                borderRadius: BorderRadius.circular(31,),
                border: Border.all(width: 1,color: Color(0xff8978BE)),
              ),
              child:Center(
                  child:Text("$_minute : $_second", style: TextStyle(fontSize: 12,color: Color(0xffEFEAFF)),
                  )
              )

          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .01,
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
            ],
          ),
          ///////////////////////////////////////////////////////////////////////////////////////////
          SizedBox(
            height: MediaQuery.of(context).size.height * .0,
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
                      image: 'images/poy5.jpg',
                      widthRatio: .2,
                      heightRatio: .1,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .05,
                    ),
                    const CustomDraggableWidget(
                        image: 'images/poy3.jpg',
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
                      image: 'images/poy4.jpg',
                      widthRatio: .2,
                      heightRatio: .1,
                    ),
                    CustomDraggableWidget(
                      image: 'images/poy1.jpg',
                      widthRatio: .2,
                      heightRatio: .1,
                    ),
                    CustomDraggableWidget(
                      image: 'images/poy2.jpg',
                      widthRatio: .2,
                      heightRatio: .1,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 0,
          ),
          CustomButton(
            height: 25,
            width: 250,
            text: 'إرسال',
            onTap: () {
              if (check.contains(false)) {
                setState(() {
                  CalculationFromApp.ObjectAssembles+=0;
                });
              } else {
                setState(() {
                  CalculationFromApp.ObjectAssembles+=4;
                });
                // debugPrint("good");
                // showDialog(
                //   context: context,
                //   builder: (context) => PopupWindow(
                //     title: 'إجابة صحيحه',
                //     content: 'ترتيب الصور  صحيح',
                //     type: 's',
                //     ok: () {
                //       setState(() {
                //         _droppedImages = List<AssetImage?>.filled(5, null);
                //         check = List<bool>.filled(5, false);
                //       });
                //       Navigator.pop(context);
                //     },
                //   ),
                // );
              }
              _timer?.cancel();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HorsePuzzle(),
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
          if (_counter < 120) {
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
                  CalculationFromApp.ObjectAssembles+=4;
                },);
            }

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HorsePuzzle(),
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