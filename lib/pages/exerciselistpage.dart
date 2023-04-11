// ignore_for_file: use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:stayfit_app/helpers/contentHelpers.dart';
import 'package:stayfit_app/templates/exercise.dart';
import 'package:stayfit_app/pages/selectedexercisepage.dart';
import 'package:stayfit_app/widgets/mainappbar.dart';
import '../widgets/exercisecard.dart';
import '../widgets/exercisenavbar.dart';


class ExerciseListPage extends StatelessWidget {
  
  List<Exercise> exercises = Utils.getContentOfExercises();

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      drawer: const Drawer(),
      appBar: MainAppBar(),
      body: Stack(
        children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.all(15),
            child: Text(
              "Select the training zone:",
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
          ),
          Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.only(bottom: 110),
                itemCount: exercises.length,
                itemBuilder: (BuildContext context, int index) {
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
