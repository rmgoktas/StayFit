import 'package:flutter/material.dart';

class ExerciseNavBar extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(1), 
        boxShadow: [
        BoxShadow(
            blurRadius: 20,
            color: Colors.black.withOpacity(0.2),
            offset: Offset.zero)
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ClipOval(
            child: Material(
              child: IconButton(
                onPressed: () {},
                icon: Image.asset("assets/home.png", width: 25, height: 25),
              ),
            ),
          ),
          ClipOval(
            child: Material(
              child: IconButton(
                onPressed: () {},
                icon: Image.asset("assets/steps.png", width: 25, height: 25),
              ),
            ),
          ),
          ClipOval(
            child: Material(
              child: IconButton(
                onPressed: () {},
                icon: Image.asset("assets/bmi.png", width: 25, height: 25),
              ),
            ),
          ),
          ClipOval(
            child: Material(
              child: IconButton(
                onPressed: () {},
                icon: Image.asset("assets/timer.png", width: 25, height: 25),
              ),
            ),
          )
        ],
      ),
    );
  }
}
