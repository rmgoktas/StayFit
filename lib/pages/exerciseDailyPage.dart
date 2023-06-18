import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../helpers/databaseHelper.dart';
import '../widgets/mainappbar.dart';
import 'exerciseDailyLogPage.dart';

class ExerciseDailyPage extends StatefulWidget {
  const ExerciseDailyPage({Key? key}) : super(key: key);

  @override
  _ExerciseDailyPageState createState() => _ExerciseDailyPageState();
}

class _ExerciseDailyPageState extends State<ExerciseDailyPage> {
  TextEditingController _exerciseController = TextEditingController();
  TextEditingController _setController = TextEditingController();
  List<Map<String, dynamic>> _exerciseList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Today: ${DateFormat('yyyy-MM-dd').format(DateTime.now())}',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _exerciseController,
              style: TextStyle(color: Colors.black),
              decoration: const InputDecoration(
                labelText: 'Exercise',
                labelStyle: TextStyle(color: Colors.black),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _setController,
              style: TextStyle(color: Colors.black),
              decoration: const InputDecoration(
                labelText: 'Sets',
                labelStyle: TextStyle(color: Colors.black),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                _addExercise();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
              ),
              child: Text('Add an Exercise'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                _viewExerciseLog();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
              ),
              child: Text("View Today's Exercises"),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                _clearLog();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
              ),
              child: Text('Clear My Daily'),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _addExercise() async {
    final exercise = _exerciseController.text;
    final sets = int.tryParse(_setController.text);

    if (exercise.isNotEmpty && sets != null) {
      final date = DateFormat('dd-MM-yyyy').format(DateTime.now());
      final exerciseId = await DatabaseHelper.instance.addExercise(exercise, sets, date);

      final exerciseData = {
        'id': exerciseId,
        'exercise': exercise,
        'sets': sets,
        'date': date,
      };

      setState(() {
        _exerciseList.add(exerciseData);
        _exerciseController.clear();
        _setController.clear();
      });

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Exercise added to log')),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please enter exercise and sets')),
      );
    }
  }


  Future<void> _viewExerciseLog() async {
    final date = DateFormat('dd-MM-yyyy').format(DateTime.now());
    final exerciseList = await DatabaseHelper.instance.getExercisesByDate(date);

        Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ExerciseDailyLogPage(
          exerciseList: exerciseList,
        ),
      ),
    );
  }

  Future<void> _clearLog() async {
    await DatabaseHelper.instance.clearLog();

    setState(() {
      _exerciseList.clear();
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Exercise log cleared')),
    );
  }
}
