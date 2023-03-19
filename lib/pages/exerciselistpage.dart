import 'package:flutter/material.dart';
import 'package:stayfit_app/helpers/utils.dart';
import 'package:stayfit_app/models/exercise.dart';
import 'package:stayfit_app/pages/selectedexercisepage.dart';
import '../widgets/exercisecard.dart';
import '../widgets/exercisenavbar.dart';


class ExerciseListPage extends StatelessWidget {
  
  List<Exercise> exercises = Utils.getMockedExercises();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: SizedBox(
            width: 65, height: 65, child: Image.asset("assets/blackicon.png")
        ),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10),
            padding: EdgeInsets.all(10),
            child: ClipOval(
              child: Image.asset("assets/ahmethoca.jpeg"),
            ),
          )
        ],
      ),
      body: Container(
          child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 10),
                child: Text(
                  "Select the training zone:",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
              Expanded(
                  child: ListView.builder(
                    padding: EdgeInsets.only(bottom: 110),
                    itemCount: exercises.length,
                    itemBuilder: (BuildContext ctx, int index) {
                      return ExerciseCard(exercise: exercises[index],
                      onCardClick: () {
                        Navigator.push(
                          context, 
                          MaterialPageRoute(
                            builder: (context) => SelectedExercisePage(
                              selectedExercise: Utils.getMockedExercises()[index]
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
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: ExerciseNavBar(),
          )
        ],
       )
      ),
    );
  }
}
