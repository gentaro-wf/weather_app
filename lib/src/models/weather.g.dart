// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Weather _$$_WeatherFromJson(Map<String, dynamic> json) => _$_Weather(
      id: json['id'] as int,
      description: json['description'] as String,
      icon: json['icon'] as String,
      locationName: json['locationName'] as String?,
      temp: (json['temp'] as num).toDouble(),
      pressure: json['pressure'] as int,
      humidity: json['humidity'] as int,
      windSpeed: (json['speed'] as num).toDouble(),
      visibility: json['visibility'] as int,
      lastUpdate: const SecondToTimeConverter().fromJson(json['dt'] as int),
      sunrise: const SecondToTimeConverter().fromJson(json['sunrise'] as int),
      sunset: const SecondToTimeConverter().fromJson(json['sunset'] as int),
    );

Map<String, dynamic> _$$_WeatherToJson(_$_Weather instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'icon': instance.icon,
      'locationName': instance.locationName,
      'temp': instance.temp,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
      'speed': instance.windSpeed,
      'visibility': instance.visibility,
      'dt': const SecondToTimeConverter().toJson(instance.lastUpdate),
      'sunrise': const SecondToTimeConverter().toJson(instance.sunrise),
      'sunset': const SecondToTimeConverter().toJson(instance.sunset),
    };
