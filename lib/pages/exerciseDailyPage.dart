import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

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
  List<String> _exerciseList = [];

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
              'Today: ${DateTime.now().toString().split(' ')[0]}',
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
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                _shareExerciseLog();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
              ),
              child: Text('Share My Exercise Daily'),
            ),
          ],
        ),
      ),
    );
  }

  Future<File> _getLogFile() async {
    final directory = await getApplicationDocumentsDirectory();
    final file = File('${directory.path}/exercise_log.txt');
    return file;
  }

  Future<void> _addExercise() async {
    final exercise = _exerciseController.text;
    final sets = _setController.text;

    if (exercise.isNotEmpty && sets.isNotEmpty) {
      final file = await _getLogFile();
      final entry = '${DateTime.now().toString().split(' ')[0]}: $exercise ($sets sets)\n';
      await file.writeAsString(entry, mode: FileMode.append);

      setState(() {
        _exerciseList.add(entry);
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
    final file = await _getLogFile();
    final fileExists = await file.exists();

    if (fileExists) {
      final contents = await file.readAsString();
      final lines = contents.split('\n');

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ExerciseDailyLogPage(
            exerciseList: lines,
          ),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Exercise log not found')),
      );
    }
  }

  Future<void> _clearLog() async {
    final file = await _getLogFile();
    await file.writeAsString('');

    setState(() {
      _exerciseList.clear();
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Exercise log cleared')),
    );
  }
  Future<void> _shareExerciseLog() async {
  final file = await _getLogFile();
  final fileExists = await file.exists();

  if (fileExists) {
    final contents = await file.readAsString();

    await Share.share(contents, subject: 'Exercise Log');
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Exercise log not found')),
    );
  }
}
}
