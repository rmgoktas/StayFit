import 'dart:ui';

class Exercise {
  String name;
  Color color;
  String imgName;
  List <Exercise> subExercises;

  Exercise(
    {
    required this.name, 
    required this.color, 
    required this.imgName, 
    required this.subExercises
    }
  );
}
