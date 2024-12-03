import 'package:flutter/material.dart';
import 'package:codecansecond/drag_drop_department/views/boy_puzzle/boy_puzzle.dart';
import 'package:codecansecond/drag_drop_department/views/box_puzzle_one/box_puzzle_one.dart';

class BoxPuzzlefirst extends StatefulWidget {
  State<BoxPuzzlefirst> createState() => _pg();
}

class _pg extends State<BoxPuzzlefirst> {
  @override
  Widget build(BuildContext buildcontext) {
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
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('images/block_design_first_bg.jpg'))),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return BoxPuzzleOne();
                  },
                ),
              );
            },
            child: Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * .77,
                   right:MediaQuery.of(context).size.height * .22 ),
              // padding: EdgeInsets.only(bottom: 5),
              width: MediaQuery.of(context).size.width * .4,
              height: MediaQuery.of(context).size.height * .09,
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
                  'ابدأ',
                  style: TextStyle(
                    color: Color(0xffA74300),
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
              image: AssetImage('images/block_design_first_bg.jpg'))),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return BoxPuzzleOne();
                  },
                ),
              );
            },
            child: Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * .77,
                  right:MediaQuery.of(context).size.height * .95 ),
              // padding: EdgeInsets.only(bottom: 5),
              width: MediaQuery.of(context).size.width * .4,
              height: MediaQuery.of(context).size.height * .09,
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
                  'ابدأ',
                  style: TextStyle(
                    color: Color(0xffA74300),
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
