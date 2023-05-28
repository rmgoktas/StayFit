
import 'package:flutter/material.dart';
import 'exercise.dart';
import 'exerciseDetailsList.dart';

class SubExercise extends Exercise {

  SubExercise({
      
      required String name,
      required Color color,
      required String imgName,
      required List<Exercise> subExercises,
      required List<ExerciseDetails> exerciseDetailsList, 
      
     
      
      })
      : super(
          name: name,
          color: color,
          imgName: imgName,
          subExercises: subExercises,
          exerciseDetailsList: exerciseDetailsList,
        );
}