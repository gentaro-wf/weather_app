import 'package:json_annotation/json_annotation.dart';

class SecondToTimeConverter extends JsonConverter<DateTime, int> {
  const SecondToTimeConverter();

  @override
  DateTime fromJson(int json) {
    return DateTime.fromMillisecondsSinceEpoch(json * 1000);
  }

  @override
  int toJson(DateTime object) {
    return object.millisecondsSinceEpoch ~/ 1000;
  }
}
