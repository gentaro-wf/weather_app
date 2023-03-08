import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_app/src/models/weather.dart';
import 'package:weather_app/src/utils/dio_provider.dart';

class WeatherRepository {
  WeatherRepository({
    required this.client,
  });

  final Dio client;

  Future<Weather> getCurrentWeather(Position position) async {
    final response = await client.get(
      '/weather',
      queryParameters: {
        'lat': position.latitude,
        'lon': position.longitude,
      },
    );
    if (response.statusCode == 200) {
      final weatherMap = response.data as Map;
      return _mapToWeather(weatherMap);
    } else {
      throw Exception(
          'HTTPエラー ${response.statusCode}:{response.statusMessage}');
    }
  }

  Weather _mapToWeather(Map map) {
    if (map.containsKey('weather')) {
      var weatherList = map['weather'] as List;
      if (weatherList.isEmpty) {
        throw Exception('weather length is zero');
      }

      var weatherMap = weatherList[0] as Map<String, dynamic>;
      final mainMap = map['main'] ?? {};
      final windMap = map['wind'] ?? {};
      final visibilityValue = map['visibility'] ?? 0;
      final dtValue = map['dt'] ?? 0;
      final sysMap = map['sys'] ?? {};
      weatherMap.addAll(mainMap);
      weatherMap.addAll(windMap);
      weatherMap['visibility'] = visibilityValue;
      weatherMap['dt'] = dtValue;
      weatherMap.addAll(sysMap);

      return Weather.fromJson(weatherMap);
    } else {
      throw Exception('気象情報データのフォーマットが正しくありません');
    }
  }
}

final weatherRepositoryProvider = Provider<WeatherRepository>((ref) {
  final client = ref.watch(dioProvider);
  return WeatherRepository(
    client: client,
  );
});
