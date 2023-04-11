// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:stayfit_app/widgets/mainappbar.dart';
import 'package:stayfit_app/helpers/funcHelpers.dart';

class BmiOutputPage extends StatefulWidget {
  late String result;
  late String msg;
  late String description;
  BmiOutputPage(this.result, this.msg, this.description, {super.key});

  @override
  State<BmiOutputPage> createState() => _BmiOutputPageState();
}

class _BmiOutputPageState extends State<BmiOutputPage> {
  late CalculateResult calculator;
  
  @override
  void initState() {
    super.initState();
    calculator = CalculateResult(170, 70);
    calculator.calculateResult();
    calculator.getDescription();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Expanded(
            child: Text(
              "Your Result:",
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0)),
            ),
          ),
          Expanded(
              flex: 5,
              child: Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color.fromARGB(255, 213, 214, 212)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      widget.result,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 100,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      //!!!!!!!!
                      widget.msg,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      widget.description,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.black, 
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                      ),
                    )
                  ],
                ),
              )),
          Expanded(
              child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              color: const Color.fromARGB(255, 255, 255, 255),
              margin: const EdgeInsets.only(bottom: 10),
              child: const Text(
                "reCalculate",
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0), fontSize: 25),
              ),
            ),
          ))
        ],
      ),
    );
  }
}
