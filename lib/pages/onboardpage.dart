
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
  //başlangıç fonsiyonu controller adlı bir page controller öğesi oluşturuyor

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MainAppBar(),
        body: Column(
          children: [
            Expanded(
                child: PageView(
                    controller: _controller,
                    //sayfalar arası kaydırmayı sağlar
                    onPageChanged: (int page) {
                      setState(() {
                        pageIndex = page;
                        //setState indexi değiştirerek mevcut sayfanın görünmesini sağlar
                      });
                    },
                    children: List.generate(
                        _content.length,
                        //content isimli bir liste oluşturulur ve bu listenin her elemanı container içerir
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
                                        //offset.zero x ve y'de gölge kaymasını eşitler
                                  ]),
                              child: Column(
                                children: [
                                  Expanded(
                                      child: Column(
                                    children: [
                                      Image.asset(
                                          'assets/onboardpage/${_content[index].imgName}'),
                                          //"$": string interpolasyon yöntemi. kodu daha okunaklı hale getirir
                                      const SizedBox(
                                        height: 12,
                                      ),
                                      Text(
                                        _content[index].message,
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(fontSize: 15),
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
                            //mediaquery cihazdan ekran bilgisi alır, pikselle index elemanı çarpılır her cihazda tam görünür
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeInOut,
                            //easeinout: animasyon başlangıçta ve sonda yavaşlar
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
              height: 60,
            ),
          ],
        ));
  }
}
