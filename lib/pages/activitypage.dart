import 'package:flutter/material.dart';
import 'package:stayfit_app/widgets/exercisenavbar.dart';
import 'package:stayfit_app/widgets/mainappbar.dart';
import 'package:stayfit_app/widgets/dates.dart';
import 'package:stayfit_app/widgets/steps.dart';
import 'package:stayfit_app/widgets/graph.dart';
import 'package:stayfit_app/widgets/info.dart';

class ActivityPage extends StatelessWidget {
  const ActivityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: MainAppBar(),  
      body: Column(
        children: const [
          Dates(),
          Steps(),
          Graph(),
          Info(),
          SizedBox(height: 25),
          ExerciseNavBar()
        ],
      )
    );
  }
}
