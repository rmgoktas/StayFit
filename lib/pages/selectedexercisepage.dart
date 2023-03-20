import 'package:flutter/material.dart';
import 'package:stayfit_app/models/exercise.dart';
import 'package:stayfit_app/pages/exercisedetailspage.dart';
import 'package:stayfit_app/widgets/mainappbar.dart';

class SelectedExercisePage extends StatelessWidget {
  
  Exercise selectedExercise;

  SelectedExercisePage({required this.selectedExercise});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MainAppBar(),
        body: Container(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    this.selectedExercise.name,
                    style: TextStyle(fontSize: 22),
                  )
                ],
              ),
              SizedBox(height: 30),
              Expanded(
                  child: GridView.count(
                crossAxisCount: 2,
                children: List.generate(
                    this.selectedExercise.subExercises.length, (index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => 
                              ExerciseDetailsPage(
                                  selectedExercise: this.selectedExercise.subExercises[index],
                              )
                          )
                      );
                    },
                    child: Container(
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
                          SizedBox(height: 10),
                          Text(
                            this.selectedExercise.subExercises[index].name,
                          )
                        ],
                      ),
                    ),
                  );
                }),
              )),
            ],
          ),
        ));
  }
}
