import 'package:flutter/material.dart';
import 'package:stayfit_app/models/subexercise.dart';
import 'package:stayfit_app/widgets/mainappbar.dart';
import '../models/exercise.dart';

class ExerciseDetailsPage extends StatelessWidget {
  
  final Exercise selectedExercise;
  
  ExerciseDetailsPage({required this.selectedExercise});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(),
      body: Center(
        child: Text(this.selectedExercise.name)
      ),
    );
  }
}


