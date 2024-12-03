import 'package:codecansecond/testerpages/app_degress/appreciations/appreciation_understand.dart';
import 'package:codecansecond/testerpages/picturecompletetester/picturcomplete_tester1.dart';
import 'package:codecansecond/testerpages/repeat_tester/repeat_tester1.dart';
import 'package:codecansecond/testerpages/understandtester/understandtester1.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:codecansecond/loginandregister/welcomepage.dart';
 import 'package:codecansecond/departments/information/page1information.dart';
import 'package:codecansecond/departments/information/page2information.dart';
import 'package:codecansecond/departments/information/page3informationss.dart';

import 'package:codecansecond/departments/information/page22informationss.dart';

import 'package:codecansecond/departments/information/textanswerinformations2.dart';
import 'package:codecansecond/departments/information/answerinformation1.dart';
import 'package:codecansecond/departments/information/choiceinformation1.dart';
import 'package:codecansecond/departments/vocabulary/firstvocubalary.dart';

// import 'package:codecansecond/testerpages/understandtester/understandtester2.dart';
import 'package:codecansecond/loginandregister/oldnewchildtester.dart';
//import 'package:codecansecond/departments/information/totalchilddegree.dart';
import 'departments/information/totalchilddegree.dart';
import 'departments/maze/first_maze.dart';
import 'departments/maze/maze_a.dart';
import 'departments/maze/maze_one.dart';
import 'departments/maze/maze_two.dart';
import 'departments/repeatnumber/repeat_number1.dart';
import 'drag_drop_department/trytimer.dart';
import 'drag_drop_department/views/box_puzzle_eight/box_puzzle_eight.dart';
import 'drag_drop_department/views/box_puzzle_first_page.dart';
import 'drag_drop_department/views/box_puzzle_one/box_puzzle_one.dart';
import 'drag_drop_department/views/boy_puzzle/boy_puzzle.dart';
import 'firebase_options.dart';
import 'package:codecansecond/departments/calculation/calculationfirst.dart';
import 'package:codecansecond/departments/calculation/page1calculation.dart';
import 'package:codecansecond/departments/calculation/page2calculation.dart';
import 'package:codecansecond/departments/calculation/page3calculation.dart';
import 'package:codecansecond/departments/calculation/voiceanswercalculation.dart';
import 'package:codecansecond/departments/calculation/textanswer.dart';
import 'package:codecansecond/departments/understandchild/understandfirst.dart';

import 'package:codecansecond/departments/similar/firstsimilar.dart';
import 'package:codecansecond/departments/information/choiceinformation1.dart';
import 'package:codecansecond/testerpages/similartester/similartester1.dart';
import 'package:codecansecond/departments/vocabulary/firstvocubalary.dart';
import 'package:codecansecond/testerpages/vocublarytester/page1vocublary.dart';
import 'package:codecansecond/departments/picturecomplete/firstPage.dart';
import 'package:codecansecond/calculation_degree/service_model.dart';
import 'package:codecansecond/departments/calculation/total_degree.dart';
import 'package:codecansecond/testerpages/app_degress/information_degree_tester.dart';
import 'package:codecansecond/testerpages/app_degress/final_screen.dart';
import 'package:codecansecond/loginandregister/childregister.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MaterialApp(
      home:Welcome(),
      title: "codecan",
      initialRoute: "home",
      routes: {
         'home': (c) => Welcome(),
         'TesterInformationTotalDegree':(c)=>TesterInformationTotalDegree(),
         'Information1Class': (c) => Information1Class(),
         'CalculationTotalDegree':(c)=>CalculationTotalDegree(),
        'Information2Class': (c) => Information2Class(),
        'Information22Class': (context) => Information22Class(),
        "TextAnswer1": (context) => TextAnswer1(),
        "ChoiceInformation1": (context) => ChoiceInformation1(),
        "AnswerInformation1Class": (context) => AnswerInformation1Class(),
        "Similar1Class":(context)=>Similar1Class(),
        "Page5Class": (context) => Page5Class(),
        "CalculationFirst":(context)=>CalculationFirst(),
        //"TotalDegreeChild": (context) => TotalDegreeChild(),
         "Calculation1Class":(context)=>Calculation1Class(),
         "Calculation2Class":(context)=>Calculation2Class(),
        "Calculation3Class":(context)=>Calculation3Class(),
        "VoiceAnswerCalculation":(context)=>VoiceAnswerCalculation(),
        "TextAnswerCalculation":(context)=>TextAnswerCalculation(),
        "UnderstandFirst":(context)=>UnderstandFirst(),
        "FirstVocublary":(context)=>FirstVocublary(),
        // 'page2':(context)=>Page2Class(),
        // 'page3':(context)=>Page3Class(),
      }
       )
      );
}
