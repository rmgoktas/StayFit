import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:stayfit_app/widgets/mainappbar.dart';

import '../widgets/drawermenu.dart';

class AirConditionPage extends StatefulWidget {
  const AirConditionPage({super.key});

  @override
  State<AirConditionPage> createState() => _AirConditionPageState();
}

class _AirConditionPageState extends State<AirConditionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(),
      drawer: MainDrawer(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [Text("Air",style: TextStyle(fontSize: 50),)],
        )
    );
  }
}
