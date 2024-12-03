import 'dart:typed_data';
import 'rawdegree.dart';
import 'package:codecansecond/logicoperation/childdegreefromtesters.dart';
import 'package:codecansecond/logicoperation/childdegreefromapps.dart';
import 'table_of_final_iq_degree.dart';
import 'final_verbal_and_practical.dart';
class Model9y4m_9y7m{
  static double VerbalAfterEquation=0;
  static double PracticalAfterEquation=0;
  static double TotalAfterEquation=0;

  static int CalculateSumOfVerbal(){
    int SumOfVerbal=0;
    SumOfVerbal+=weigheddegrees9y4m_9y7m.understand(CalculationFromTester.understandDegree);
    // print("SumOfVerbal${SumOfVerbal}");
    SumOfVerbal+=weigheddegrees9y4m_9y7m.information(CalculationFromTester.InformationDegree);
    // print("SumOfVerbal${SumOfVerbal}");
    SumOfVerbal+=weigheddegrees9y4m_9y7m.calculation(CalculationFromTester.CalculationDegree);
    //  print("SumOfVerbal${SumOfVerbal}");
    SumOfVerbal+=weigheddegrees9y4m_9y7m.similarity(CalculationFromTester.SimilarDegree);
    //  print("SumOfVerbal${SumOfVerbal}");
    SumOfVerbal+=weigheddegrees9y4m_9y7m.vocublary(CalculationFromTester.VocublaryDegree);
    //  print("SumOfVerbal${SumOfVerbal}");
    SumOfVerbal+=weigheddegrees9y4m_9y7m.repeatnumber(CalculationFromApp.RepeatNumber);
    // print("SumOfVerbal${SumOfVerbal}");
    //print("SumOfPractical${SumOfVerbal}");
    return SumOfVerbal;
  }
  static int CalculateSumOfpractical(){
    int SumOfPractical=0;
    SumOfPractical+=weigheddegrees9y4m_9y7m.picturecomplete(CalculationFromTester.PictureComplete);
    print("SumOfPractical${SumOfPractical}");
    SumOfPractical+=weigheddegrees9y4m_9y7m.objectassrmbly(CalculationFromTester.PictureComplete);
    print("SumOfPractical${SumOfPractical}");
    SumOfPractical+=weigheddegrees9y4m_9y7m.blockdesign(CalculationFromTester.BlockDesign);
    print("SumOfPractical${SumOfPractical}");
    SumOfPractical+=weigheddegrees9y4m_9y7m.maze(CalculationFromTester.Maze);
    print("SumOfPractical${SumOfPractical}");
    // print("SumOfPractical${SumOfPractical}");
    return SumOfPractical;
  }
  static void Verbal_Practical_After_Equation(){
    VerbalAfterEquation=CalculateSumOfVerbal()*(5/6);
    PracticalAfterEquation=CalculateSumOfpractical()*(5/4);
    TotalAfterEquation=VerbalAfterEquation+PracticalAfterEquation;
    print("sumVerbal${CalculateSumOfVerbal()}");
    print("CalculateSumOfVerbal()*(5/6)${CalculateSumOfVerbal()*(5/6)}");
    print("VerbalAfterEquation${VerbalAfterEquation.toInt()}");
    ///
    print("CalculateSumOfpractical${CalculateSumOfpractical()}");
    print("CalculateSumOfVerbal()*(5/6)${CalculateSumOfpractical()*(5/4)}");
    print("PracticalAfterEquation${PracticalAfterEquation.toInt()}");
  }
  static int Final_Verbal_Degree(){
    // Verbal_Practical_After_Equation();
    int TotalVerbal;
    TotalVerbal=VerbalFinalIqDegree.TotalVerbalDegree(VerbalAfterEquation.toInt());
    print("finalTotalVerbal${TotalVerbal}");
    return TotalVerbal;
  }
  static int Final_Practical_Degree(){
    //Verbal_Practical_After_Equation();
    int TotalPractical;
    TotalPractical=PracticalFinalIqDegree.TotaPracticallDegree(PracticalAfterEquation.toInt());
    print("finalTotalPractical${TotalPractical}");
    return TotalPractical;
  }
  static int Final_Iq_Degree(){
    //Verbal_Practical_After_Equation();
    int TotalIqDegree;
    TotalIqDegree=TotalFinalIqDegree.TotalDegree(TotalAfterEquation.toInt() ) ;
    return TotalIqDegree;
  }
  static String Evaluation(){
    int Iq_degree=Final_Iq_Degree();
    late String evalations;
    if(Iq_degree>=130){
      evalations='ممتاز جدا';
    }else if(Iq_degree>=120&&Iq_degree<=129){
      evalations='ممتاز ';
    }else if(Iq_degree>=110&&Iq_degree<=119){
      evalations='متوسط مرتفع';
    }else if(Iq_degree>=90&&Iq_degree<=109){
      evalations='متوسط';
    }else if(Iq_degree>=80&&Iq_degree<=89){
      evalations='متوسط منخفض';
    }else if(Iq_degree>=70&&Iq_degree<=79){
      evalations='بيني';
    }else {
      evalations='متخلف عقليا';
    }
    return evalations;
  }
  static Map result(){
    Verbal_Practical_After_Equation();
    Map Results={
      'verbal':Final_Verbal_Degree(),
      'practical':Final_Practical_Degree(),
      'Total_Iq':Final_Iq_Degree(),
      'evaluation':Evaluation()
    };

    return Results;
  }

}