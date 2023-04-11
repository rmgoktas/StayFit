// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:stayfit_app/pages/bmioutputpage.dart';
import 'package:stayfit_app/helpers/funcHelpers.dart';
import 'package:stayfit_app/widgets/mainappbar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender {
  male,
  female,
}

class BmiInputPage extends StatefulWidget {
  const BmiInputPage({super.key});

  @override
  State<BmiInputPage> createState() => _BmiInputPageState();
}

class _BmiInputPageState extends State<BmiInputPage> {
  Color inactiveColor = Colors.white;
  Color activeColor = const Color.fromARGB(255, 25, 247, 96);
  int height = 178;
  int weight = 62;
  int age = 21;
  Gender selectedGender = Gender.male;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: MainAppBar(),
        body: Column(
          children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.all(20),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: selectedGender == Gender.male
                              ? activeColor
                              : inactiveColor),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Icon(FontAwesomeIcons.male,
                              color: Colors.black, size: 45),
                          SizedBox(height: 10),
                          Text(
                            "Male",
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.all(20),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: selectedGender == Gender.female
                              ? activeColor
                              : inactiveColor),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Icon(FontAwesomeIcons.female,
                              color: Colors.black, size: 45),
                          SizedBox(height: 10),
                          Text(
                            "Female",
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: Container(
              color: inactiveColor,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Height",
                      style: TextStyle(
                        fontSize: 23,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          //text öğresi içerisinde sayısal değer göstermek için tostring kullanılır
                          height.toString(),
                          style: const TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        const Text(
                          "cm",
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        )
                      ],
                    ),
                    SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          //copywith değer değişirken aynı özellikleri kopyalar
                          activeTrackColor: const Color.fromARGB(255, 18, 255, 33),
                          overlayColor:
                              const Color.fromARGB(255, 28, 119, 46).withOpacity(0.6),
                          inactiveTrackColor: const Color.fromARGB(255, 0, 0, 0),
                          thumbShape:
                              const RoundSliderThumbShape(enabledThumbRadius: 12),
                          overlayShape:
                              const RoundSliderOverlayShape(overlayRadius: 24),
                          thumbColor: const Color.fromARGB(255, 25, 247, 96),
                        ),
                        child: Slider(
                          value: height.toDouble(),
                          //slider'ın value özell. double olması gerekiyor
                          min: 100,
                          max: 250,
                          onChanged: (double v) {
                            setState(() {
                              height = v.round();
                              //v değişkeni kullanıcı seçimini tutar, yuvarlar ve height'in yeni durumu oluşur
                            });
                          },
                        ))
                  ]),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color.fromARGB(255, 25, 247, 96)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Weight",
                        style: TextStyle(fontSize: 20),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        weight.toString(),
                        style: const TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                            child: IconButton(
                              icon: const Icon(Icons.remove,
                                  color: Color.fromARGB(255, 255, 255, 255)),
                              onPressed: () {
                                setState(() {
                                  if (weight > 0) {
                                    weight--;
                                  }
                                });
                              },
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          CircleAvatar(
                            backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                            child: IconButton(
                              icon: const Icon(Icons.add,
                                  color: Color.fromARGB(255, 255, 255, 255)),
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                //expanded weight'den kalan boşluğun hepsini kullandırttırır
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.all(10),
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: const Color.fromARGB(255, 25, 247, 96)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Age",
                                style: TextStyle(fontSize: 20),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                age.toString(),
                                style: const TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    backgroundColor:
                                        const Color.fromARGB(255, 0, 0, 0),
                                    child: IconButton(
                                      icon: const Icon(Icons.remove,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255)),
                                      onPressed: () {
                                        setState(() {
                                          if (age > 0) {
                                            age--;
                                          }
                                        });
                                      },
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  CircleAvatar(
                                    backgroundColor:
                                        const Color.fromARGB(255, 0, 0, 0),
                                    child: IconButton(
                                      icon: const Icon(Icons.add,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255)),
                                      onPressed: () {
                                        setState(() {
                                          age++;
                                        });
                                      },
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              navigateToBmiOutputScreen(double.nan);
            },
            child: Container(
                padding: const EdgeInsets.only(bottom: 25),
                margin: const EdgeInsets.only(top: 10),
                width: double.infinity,
                height: 80,
                color: const Color.fromARGB(255, 255, 255, 255),
                child: const Center(
                  child: Text(
                    "CALCULATE",
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                )),
          )
        ]));
  }

  void navigateToBmiOutputScreen(double result) {
    CalculateResult obj = CalculateResult(height, weight);
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => BmiOutputPage(
                obj.calculateResult(), obj.msg, obj.getDescription())));
  }
}
