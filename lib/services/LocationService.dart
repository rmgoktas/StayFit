import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';

class LocationService {
  Future<Position?> getCurrentLocation() async {
    try {
      // Konum izni kontrol edilir
      PermissionStatus permissionStatus = await Permission.location.request();

      if (permissionStatus.isGranted) {
        // Konum izni verildiyse konum alınır
        Position position = await Geolocator.getCurrentPosition(
            desiredAccuracy: LocationAccuracy.high);
        return position;
      } else {
        // Konum izni reddedildiyse null döndürür
        print('Konum izni reddedildi');
        return null;
      }
    } catch (e) {
      print('Konum alınamadı: $e');
      return null;
    }
  }
}
