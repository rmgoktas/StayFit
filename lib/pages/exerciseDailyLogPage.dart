import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import '../widgets/mainappbar.dart';

class ExerciseDailyLogPage extends StatelessWidget {
  final List<Map<String, dynamic>> exerciseList;

  const ExerciseDailyLogPage({Key? key, required this.exerciseList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(),
      body: ListView.builder(
        itemCount: exerciseList.length,
        itemBuilder: (context, index) {
          final exercise = exerciseList[index];
          final exerciseName = exercise['exercise'];
          final date = exercise['date'];
          final sets = exercise['sets'];

          return ListTile(
            title: Text('$exerciseName - $date', style: TextStyle(fontSize: 16.0)),
            subtitle: Text('Sets: $sets'),
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

  Future<void> _shareExerciseLog(List<Map<String, dynamic>> exerciseList) async {
    final formattedList = exerciseList.map((exercise) {
      final exerciseName = exercise['exercise'];
      final date = exercise['date'];
      final sets = exercise['sets'];
      return '$exerciseName - $date (Sets: $sets)';
    }).join('\n');

    await Share.share(formattedList, subject: 'My Exercise Daily');
  }
}
