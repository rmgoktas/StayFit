import 'package:http/http.dart' as http;

class AirQualityService {
  Future<String?> makeApiRequest(double latitude, double longitude) async {
    // API isteğini gerçekleştirir
    String apiUrl =
        'http://api.openweathermap.org/data/2.5/air_pollution?lat=$latitude&lon=$longitude&appid=d01fe33af242525c08302b79988cc0df';

    try {
      http.Response response = await http.get(Uri.parse(apiUrl));

      if (response.statusCode == 200) {
        return response.body;
      } else {
        print('API isteği başarısız. Hata kodu: ${response.statusCode}');
        return '';
      }
    } catch (e) { //Try bloğundaki kodlarda hata meydana gelirse e'nin içine atılır.
      print('API isteği başarısız: $e');
      return '';
    }
  }
}
