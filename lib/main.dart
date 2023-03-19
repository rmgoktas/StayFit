// @author: Rifat Metehan GOKTAS (
// github: https://github.com/rmgoktas
// twitter: https://twitter.com/rmgdev0
// ) 
import "package:flutter/material.dart";
import "package:stayfit_app/helpers/utils.dart";
import "package:stayfit_app/pages/selectedexercisepage.dart";
import "package:stayfit_app/pages/welcomepage.dart";

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage ( duration: 3, goToPage: WelcomePage())
    )
  );
}

class SplashPage extends StatelessWidget {
  int duration = 0;
  Widget goToPage;

  SplashPage({required this.goToPage, required this.duration});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      Duration(seconds: this.duration), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => this.goToPage));
      }
    );

    return Scaffold(
        body: Container(
            color: Color(0xFF000000),
            alignment: Alignment.center,
            child: Image.asset('assets/icon.png')
        )
    );
  }
}
