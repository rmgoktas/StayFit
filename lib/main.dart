// @author: Rifat Metehan GOKTAS (
// github: https://github.com/rmgoktas
// twitter: https://twitter.com/rmgdev0
// )
// ignore_for_file: must_be_immutable, use_key_in_widget_constructors


import "package:flutter/material.dart";
import "package:stayfit_app/pages/welcomepage.dart";

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(duration: 3, goToPage: const WelcomePage())
     )
  );
}

class SplashPage extends StatelessWidget {
  int duration = 0;
  Widget goToPage;

  SplashPage({required this.goToPage, required this.duration});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: duration), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => goToPage));
    });

    return Scaffold(
        body: Container(
            color: const Color(0xFF000000),
            alignment: Alignment.center,
            child: Image.asset('assets/icon.png')));
  }
}
