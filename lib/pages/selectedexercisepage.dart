import 'package:flutter/material.dart';
import 'package:stayfit_app/models/exercise.dart';

class SelectedExercisePage extends StatelessWidget {
  Exercise selectedExercise;

  SelectedExercisePage({required this.selectedExercise});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    this.selectedExercise.name,
                    style: TextStyle(fontSize: 21),
                  )
                ],
              ),
              Expanded(
                  child: GridView.count(
                crossAxisCount: 2,
                children: List.generate(
                    this.selectedExercise.subExercises.length, (index) {
                  return Text(this.selectedExercise.subExercises[index].name);
                }
               ),
              )
            ),
          ],
        ),
      )
    );
  }
}
