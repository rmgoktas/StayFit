import 'package:flutter/material.dart';
import 'package:stayfit_app/widgets/mainappbar.dart';

class StepCounterPage extends StatefulWidget {
  const StepCounterPage({Key? key}) : super(key: key);

  @override
  _StepCounterPageState createState() => _StepCounterPageState();
}

class _StepCounterPageState extends State<StepCounterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(),
      body: Center(
        child: Text('This is the Step Counter Page'),
      ),
    );
  }
}