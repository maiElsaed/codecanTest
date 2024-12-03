
import '../../../logicoperation/childdegreefromtesters.dart';

class DepartmentDegree{
 static String  information(){
    String result=" ";
    if(CalculationFromTester.InformationDegree>=0&&CalculationFromTester.InformationDegree<=3){
      result= "ضعيف المستوى";
    }else if(CalculationFromTester.InformationDegree>=4&&CalculationFromTester.InformationDegree<=7){
      result = "في المستوى الطبيعي";
    }else if(CalculationFromTester.InformationDegree>=8&&CalculationFromTester.InformationDegree<=10){
      result= "متميز المستوى";
    }else if(CalculationFromTester.InformationDegree>=11&&CalculationFromTester.InformationDegree<=30){
      result= "عبقري للغاية";
    }
    return result;
}
 static String  understand(){
    String result=" ";
    if(CalculationFromTester.understandDegree>=0&&CalculationFromTester.understandDegree<=3){
      result= "ضعيف المستوى";
    }else if(CalculationFromTester.understandDegree>=4&&CalculationFromTester.understandDegree<=8){
      result = "في المستوى الطبيعي";
    }else if(CalculationFromTester.understandDegree>=9&&CalculationFromTester.understandDegree<=12){
      result= "متميز المستوى";
    }else if(CalculationFromTester.understandDegree>=13&&CalculationFromTester.understandDegree<=28){
      result= "عبقري للغاية";
    }
    return result;
  }
 static String  calculation(){
    String result=" ";
    if(CalculationFromTester.CalculationDegree>=0&&CalculationFromTester.CalculationDegree<=2){
      result= "ضعيف المستوى";
    }else if(CalculationFromTester.CalculationDegree>=3&&CalculationFromTester.CalculationDegree<=5){
      result = "في المستوى الطبيعي";
    }else if(CalculationFromTester.CalculationDegree>=6&&CalculationFromTester.CalculationDegree<=8){
      result= "متميز المستوى";
    }else if(CalculationFromTester.CalculationDegree>=9&&CalculationFromTester.CalculationDegree<=16){
      result= "عبقري للغاية";
    }
    return result;
  }
 static String  similar(){
    String result=" ";
    if(CalculationFromTester.SimilarDegree>=0&&CalculationFromTester.SimilarDegree<=2){
      result= "ضعيف المستوى";
    }else if(CalculationFromTester.SimilarDegree>=3&&CalculationFromTester.SimilarDegree<=6){
      result = "في المستوى الطبيعي";
    }else if(CalculationFromTester.SimilarDegree>=7&&CalculationFromTester.SimilarDegree<=9){
      result= "متميز المستوى";
    }else if(CalculationFromTester.SimilarDegree>=10&&CalculationFromTester.SimilarDegree<=28){
      result= "عبقري للغاية";
    }
    return result;
  }
 static String  vocublary(){
    String result=" ";
    if(CalculationFromTester.VocublaryDegree>=0&&CalculationFromTester.VocublaryDegree<=7){
      result= "ضعيف المستوى";
    }else if(CalculationFromTester.VocublaryDegree>=8&&CalculationFromTester.VocublaryDegree<=17){
      result = "في المستوى الطبيعي";
    }else if(CalculationFromTester.VocublaryDegree>=18&&CalculationFromTester.VocublaryDegree<=27){
      result= "متميز المستوى";
    }else if(CalculationFromTester.VocublaryDegree>=28&&CalculationFromTester.VocublaryDegree<=31){
      result= "عبقري ";
    }else if(CalculationFromTester.VocublaryDegree>=32&&CalculationFromTester.VocublaryDegree<=80){
      result= "عبقري للغاية";
    }
    return result;
  }
 static String  repeat(){
    String result=" ";
    if(CalculationFromTester.RepeatNumber>=0&&CalculationFromTester.RepeatNumber<=3){
      result= "ضعيف المستوى";
    }else if(CalculationFromTester.RepeatNumber>=4&&CalculationFromTester.RepeatNumber<=7){
      result = "في المستوى الطبيعي";
    }else if(CalculationFromTester.RepeatNumber>=8&&CalculationFromTester.RepeatNumber<=10){
      result= "متميز المستوى";
    }else if(CalculationFromTester.RepeatNumber>=11&&CalculationFromTester.RepeatNumber<=17){
      result= "عبقري للغاية";
    }
    return result;
  }
 static  String  picturecomplete(){
    String result=" ";
    if(CalculationFromTester.PictureComplete>=0&&CalculationFromTester.PictureComplete<=5){
      result= "ضعيف المستوى";
    }else if(CalculationFromTester.PictureComplete>=6&&CalculationFromTester.PictureComplete<=7){
      result = "في المستوى الطبيعي";
    }else if(CalculationFromTester.PictureComplete>=8&&CalculationFromTester.PictureComplete<=11){
      result= "متميز المستوى";
    }else if(CalculationFromTester.PictureComplete>=12&&CalculationFromTester.PictureComplete<=20){
      result= "عبقري للغاية";
    }
    return result;
  }
 static String  objectassemble(){
    String result=" ";
    if(CalculationFromTester.ObjectAssemble>=0&&CalculationFromTester.ObjectAssemble<=1){
      result= "ضعيف المستوى";
    }else if(CalculationFromTester.ObjectAssemble>=2&&CalculationFromTester.ObjectAssemble<=7){
      result = "في المستوى الطبيعي";
    }else if(CalculationFromTester.ObjectAssemble>=8&&CalculationFromTester.ObjectAssemble<=57){
      result= "متميز المستوى";
    }
    return result;
  }
 static  String  block(){
    String result=" ";
    if(CalculationFromTester.BlockDesign>=0&&CalculationFromTester.BlockDesign<=4){
      result= "ضعيف المستوى";
    }else if(CalculationFromTester.BlockDesign>=5&&CalculationFromTester.BlockDesign<=11){
      result = "في المستوى الطبيعي";
    }else if(CalculationFromTester.BlockDesign>=12&&CalculationFromTester.BlockDesign<=55){
      result= "متميز المستوى";
    }
    return result;
  }
 static  String  maze(){
    String result=" ";
    if(CalculationFromTester.Maze==0){
      result= "ضعيف المستوى";
    }else if(CalculationFromTester.Maze>=1&&CalculationFromTester.Maze<=17){
      result = "في المستوى الطبيعي";
    }else if(CalculationFromTester.Maze>=18&&CalculationFromTester.Maze<=21){
      result= "متميز المستوى";
    }
    return result;
  }

}