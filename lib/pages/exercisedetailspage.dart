import 'package:flutter/material.dart';
import 'package:stayfit_app/templates/exercise.dart';
import 'package:stayfit_app/widgets/mainappbar.dart';

class ExerciseDetailsPage extends StatelessWidget {
  Exercise selectedExercise;

  ExerciseDetailsPage({Key? key, required this.selectedExercise}) 
  : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(),
      body: Column(
        children: [
          Text(selectedExercise.name),
          Expanded(
            child: ListView.builder(
              itemCount: selectedExercise.exerciseDetailsList.length,
              itemBuilder: (context, index) {
                final detail = selectedExercise.exerciseDetailsList[index];
                return ListTile(
                  title: Text(detail.description),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

