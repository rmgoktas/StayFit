// ignore_for_file: must_be_immutable, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import '../models/exercise.dart';

class ExerciseCard extends StatelessWidget {
  Exercise exercise;
  Function onCardClick;

  ExerciseCard({super.key, required this.exercise, required this.onCardClick});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onCardClick();
        },
        child: Container(
          margin: const EdgeInsets.all(20),
          height: 170,
          child: Stack(
            children: [
              Positioned.fill(
                  child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset('assets/exercisecards/' + exercise.imgName + '.jpeg',
                    fit: BoxFit.cover),
              )),
              Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                      height: 120,
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20)),
                          gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Colors.black.withOpacity(0.7),
                                Colors.transparent
                              ])))),
              Positioned(
                  bottom: 15,
                  left: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      children: [
                        const SizedBox(width: 10),
                        Text(exercise.name,
                            style: const TextStyle(color: Colors.white, fontSize: 20))
                      ],
                    ),
                  ))
            ],
          ),
        ));
  }
}
