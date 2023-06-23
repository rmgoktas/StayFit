import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:stayfit_app/widgets/mainappbar.dart';
import '../services/LocationService.dart';
import '../services/airQualityService.dart';
import '../widgets/drawermenu.dart';


class AirConditionPage extends StatefulWidget {
  const AirConditionPage({Key? key}) : super(key: key);

  @override
  State<AirConditionPage> createState() => _AirConditionPageState();
}

class _AirConditionPageState extends State<AirConditionPage> {
  String? responseBody;
  int? _aqi;
  late Map<String, dynamic> componentsData;

  final AirQualityService airQualityService = AirQualityService();
  final LocationService locationService = LocationService();

  @override
void initState() {
  super.initState();
  fetchData();
}

Future<void> fetchData() async {
  Position? currentPosition = await locationService.getCurrentLocation();

  if (currentPosition == null) {
    print('Konum bilgisi alınamadı.');
    setState(() {
      responseBody = null;
    });
    return;
  }

  double latitude = currentPosition.latitude;
  double longitude = currentPosition.longitude;

  String? apiResponse =
      await airQualityService.makeApiRequest(latitude, longitude);

  if (apiResponse != null) {
    setState(() {
      responseBody = apiResponse;
    });

    print(apiResponse); // cevabı konsola yazdırır

    
    var jsonData = json.decode(apiResponse);
    var list = jsonData['list'];
    var mainData = list[0]['main'];
    componentsData = list[0]['components'];

    // aqi günceller
    _aqi = mainData['aqi'];

    print('AQI: $_aqi');
    print('CO: ${componentsData['co']}');
    print('O3: ${componentsData['o3']}');
    print('NH3: ${componentsData['nh3']}');
    print('NO2: ${componentsData['no2']}');
  } else {
    setState(() {
      responseBody = apiResponse;
    });
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Hata'),
          content: Text('Veriler alınamadı.'),
          actions: [
            TextButton(
              child: Text('Tamam'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
  setState(() {}); // Ekranı yeniden oluşturur
}




  Color _getAQIColor() {
    if (_aqi != null) {
      if (_aqi == 1) {
        return Colors.green; 
      } else if (_aqi == 2) {
        return Colors.yellow;
      } else if (_aqi == 3) {
        return Colors.orange; 
      } else if (_aqi == 4) {
        return Colors.red; 
      } else if (_aqi == 5) {
        return Colors.purple; 
      }
    }
    return Colors.black; 
  }

  Widget buildAirQualityInfo() {
    return Column(
      children: [
        Text(
          "Air Pollution Meter",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 100),
        Text(
          "Air Quality Index: $_aqi",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: _getAQIColor(),
          ),
        ),
        SizedBox(height: 100),
        GridView.count(
          crossAxisCount: 2,
          shrinkWrap: true, //gridview içeriğine göre kendini daraltır, 
          children: [
            Column(
              children: [
                Text(
                  "CO",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "${componentsData['co']}",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  "O3",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "${componentsData['o3']}",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  "NH3",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "${componentsData['nh3']}",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  "NO2",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "${componentsData['no2']}",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget buildLoadingIndicator() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(),
      drawer: MainDrawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (_aqi != null)
            buildAirQualityInfo(),
          if (_aqi == null)
            buildLoadingIndicator(),
        ],
      ),
    );
  }
}
