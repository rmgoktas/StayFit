// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:stayfit_app/models/exercise.dart';
import 'package:stayfit_app/pages/exercisedetailspage.dart';
import 'package:stayfit_app/widgets/mainappbar.dart';

class SelectedExercisePage extends StatelessWidget {
  Exercise selectedExercise;

  SelectedExercisePage({super.key, required this.selectedExercise});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MainAppBar(),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  selectedExercise.name,
                  style: const TextStyle(fontSize: 22),
                )
              ],
            ),
            const SizedBox(height: 30),
            Expanded(
                child: GridView.count(
              crossAxisCount: 2,
              //satırda kaç item old. ayarlanır
              children: List.generate(
                  selectedExercise.subExercises.length, (index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ExerciseDetailsPage(
                                  selectedExercise: selectedExercise
                                      .subExercises[index],
                                )));
                  },
                  child: Column(
                    children: [
                      ClipOval(
                        child: Image.asset(
                          "assets/dumbell.png",
                          fit: BoxFit.cover,
                          height: 100,
                          width: 100,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        selectedExercise.subExercises[index].name,
                      )
                    ],
                  ),
                );
              }
              ),
            )
           ),
          ],
        )
      );
  }
}
