import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:weather_app/src/app.dart';

void main() async {
  await initializeDateFormatting('ja');
  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}
