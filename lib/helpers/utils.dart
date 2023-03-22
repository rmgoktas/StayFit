import 'package:flutter/material.dart';
import 'package:stayfit_app/models/exercise.dart';
import 'package:stayfit_app/pages/selectedexercisepage.dart';
import '../models/exercisedetails.dart';
import '../models/subexercise.dart';


class Utils {
  static List<Exercise> getMockedExercises() {
    return [
      Exercise(
          color: const Color(0xFF000000),
          name: "Chest",
          imgName: "cat1",
          exerciseDetailsList: [],
          subExercises: [
            SubExercise(
              color: const Color(0xFF000000),
              name: "Spartan Push Up",
              imgName: " ",
              subExercises: [], 
              exerciseDetailsList: [
                 ExerciseDetails(
                    color: const Color(0xFF000000),
                    name: "",
                    imgName: "some_image_name",
                    subExercises: [],
                    description: "Some description", 
                    exerciseDetailsList: [],
                  ),
              ], 
    
              ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "Chest Stretching Push Up",
              imgName: " ",
              subExercises: [],
              exerciseDetailsList: [],
              
              ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "Hands On Bench Push Up",
              imgName: " ",
              subExercises: [],
              exerciseDetailsList: [],
              
              ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "Jump Push Up",
              imgName: " ",
              subExercises: [],
              exerciseDetailsList: [],
              
              ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "Feet On Bench Push Up",
              imgName: " ",
              subExercises: [],
              exerciseDetailsList: [],
              
              ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "Side to Side Push Up",
              imgName: " ",
              subExercises: [],
              exerciseDetailsList: [],
              
              ),
          ], 
      ),
      Exercise(
          color: const Color(0xFF000000),
          name: "Biceps, Triceps - Shoulder",
          imgName: "cat2",
          exerciseDetailsList: [],
          subExercises: [
            SubExercise(
              color: const Color(0xFF000000),
              name: "Side Arm Raises",
              imgName: " ",
              subExercises: [],
              exerciseDetailsList: [],
              
              ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "Triceps Dips",
              imgName: " ",
              subExercises: [],
              exerciseDetailsList: [],
              
              ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "Leg Barbell Curl",
              imgName: " ",
              subExercises: [],
              exerciseDetailsList: [],
              
              ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "Burpees",
              imgName: " ",
              subExercises: [],
              exerciseDetailsList: [],
              
              ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "Diagonal Plank",
              imgName: " ",
              subExercises: [],
              exerciseDetailsList: [],
              
              ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "Wall Push-Ups",
              imgName: " ",
              subExercises: [],
              exerciseDetailsList: [],
              
              ),
          ]
          ),
      Exercise(
          color: const Color(0xFF000000),
          name: "Back",
          imgName: "cat3",
          exerciseDetailsList: [],
          subExercises: [
            SubExercise(
              color: const Color(0xFF000000),
              name: "Superman",
              imgName: " ",
              subExercises: [],
              exerciseDetailsList: [],
              
              ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "Hover Push-Up",
              imgName: " ",
              subExercises: [],
              exerciseDetailsList: [],
              
              ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "Bird Dog",
              imgName: " ",
              subExercises: [],
              exerciseDetailsList: [],
              
              ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "Hip Hinge",
              imgName: " ",
              subExercises: [],
              exerciseDetailsList: [],
              
              ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "Body Weight Cable Row",
              imgName: " ",
              subExercises: [],
              exerciseDetailsList: [],
              
              ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "Incline Push-Up",
              imgName: " ",
              subExercises: [],
              exerciseDetailsList: [],
              
              ),
          ]
          ),
      Exercise(
          color: const Color(0xFF000000),
          name: "Abdomen",
          imgName: "cat4",
          exerciseDetailsList: [],
          subExercises: [
            SubExercise(
              color: const Color(0xFF000000),
              name: "Sit-Up",
              imgName: " ",
              subExercises: [],
              exerciseDetailsList: [],
              
              ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "Leg Raise",
              imgName: " ",
              subExercises: [],
              exerciseDetailsList: [],
              
              ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "Knee In",
              imgName: " ",
              subExercises: [],
              exerciseDetailsList: [],
              
              ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "Hardstyle Plank",
              imgName: " ",
              subExercises: [],
              exerciseDetailsList: [],
              
              ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "Crunch",
              imgName: " ",
              subExercises: [],
              exerciseDetailsList: [],
              
              ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "Toe Touch",
              imgName: " ",
              subExercises: [],
              exerciseDetailsList: [],
              
              ),
          ]
          ),
      Exercise(
          color: const Color(0xFF000000),
          name: "Legs",
          imgName: "cat5",
          exerciseDetailsList: [],
          subExercises: [
            SubExercise(
              color: const Color(0xFF000000),
              name: "Prison Squat",
              imgName: " ",
              subExercises: [],
              exerciseDetailsList: [],
              
              ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "Lunge",
              imgName: " ",
              subExercises: [],
              exerciseDetailsList: [],
              
              ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "Calf Raises",
              imgName: " ",
              subExercises: [],
              exerciseDetailsList: [],
              
              ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "Side Leg Circles",
              imgName: " ",
              subExercises: [],
              exerciseDetailsList: [],
              
              ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "Sumo Squat",
              imgName: " ",
              subExercises: [],
              exerciseDetailsList: [],
              
              ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "Wall Sit",
              imgName: " ",
              subExercises: [],
              exerciseDetailsList: [],
              
              ),
          ]
          ),
      Exercise(
          color: const Color(0xFF000000),
          name: "Stretching",
          imgName: "cat6",
          exerciseDetailsList: [],
          subExercises: [
            SubExercise(
              color: const Color(0xFF000000),
              name: "Piriformis Stretch",
              imgName: " ",
              subExercises: [],
              exerciseDetailsList: [],
              
              ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "Triceps Stretch",
              imgName: " ",
              subExercises: [],
              exerciseDetailsList: [],
              
              ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "Figure Four Stretch",
              imgName: " ",
              subExercises: [],
              exerciseDetailsList: [],
              
              ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "90/90 Hip Stretch",
              imgName: " ",
              subExercises: [],
              exerciseDetailsList: [],
              
              ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "Seated Shoulder Squeeze",
              imgName: " ",
              subExercises: [],
              exerciseDetailsList: [],
              
              ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "Side Bend Stretch",
              imgName: " ",
              subExercises: [],
              exerciseDetailsList: [],
              
              ),
          ]
          )
    ];
  }
}
