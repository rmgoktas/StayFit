import 'dart:ui';
import 'exercisedetails.dart';


class Exercise {

  String name;
  Color color;
  String imgName;
  List <Exercise> subExercises;
  List<ExerciseDetails> exerciseDetailsList;

  Exercise(
    {
    required this.name, 
    required this.color, 
    required this.imgName, 
    required this.subExercises,
    required this.exerciseDetailsList,
    }
  );
}
