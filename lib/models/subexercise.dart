import 'dart:ui';
import 'package:flutter/material.dart';
import 'exercise.dart';

class SubExercise extends Exercise {
  


  SubExercise({
      
      required String name,
      required Color color,
      required String imgName,
      required List<Exercise> subExercises,
     
      
      })
      : super(
          name: name,
          color: color,
          imgName: imgName,
          subExercises: subExercises,
        );
}
