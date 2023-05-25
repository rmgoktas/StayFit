import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _shareExerciseLog(exerciseList);
        },
        backgroundColor: Colors.black,
        child: Icon(Icons.share),
      ),
    );
  }

  Future<void> _shareExerciseLog(List<String> exerciseList) async {
    final contents = exerciseList.join('\n');
    await Share.share(contents, subject: 'Exercise Log');
  }
}