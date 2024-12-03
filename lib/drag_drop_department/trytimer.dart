import 'package:flutter/material.dart';
import 'dart:async';
class TimerApp extends StatefulWidget {
  @override
  _TimerAppState createState() => _TimerAppState();
}

class _TimerAppState extends State<TimerApp> {
  int _minute = 00;
  int _second=0;
  int _counter=0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    // Start the timer when the widget is initialized
    _startTimer();
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
            //_counter = 0; // Reset the timer
          }
          if(_counter%60==0){
            _minute++;
            _second=0;
          }

        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Timer Example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '$_minute:$_second ',
                style: TextStyle(fontSize: 24),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _timer?.cancel(); // Cancel the timer when the widget is disposed
  }
}
