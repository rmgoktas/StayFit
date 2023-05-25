import 'package:flutter/material.dart';

import '../widgets/mainappbar.dart';

class ExerciseDailyLogPage extends StatelessWidget {
  final List<String> exerciseList;

  const ExerciseDailyLogPage({Key? key, required this.exerciseList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(),
      body: ListView.builder(
        itemCount: exerciseList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(exerciseList[index], style: TextStyle(fontSize: 16.0)),
          );
        },
      ),
    );
  }
}