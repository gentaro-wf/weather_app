import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_app/src/models/weather.dart';
import 'package:weather_app/src/repositories/weather_repository.dart';
import 'package:weather_app/src/services/geocoding_service.dart';
import 'package:weather_app/src/services/geolocator_service.dart';
import 'package:weather_app/src/utils/exceptions.dart';

class WeatherService {
  WeatherService({
    required this.weatherRepository,
    required this.geoLocatorService,
    required this.geoCodingService,
  });

  final WeatherRepository weatherRepository;
  final GeoLocatorService geoLocatorService;
  final GeoCodingService geoCodingService;

  Future<Weather> getCurrentWeather() async {
    final locationServiceEnabled =
        await geoLocatorService.locationServiceEnabled();
    if (locationServiceEnabled == false) {
      throw const LocationServiceDisabledException();
    }

    final locationPermission =
        await geoLocatorService.checkLocationPermission();
    if (locationPermission) {
      final position = await geoLocatorService.getCurrentPosition();
      final weather = await weatherRepository.getCurrentWeather(position);
      final location =
          await geoCodingService.getLocationName(position: position);
      return weather.copyWith(locationName: location);
    } else {
      throw LocationPermissionDenyException();
    }
  }
}

final weatherServiceProvider = Provider<WeatherService>((ref) {
  final weatherRepository = ref.watch(weatherRepositoryProvider);
  final geoLocatorService = ref.watch(geoLocatorServiceProvider);
  final geoCodingService = ref.watch(geoCodingServiceProvider);
  return WeatherService(
    weatherRepository: weatherRepository,
    geoLocatorService: geoLocatorService,
    geoCodingService: geoCodingService,
  );
});
