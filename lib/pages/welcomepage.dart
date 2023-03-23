import "package:flutter/material.dart";
import "package:stayfit_app/pages/exerciselistpage.dart";
import "package:stayfit_app/pages/onboardpage.dart";

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: Colors.black,
            child: Stack(children: [
              Positioned.fill(
                  child: Opacity(
                  opacity: 0.3,
                  child: Image.asset(
                    "assets/welcomeback.jpg", 
                    fit: (BoxFit.cover)
                  ),
                )
              ),
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
                          color: Color.fromARGB(120, 255, 255, 255),
                          alignment: Alignment.center,
                          child: Image.asset(
                            "assets/blackicon.png",
                          ),
                        )
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Welcome !",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 35),
                    Text(
                      "Start the change today.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white, 
                        fontSize: 15),
                    ),
                    SizedBox(height: 50),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                            builder: (context) => OnboardPage()
                            )
                          );
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)
                        ),
                        color: Color.fromARGB(255, 255, 255, 255),
                        padding: const EdgeInsets.all(25),
                        child: Text("Start Onboarding",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                           )
                         )
                       )
                     ),
                    Container(
                      margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            splashColor: Color.fromARGB(255, 255, 255, 255).withOpacity(0.2),
                            highlightColor: Color.fromARGB(255, 255, 255, 255).withOpacity(0.2),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ExerciseListPage()
                                )
                              );
                            },
                            child: Container(
                              padding: const EdgeInsets.all(20),
                              child: Text(
                                "Start Now",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.transparent,
                                border: Border.all(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  width: 4
                                )
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              splashColor: Color.fromARGB(255, 255, 255, 255)
                                  .withOpacity(0.2),
                              highlightColor: Color.fromARGB(255, 255, 255, 255)
                                  .withOpacity(0.2),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ExerciseListPage()
                                    )
                                );
                              },
                              child: Container(
                                padding: const EdgeInsets.all(20),
                                child: Text(
                                  "Sign in",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.transparent,
                                    border: Border.all(
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                        width: 4
                                    )
                                 ),
                              ),
                            )
                          ),
                      ),
                    )
                  ]
              )
            )
          ]
        )
      )
    );
  }
}
