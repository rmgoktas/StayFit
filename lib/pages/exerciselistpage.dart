// ignore_for_file: use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:stayfit_app/helpers/utils.dart';
import 'package:stayfit_app/models/exercise.dart';
import 'package:stayfit_app/pages/selectedexercisepage.dart';
import 'package:stayfit_app/widgets/mainappbar.dart';
import '../widgets/exercisecard.dart';
import '../widgets/exercisenavbar.dart';


class ExerciseListPage extends StatelessWidget {
  
  List<Exercise> exercises = Utils.getMockedExercises();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: MainAppBar(),
      body: Stack(
        children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 15, bottom: 10),
            child: Text(
              "Select the training zone:",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
          ),
          Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.only(bottom: 110),
                itemCount: exercises.length,
                itemBuilder: (BuildContext ctx, int index) {
                  return ExerciseCard(exercise: exercises[index],
                  onCardClick: () {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context) => SelectedExercisePage(
                          selectedExercise: exercises[index],
                          )
                        )
                    );
                  }
              );
            },
          )
         )
        ],
      ),
      const Positioned(
        bottom: 0,
        left: 0,
        right: 0,
        child: ExerciseNavBar(),
      )
        ],
       ),
    );
  }
}
