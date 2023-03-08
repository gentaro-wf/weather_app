import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:weather_app/src/utils/second_to_tiem_converter.dart';

part 'weather.freezed.dart';
part 'weather.g.dart';

@freezed
class Weather with _$Weather {
  const Weather._();

  const factory Weather({
    /// 天気ID(https://openweathermap.org/weather-conditions#Weather-Condition-Codes-2)
    required int id,

    /// 気象条件
    required String description,

    /// 天気アイコンID(https://openweathermap.org/weather-conditions#Icon-list)
    required String icon,

    /// 位置情報
    String? locationName,

    /// 温度(摂氏)
    required double temp,

    /// 大気圧(hPa)
    required int pressure,

    /// 湿度(%)
    required int humidity,

    /// 風速(m/s)
    @JsonKey(name: 'speed') required double windSpeed,

    /// 視界(m)
    required int visibility,

    /// 最終更新時間
    @SecondToTimeConverter() @JsonKey(name: 'dt') required DateTime lastUpdate,

    /// 日の出時刻
    @SecondToTimeConverter() required DateTime sunrise,

    /// 日の入り時刻
    @SecondToTimeConverter() required DateTime sunset,
  }) = _Weather;

  factory Weather.fromJson(Map<String, Object?> json) =>
      _$WeatherFromJson(json);

  String get iconAsset => 'assets/icons/$icon.svg';

  bool get sunIsRising {
    final sunriseTime = sunrise.hour * 100 + sunrise.minute;
    final sunsetTime = sunset.hour * 100 + sunset.minute;
    final current = DateTime.now();
    final currentTime = current.hour * 100 + current.minute;

    return (currentTime >= sunriseTime && currentTime < sunsetTime);
  }
}
