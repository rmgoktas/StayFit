import 'package:flutter/material.dart';
import 'exercise.dart';

class ExerciseDetails extends Exercise {
  
  String description;

  ExerciseDetails({
    
    required String name,
    required Color color,
    required String imgName,
    required List<Exercise> subExercises,
    required List<ExerciseDetails> exerciseDetailsList,
    required this.description,
 
  }) : super(
 
          name: name,
          color: color,
          imgName: imgName,
          subExercises: subExercises,
          exerciseDetailsList: exerciseDetailsList,
          

        );
}
