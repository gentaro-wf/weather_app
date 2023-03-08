import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

class GeoCodingService {
  Future<String> getLocationName({required Position position}) async {
    final placemarks = await placemarkFromCoordinates(
      position.latitude,
      position.longitude,
      localeIdentifier: 'ja',
    );
    if (placemarks.isNotEmpty) {
      final placemark = placemarks[0];
      return '${placemark.administrativeArea}'
          '${placemark.subAdministrativeArea}'
          '${placemark.locality}'
          '${placemark.subLocality}';
    } else {
      return '';
    }
  }
}

final geoCodingServiceProvider = Provider<GeoCodingService>(
  (ref) => GeoCodingService(),
);
