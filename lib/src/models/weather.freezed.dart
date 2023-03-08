// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Weather _$WeatherFromJson(Map<String, dynamic> json) {
  return _Weather.fromJson(json);
}

/// @nodoc
mixin _$Weather {
  /// 天気ID(https://openweathermap.org/weather-conditions#Weather-Condition-Codes-2)
  int get id => throw _privateConstructorUsedError;

  /// 気象条件
  String get description => throw _privateConstructorUsedError;

  /// 天気アイコンID(https://openweathermap.org/weather-conditions#Icon-list)
  String get icon => throw _privateConstructorUsedError;

  /// 位置情報
  String? get locationName => throw _privateConstructorUsedError;

  /// 温度(摂氏)
  double get temp => throw _privateConstructorUsedError;

  /// 大気圧(hPa)
  int get pressure => throw _privateConstructorUsedError;

  /// 湿度(%)
  int get humidity => throw _privateConstructorUsedError;

  /// 風速(m/s)
  @JsonKey(name: 'speed')
  double get windSpeed => throw _privateConstructorUsedError;

  /// 視界(m)
  int get visibility => throw _privateConstructorUsedError;

  /// 最終更新時間
  @SecondToTimeConverter()
  @JsonKey(name: 'dt')
  DateTime get lastUpdate => throw _privateConstructorUsedError;

  /// 日の出時刻
  @SecondToTimeConverter()
  DateTime get sunrise => throw _privateConstructorUsedError;

  /// 日の入り時刻
  @SecondToTimeConverter()
  DateTime get sunset => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherCopyWith<Weather> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherCopyWith<$Res> {
  factory $WeatherCopyWith(Weather value, $Res Function(Weather) then) =
      _$WeatherCopyWithImpl<$Res, Weather>;
  @useResult
  $Res call(
      {int id,
      String description,
      String icon,
      String? locationName,
      double temp,
      int pressure,
      int humidity,
      @JsonKey(name: 'speed') double windSpeed,
      int visibility,
      @SecondToTimeConverter() @JsonKey(name: 'dt') DateTime lastUpdate,
      @SecondToTimeConverter() DateTime sunrise,
      @SecondToTimeConverter() DateTime sunset});
}

/// @nodoc
class _$WeatherCopyWithImpl<$Res, $Val extends Weather>
    implements $WeatherCopyWith<$Res> {
  _$WeatherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = null,
    Object? icon = null,
    Object? locationName = freezed,
    Object? temp = null,
    Object? pressure = null,
    Object? humidity = null,
    Object? windSpeed = null,
    Object? visibility = null,
    Object? lastUpdate = null,
    Object? sunrise = null,
    Object? sunset = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      locationName: freezed == locationName
          ? _value.locationName
          : locationName // ignore: cast_nullable_to_non_nullable
              as String?,
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
      pressure: null == pressure
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
      windSpeed: null == windSpeed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double,
      visibility: null == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int,
      lastUpdate: null == lastUpdate
          ? _value.lastUpdate
          : lastUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sunrise: null == sunrise
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sunset: null == sunset
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WeatherCopyWith<$Res> implements $WeatherCopyWith<$Res> {
  factory _$$_WeatherCopyWith(
          _$_Weather value, $Res Function(_$_Weather) then) =
      __$$_WeatherCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String description,
      String icon,
      String? locationName,
      double temp,
      int pressure,
      int humidity,
      @JsonKey(name: 'speed') double windSpeed,
      int visibility,
      @SecondToTimeConverter() @JsonKey(name: 'dt') DateTime lastUpdate,
      @SecondToTimeConverter() DateTime sunrise,
      @SecondToTimeConverter() DateTime sunset});
}

/// @nodoc
class __$$_WeatherCopyWithImpl<$Res>
    extends _$WeatherCopyWithImpl<$Res, _$_Weather>
    implements _$$_WeatherCopyWith<$Res> {
  __$$_WeatherCopyWithImpl(_$_Weather _value, $Res Function(_$_Weather) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = null,
    Object? icon = null,
    Object? locationName = freezed,
    Object? temp = null,
    Object? pressure = null,
    Object? humidity = null,
    Object? windSpeed = null,
    Object? visibility = null,
    Object? lastUpdate = null,
    Object? sunrise = null,
    Object? sunset = null,
  }) {
    return _then(_$_Weather(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      locationName: freezed == locationName
          ? _value.locationName
          : locationName // ignore: cast_nullable_to_non_nullable
              as String?,
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
      pressure: null == pressure
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
      windSpeed: null == windSpeed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double,
      visibility: null == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int,
      lastUpdate: null == lastUpdate
          ? _value.lastUpdate
          : lastUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sunrise: null == sunrise
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sunset: null == sunset
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Weather extends _Weather with DiagnosticableTreeMixin {
  const _$_Weather(
      {required this.id,
      required this.description,
      required this.icon,
      this.locationName,
      required this.temp,
      required this.pressure,
      required this.humidity,
      @JsonKey(name: 'speed') required this.windSpeed,
      required this.visibility,
      @SecondToTimeConverter() @JsonKey(name: 'dt') required this.lastUpdate,
      @SecondToTimeConverter() required this.sunrise,
      @SecondToTimeConverter() required this.sunset})
      : super._();

  factory _$_Weather.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherFromJson(json);

  /// 天気ID(https://openweathermap.org/weather-conditions#Weather-Condition-Codes-2)
  @override
  final int id;

  /// 気象条件
  @override
  final String description;

  /// 天気アイコンID(https://openweathermap.org/weather-conditions#Icon-list)
  @override
  final String icon;

  /// 位置情報
  @override
  final String? locationName;

  /// 温度(摂氏)
  @override
  final double temp;

  /// 大気圧(hPa)
  @override
  final int pressure;

  /// 湿度(%)
  @override
  final int humidity;

  /// 風速(m/s)
  @override
  @JsonKey(name: 'speed')
  final double windSpeed;

  /// 視界(m)
  @override
  final int visibility;

  /// 最終更新時間
  @override
  @SecondToTimeConverter()
  @JsonKey(name: 'dt')
  final DateTime lastUpdate;

  /// 日の出時刻
  @override
  @SecondToTimeConverter()
  final DateTime sunrise;

  /// 日の入り時刻
  @override
  @SecondToTimeConverter()
  final DateTime sunset;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Weather(id: $id, description: $description, icon: $icon, locationName: $locationName, temp: $temp, pressure: $pressure, humidity: $humidity, windSpeed: $windSpeed, visibility: $visibility, lastUpdate: $lastUpdate, sunrise: $sunrise, sunset: $sunset)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Weather'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('icon', icon))
      ..add(DiagnosticsProperty('locationName', locationName))
      ..add(DiagnosticsProperty('temp', temp))
      ..add(DiagnosticsProperty('pressure', pressure))
      ..add(DiagnosticsProperty('humidity', humidity))
      ..add(DiagnosticsProperty('windSpeed', windSpeed))
      ..add(DiagnosticsProperty('visibility', visibility))
      ..add(DiagnosticsProperty('lastUpdate', lastUpdate))
      ..add(DiagnosticsProperty('sunrise', sunrise))
      ..add(DiagnosticsProperty('sunset', sunset));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Weather &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.locationName, locationName) ||
                other.locationName == locationName) &&
            (identical(other.temp, temp) || other.temp == temp) &&
            (identical(other.pressure, pressure) ||
                other.pressure == pressure) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.windSpeed, windSpeed) ||
                other.windSpeed == windSpeed) &&
            (identical(other.visibility, visibility) ||
                other.visibility == visibility) &&
            (identical(other.lastUpdate, lastUpdate) ||
                other.lastUpdate == lastUpdate) &&
            (identical(other.sunrise, sunrise) || other.sunrise == sunrise) &&
            (identical(other.sunset, sunset) || other.sunset == sunset));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      description,
      icon,
      locationName,
      temp,
      pressure,
      humidity,
      windSpeed,
      visibility,
      lastUpdate,
      sunrise,
      sunset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherCopyWith<_$_Weather> get copyWith =>
      __$$_WeatherCopyWithImpl<_$_Weather>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherToJson(
      this,
    );
  }
}

abstract class _Weather extends Weather {
  const factory _Weather(
      {required final int id,
      required final String description,
      required final String icon,
      final String? locationName,
      required final double temp,
      required final int pressure,
      required final int humidity,
      @JsonKey(name: 'speed')
          required final double windSpeed,
      required final int visibility,
      @SecondToTimeConverter()
      @JsonKey(name: 'dt')
          required final DateTime lastUpdate,
      @SecondToTimeConverter()
          required final DateTime sunrise,
      @SecondToTimeConverter()
          required final DateTime sunset}) = _$_Weather;
  const _Weather._() : super._();

  factory _Weather.fromJson(Map<String, dynamic> json) = _$_Weather.fromJson;

  @override

  /// 天気ID(https://openweathermap.org/weather-conditions#Weather-Condition-Codes-2)
  int get id;
  @override

  /// 気象条件
  String get description;
  @override

  /// 天気アイコンID(https://openweathermap.org/weather-conditions#Icon-list)
  String get icon;
  @override

  /// 位置情報
  String? get locationName;
  @override

  /// 温度(摂氏)
  double get temp;
  @override

  /// 大気圧(hPa)
  int get pressure;
  @override

  /// 湿度(%)
  int get humidity;
  @override

  /// 風速(m/s)
  @JsonKey(name: 'speed')
  double get windSpeed;
  @override

  /// 視界(m)
  int get visibility;
  @override

  /// 最終更新時間
  @SecondToTimeConverter()
  @JsonKey(name: 'dt')
  DateTime get lastUpdate;
  @override

  /// 日の出時刻
  @SecondToTimeConverter()
  DateTime get sunrise;
  @override

  /// 日の入り時刻
  @SecondToTimeConverter()
  DateTime get sunset;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherCopyWith<_$_Weather> get copyWith =>
      throw _privateConstructorUsedError;
}
