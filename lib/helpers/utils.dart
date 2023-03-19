import 'package:flutter/material.dart';
import 'package:stayfit_app/models/exercise.dart';
import '../models/subexercise.dart';


class Utils {
  static List<Exercise> getMockedExercises() {
    return [
      Exercise(
          color: const Color(0xFF000000),
          name: "Chest",
          imgName: "cat1",
          subExercises: [
            SubExercise(
              color: const Color(0xFF000000),
              name: "Spartan Push Up",
              imgName: " ",
              subExercises: []
              ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "Chest Stretching Push Up",
              imgName: " ",
              subExercises: []
              ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "Hands On Bench Push Up",
              imgName: " ",
              subExercises: []
              ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "Jump Push Up",
              imgName: " ",
              subExercises: []
              ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "Feet On Bench Push Up",
              imgName: " ",
              subExercises: []
              ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "Side to Side Push Up",
              imgName: " ",
              subExercises: []
              ),
          ]
      ),
      Exercise(
          color: const Color(0xFF000000),
          name: "Biceps, Triceps - Shoulder",
          imgName: "cat2",
          subExercises: [
            SubExercise(
              color: const Color(0xFF000000),
              name: "Side Arm Raises",
              imgName: " ",
              subExercises: []
              ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "Triceps Dips",
              imgName: " ",
              subExercises: []
              ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "Leg Barbell Curl",
              imgName: " ",
              subExercises: []
              ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "Burpees",
              imgName: " ",
              subExercises: []
              ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "Diagonal Plank",
              imgName: " ",
              subExercises: []
              ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "Wall Push-Ups",
              imgName: " ",
              subExercises: []
              ),
          ]
          ),
      Exercise(
          color: const Color(0xFF000000),
          name: "Back",
          imgName: "cat3",
          subExercises: [
            SubExercise(
              color: const Color(0xFF000000),
              name: "Superman",
              imgName: " ",
              subExercises: []
              ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "Hover Push-Up",
              imgName: " ",
              subExercises: []
              ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "Bird Dog",
              imgName: " ",
              subExercises: []
              ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "Hip Hinge",
              imgName: " ",
              subExercises: []
              ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "Body Weight Cable Row",
              imgName: " ",
              subExercises: []
              ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "Incline Push-Up",
              imgName: " ",
              subExercises: []
              ),
          ]
          ),
      Exercise(
          color: const Color(0xFF000000),
          name: "Abdomen",
          imgName: "cat4",
          subExercises: [
            SubExercise(
              color: const Color(0xFF000000),
              name: "Sit-Up",
              imgName: " ",
              subExercises: []
              ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "Leg Raise",
              imgName: " ",
              subExercises: []
              ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "Knee In",
              imgName: " ",
              subExercises: []
              ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "Hardstyle Plank",
              imgName: " ",
              subExercises: []
              ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "Crunch",
              imgName: " ",
              subExercises: []
              ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "Toe Touch",
              imgName: " ",
              subExercises: []
              ),
          ]
          ),
      Exercise(
          color: const Color(0xFF000000),
          name: "Legs",
          imgName: "cat5",
          subExercises: [
            SubExercise(
              color: const Color(0xFF000000),
              name: "Prison Squat",
              imgName: " ",
              subExercises: []
              ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "Lunge",
              imgName: " ",
              subExercises: []
              ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "Calf Raises",
              imgName: " ",
              subExercises: []
              ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "Side Leg Circles",
              imgName: " ",
              subExercises: []
              ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "Sumo Squat",
              imgName: " ",
              subExercises: []
              ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "Wall Sit",
              imgName: " ",
              subExercises: []
              ),
          ]
          ),
      Exercise(
          color: const Color(0xFF000000),
          name: "Stretching",
          imgName: "cat6",
          subExercises: [
            SubExercise(
              color: const Color(0xFF000000),
              name: "Piriformis Stretch",
              imgName: " ",
              subExercises: []
              ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "Triceps Stretch",
              imgName: " ",
              subExercises: []
              ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "Figure Four Stretch",
              imgName: " ",
              subExercises: []
              ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "90/90 Hip Stretch",
              imgName: " ",
              subExercises: []
              ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "Seated Shoulder Squeeze",
              imgName: " ",
              subExercises: []
              ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "Side Bend Stretch",
              imgName: " ",
              subExercises: []
              ),
          ]
          )
    ];
  }
}
