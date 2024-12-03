import 'package:codecansecond/testerpages/pagelogin.dart';
import 'package:codecansecond/calculation_degree/calculationrules/rawdegree.dart';
import 'package:codecansecond/calculation_degree/calculationrules/5y_from_0m_to_3m.dart';

import 'calculationrules/10y_from_0m_to_3m.dart';
import 'calculationrules/10y_from_4m_to_7m.dart';
import 'calculationrules/10y_from_8m_to_11m.dart';
import 'calculationrules/11y_from_0m_to_3m.dart';
import 'calculationrules/11y_from_4m_to_7m.dart';
import 'calculationrules/11y_from_8m_to_11m.dart';
import 'calculationrules/12y_from_0m_to_3m.dart';
import 'calculationrules/12y_from_4m_to_7m.dart';
import 'calculationrules/12y_from_8m_to_11m.dart';
import 'calculationrules/13y_from_0m_to_3m.dart';
import 'calculationrules/13y_from_4m_to_7m.dart';
import 'calculationrules/13y_from_8m_to_11m.dart';
import 'calculationrules/14y_from_0m_to_3m.dart';
import 'calculationrules/14y_from_4m_to_7m.dart';
import 'calculationrules/14y_from_8m_to_11m.dart';
import 'calculationrules/15y_from_0m_to_3m.dart';
import 'calculationrules/15y_from_4m_to_7m.dart';
import 'calculationrules/15y_from_8m_to_11m.dart';
import 'calculationrules/5y_from_4m_to_7m.dart';
import 'calculationrules/5y_from_8m_to_11m.dart';
import 'calculationrules/6y_from_0m_to_3m.dart';
import 'calculationrules/6y_from_4m_to_7m.dart';
import 'calculationrules/6y_from_8m_to_11m.dart';
import 'calculationrules/7y_from_0m_to_3m.dart';
import 'calculationrules/7y_from_4m_to_7m.dart';
import 'calculationrules/7y_from_8m_to_11m.dart';
import 'calculationrules/8y_from_0m_to_3m.dart';
import 'calculationrules/8y_from_4m_to_7m.dart';
import 'calculationrules/8y_from_8m_to_11m.dart';
import 'calculationrules/9y_from_0m_to_3m.dart';
import 'calculationrules/9y_from_4m_to_7m.dart';
import 'calculationrules/9y_from_8m_to_11m.dart';

class CalculateFinalDegree{
  //late String FileWithSpecificAge;
   static   int year=variables.year;
   static  int month=variables.month;
    late var TheRangeOfAge;
  Weighteddegrees5y0m_5y3m x=Weighteddegrees5y0m_5y3m();

  static Map CheckAge(){
    if(year==5&&(month>=0&&month<=3)){
     //x=Weighteddegrees5y0m_5y3m();
      return Model5y0m_5y3m.result();
    }
    else if(year==5&&(month>=4&&month<=7)){
      return Model5y4m_5y7m.result();
    }
    else if(year==5&&(month>=8&&month<=11)){
      return  Model5y8m_5y11m.result();
    }
    else if(year==6&&(month>=0&&month<=3)){
      return Model6y0m_6y3m.result();
    }
    else if(year==6&&(month>=4&&month<=7)){
      return Model6y4m_6y7m.result();
    }
    else if(year==6&&(month>=8&&month<=11)){
      return Model6y8m_6y11m.result();
    }
    else if(year==7&&(month>=0&&month<=3)){
      return Model7y0m_7y3m.result();
    }
    else if(year==7&&(month>=4&&month<=7)){
      return Model7y4m_7y7m.result();
    }
    else if(year==7&&(month>=8&&month<=11)){
      return Model7y8m_7y11m.result();
    }
    else if(year==8&&(month>=0&&month<=3)){
      return Model8y0m_8y3m.result();
    }
    else if(year==8&&(month>=4&&month<=7)){
      return Model8y4m_8y7m.result();
    }
    else if(year==8&&(month>=8&&month<=11)){
      return Model8y8m_8y11m.result();
    }
    else if(year==9&&(month>=0&&month<=3)){
      return Model9y0m_9y3m.result();
    }
    else if(year==9&&(month>=4&&month<=7)){
      return Model9y4m_9y7m.result();
    }
    else if(year==9&&(month>=8&&month<=11)){
      return Model9y8m_9y11m.result();
    }
    else if(year==10&&(month>=0&&month<=3)){
      return Model10y0m_10y3m.result();
    }
    else if(year==10&&(month>=4&&month<=7)){
      return Model10y4m_10y7m.result();
    }
    else if(year==10&&(month>=8&&month<=11)){
      return Model10y8m_10y11m.result();
    }
    else if(year==11&&(month>=0&&month<=3)){
      return Model11y0m_11y3m.result();
    }
    else if(year==11&&(month>=4&&month<=7)){
      return Model11y4m_11y7m.result();
    }
    else if(year==11&&(month>=8&&month<=11)){
      return Model11y8m_11y11m.result();
    }
    else if(year==12&&(month>=0&&month<=3)){
      return Model12y0m_12y10m.result();
    }
    else if(year==12&&(month>=4&&month<=7)){
      return Model12y4m_12y7m.result();
    }
    else if(year==12&&(month>=8&&month<=11)){
      return Model12y8m_12y11m.result();
    }
    else if(year==13&&(month>=0&&month<=3)){
      return Model13y0m_13y3m.result();
    }
    else if(year==13&&(month>=4&&month<=7)){
      return Model13y4m_13y7m.result();
    }
    else if(year==13&&(month>=8&&month<=11)){
      return Model13y8m_13y11m.result();
    }
    else if(year==14&&(month>=0&&month<=3)){
      return Model14y0m_14y3m.result();
    }
    else if(year==14&&(month>=4&&month<=7)){
      return Model14y4m_14y7m.result();
    }
    else if(year==14&&(month>=8&&month<=11)){
      return Model14y8m_14y11m.result();
    }
    else if(year==15&&(month>=0&&month<=3)){
      return Model15y0m_15y3m.result();
    }
    else if(year==15&&(month>=4&&month<=7)){
      return Model15y4m_15y7m.result();
    }
    else{
      return Model15y8m_15y11m.result();
    }
   // return Model5y0m_5y3m.result();
   }

}