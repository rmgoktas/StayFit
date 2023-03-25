
// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:stayfit_app/models/onboardcontent.dart';
import 'package:stayfit_app/pages/exerciselistpage.dart';
import 'package:stayfit_app/widgets/mainappbar.dart';

import '../helpers/utils.dart';

class OnboardPage extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _OnboardPageState createState() => _OnboardPageState();
}

class _OnboardPageState extends State<OnboardPage> {
  final List<OnboardContent> _content = Utils.getOnboard();
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
        body: Column(
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
                              padding: const EdgeInsets.all(50),
                              margin: const EdgeInsets.only(
                                  left: 40, right: 40, top: 40, bottom: 40),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50),
                                  boxShadow: [
                                    BoxShadow(
                                        color: const Color.fromARGB(255, 0, 0, 0)
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
                                      const SizedBox(
                                        height: 21,
                                      ),
                                      Text(
                                        _content[index].message,
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(fontSize: 17),
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
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeInOut,
                          );
                        },
                        child: Container(
                          width: 20,
                          height: 20,
                          margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                width: 6,
                                color: pageIndex == index
                                    ? const Color.fromARGB(255, 129, 129, 129)
                                    : Theme.of(context).canvasColor,
                              )),
                        ),
                      )),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
                width: double
                    .infinity, // Butonun genişliğini tam olarak kaplaması için
                padding:
                    const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
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
                    color: const Color.fromARGB(255, 0, 0, 0),
                    padding: const EdgeInsets.all(25),
                    child: const Text("Let's Exercise !",
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 18,
                            fontWeight: FontWeight.bold)))),
            const SizedBox(
              height: 50,
            ),
          ],
        ));
  }
}
