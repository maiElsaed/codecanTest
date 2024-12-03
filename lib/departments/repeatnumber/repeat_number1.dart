import 'package:codecansecond/departments/repeatnumber/repeat_number2.dart';
import 'package:flutter/material.dart';

class RepeatNumberFirst extends StatefulWidget {
  State<RepeatNumberFirst> createState() => _pg();
}

class _pg extends State<RepeatNumberFirst> {
  @override
  Widget build(BuildContext buildcontext) {
    return SafeArea(child: Material(
      child: OrientationBuilder(
        builder: (context, orientation) {
          return orientation == Orientation.portrait
              ? _PortraiteLayout()
              : _LandscapeLayout();
        },
      ),
    ));
  }

  Widget _PortraiteLayout() {
    return Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage('images/repeat_number_first_bg.jpg'),
        )),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .75,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return RepeatNumberSecond();
                    },
                  ),
                );
              },
              child: Container(
                width: MediaQuery.of(context).size.width * .4,
                height: MediaQuery.of(context).size.height * .08,
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
                        color: Colors.black12,
                        offset: Offset(5, 5),
                        blurRadius: 10,
                      )
                    ],
                    border: Border.all(color: Color(0xff3C5E80), width: 2)),
                child: Center(
                  child: Text(
                    'هيا بنا',
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: MediaQuery.of(context).size.width * .07,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }

  Widget _LandscapeLayout() {
    return Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage('images/repeat_number_first_bg.jpg'),
        )),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .7,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return RepeatNumberSecond();
                  },
                ));
              },
              child: Container(
                width: MediaQuery.of(context).size.width * .2,
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
                        color: Colors.black12,
                        offset: Offset(5, 5),
                        blurRadius: 10,
                      )
                    ],
                    border: Border.all(color: Color(0xff3C5E80), width: 2)),
                child: Center(
                  child: Text(
                    'هيا بنا',
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: MediaQuery.of(context).size.width * .03,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
