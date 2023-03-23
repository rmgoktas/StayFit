import 'dart:ffi';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:stayfit_app/models/onboardcontent.dart';
import 'package:stayfit_app/pages/exerciselistpage.dart';
import 'package:stayfit_app/pages/welcomepage.dart';
import 'package:stayfit_app/widgets/mainappbar.dart';

import '../helpers/utils.dart';

class OnboardPage extends StatefulWidget {
  @override
  _OnboardPageState createState() => _OnboardPageState();
}

class _OnboardPageState extends State<OnboardPage> {
  List<OnboardContent> _content = Utils.getOnboard();
  int pageIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MainAppBar(),
        body: Container(
          child: Column(
            children: [
              Expanded(
                  child: PageView(
                      controller: _controller,
                      onPageChanged: (int page) {
                        setState(() {
                          pageIndex = page;
                        });
                      },
                      children: List.generate(
                          _content.length,
                          (index) => Container(
                                padding: EdgeInsets.all(50),
                                margin: EdgeInsets.only(
                                    left: 40, right: 40, top: 40, bottom: 40),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color.fromARGB(255, 0, 0, 0)
                                              .withOpacity(0.3),
                                          blurRadius: 30,
                                          offset: Offset.zero)
                                    ]),
                                child: Column(
                                  children: [
                                    Expanded(
                                        child: Column(
                                      children: [
                                        Image.asset(
                                            'assets/onboardpage/${_content[index].imgName}'),
                                        SizedBox(
                                          height: 21,
                                        ),
                                        Text(
                                          _content[index].message,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(fontSize: 17),
                                        ),
                                      ],
                                    )),
                                    
                                  ],
                                ),
                              )))),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                    _content.length,
                    (index) => GestureDetector(
                          onTap: () {
                            _controller.animateTo(
                              MediaQuery.of(context).size.width * index,
                              duration: Duration(milliseconds: 500),
                              curve: Curves.easeInOut,
                            );
                          },
                          child: Container(
                            width: 20,
                            height: 20,
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  width: 6,
                                  color: pageIndex == index
                                      ? Color.fromARGB(255, 129, 129, 129)
                                      : Theme.of(context).canvasColor,
                                )),
                          ),
                        )),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  width: double
                      .infinity, // Butonun genişliğini tam olarak kaplaması için
                  padding:
                      EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
                  child: MaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context, 
                          MaterialPageRoute(
                            builder: (context) => ExerciseListPage() 
                          )
                        );
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      color: Color.fromARGB(255, 0, 0, 0),
                      padding: const EdgeInsets.all(25),
                      child: Text("Let's Exercise !",
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 18,
                              fontWeight: FontWeight.bold)))),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ));
  }
}
