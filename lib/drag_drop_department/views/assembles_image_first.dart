import 'package:flutter/material.dart';
import 'package:codecansecond/drag_drop_department/views/boy_puzzle/boy_puzzle.dart';

class AssembleImageFirst extends StatefulWidget {
  State<AssembleImageFirst> createState() => _pg();
}

class _pg extends State<AssembleImageFirst> {
  @override
  Widget build(BuildContext buildcontext) {
    return SafeArea(child: Material(child: OrientationBuilder(
      builder: (context, orientation) {
        return orientation == Orientation.portrait
            ? _buildPortraitLayout()
            : _buildLandscapeLayout();
      },
    )));
  }

  Widget _buildPortraitLayout() {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('images/obgect_assemble_first_bg.jpg'))),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return BoyPuzzle();
                  },
                ),
              );
            },
            child: Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * .77),
              // padding: EdgeInsets.only(bottom: 5),
              width: MediaQuery.of(context).size.width * .4,
              height: MediaQuery.of(context).size.height * .09,
              decoration: BoxDecoration(
                  //color: Color(0xffE8AA9A),
                  borderRadius: BorderRadius.circular(
                    31,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xff000000),
                      offset: Offset(0, 8),
                      blurRadius: 4,
                      // spreadRadius: 2
                    ),
                  ],
                  border: Border.all(width: 1, color: Color(0xffA985C3)),
                  gradient: LinearGradient(
                      colors: [Color(0xffFFCFF7), Color(0xff9180C4)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)),
              child: Center(
                child: Text(
                  'ابدأ',
                  style: TextStyle(
                    color: Color(0xff685687),
                    fontWeight: FontWeight.w400,
                    fontSize: MediaQuery.of(context).size.width * .09,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildLandscapeLayout() {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('images/obgect_assemble_first_bg.jpg'))),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return BoyPuzzle();
                  },
                ),
              );
            },
            child: Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * .75),
              // padding: EdgeInsets.only(bottom: 5),
              width: MediaQuery.of(context).size.width * .2,
              height: MediaQuery.of(context).size.height * .1,
              decoration: BoxDecoration(
                //color: Color(0xffE8AA9A),
                  borderRadius: BorderRadius.circular(
                    31,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xff000000),
                      offset: Offset(0, 8),
                      blurRadius: 4,
                      // spreadRadius: 2
                    ),
                  ],
                  border: Border.all(width: 1, color: Color(0xffA985C3)),
                  gradient: LinearGradient(
                      colors: [Color(0xffFFCFF7), Color(0xff9180C4)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)),
              child: Center(
                child: Text(
                  'ابدأ',
                  style: TextStyle(
                    color: Color(0xff685687),
                    fontWeight: FontWeight.w400,
                    fontSize: MediaQuery.of(context).size.width * .03,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
