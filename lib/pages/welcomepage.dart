import "package:flutter/material.dart";
import "package:stayfit_app/pages/exerciselistpage.dart";
import "package:stayfit_app/pages/onboardpage.dart";
import "package:stayfit_app/services/loginService.dart";

class WelcomePage extends StatelessWidget {
  LoginService loginService = LoginService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: Colors.black,
            child: Stack(children: [
              Positioned.fill(
                  child: Opacity(
                opacity: 0.5,
                child:
                    Image.asset("assets/welcomeback.jpg", fit: (BoxFit.cover)),
              )),
              Center(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                    Center(
                      child: ClipOval(
                          child: Container(
                        width: 180,
                        height: 180,
                        color: const Color.fromARGB(120, 255, 255, 255),
                        alignment: Alignment.center,
                        child: Image.asset(
                          "assets/blackicon.png",
                        ),
                      )),
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      "Welcome !",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 45),
                    const Text(
                      "Start the change today.",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    const SizedBox(height: 70),
                    Padding(
                        padding: const EdgeInsets.all(20),
                        child: MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => OnboardPage()));
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                            color: const Color.fromARGB(255, 255, 255, 255),
                            padding: const EdgeInsets.all(25),
                            child: const Text("Start Onboarding",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold)))),
                    Container(
                      margin: const EdgeInsets.only(
                          left: 20, right: 20, bottom: 20, top: 50),
                      child: ClipRRect(
                        //splashin borderını kırpar, değer butonla aynı verilmedilir
                        borderRadius: BorderRadius.circular(50),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            splashColor:
                                const Color.fromARGB(255, 255, 255, 255)
                                    .withOpacity(0.2),
                            highlightColor:
                                const Color.fromARGB(255, 255, 255, 255)
                                    .withOpacity(0.2),
                            onTap: () async {
                              bool success =
                                  await loginService.signInWithGoogle();
                              if (success) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          ExerciseListPage()));
                              }
                            },
                            child: Container(
                              padding: const EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.transparent,
                                  border: Border.all(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      width: 4)),
                              child: const Text(
                                "Start Now",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                          left: 20, right: 20, bottom: 20),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              splashColor:
                                  const Color.fromARGB(255, 255, 255, 255)
                                      .withOpacity(0.2),
                              highlightColor:
                                  const Color.fromARGB(255, 255, 255, 255)
                                      .withOpacity(0.2),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ExerciseListPage()));
                              },
                              child: Container(
                                padding: const EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.transparent,
                                    border: Border.all(
                                        color: const Color.fromARGB(
                                            255, 255, 255, 255),
                                        width: 4)),
                                child: const Text(
                                  "Sign in",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            )),
                      ),
                    )
                  ]))
            ])));
  }
}
