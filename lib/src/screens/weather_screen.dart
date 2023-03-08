import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/src/models/weather.dart';
import 'package:weather_app/src/screens/widgets/weather_info.dart';
import 'package:weather_app/src/services/weather_service.dart';

class WeatherScreen extends ConsumerWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final weatherService = ref.watch(weatherServiceProvider);

    return FutureBuilder(
      future: weatherService.getCurrentWeather(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final weather = snapshot.data as Weather;

          return Scaffold(
            backgroundColor:
                weather.sunIsRising ? Colors.blue.shade300 : Colors.black,
            body: SingleChildScrollView(
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              ref.refresh(weatherServiceProvider);
                            },
                            icon: const Icon(
                              Icons.location_searching,
                              color: Colors.white,
                              size: 32.0,
                            ),
                          ),
                        ],
                      ),
                      // 位置情報
                      Text(
                        '${weather.locationName}',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: Colors.white,
                            ),
                      ),
                      const SizedBox(height: 8.0),
                      // 日付
                      Text(
                        DateFormat.yMEd('ja').format(weather.lastUpdate),
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              color: Colors.white,
                            ),
                      ),
                      const SizedBox(height: 8.0),
                      // 天気アイコン
                      SvgPicture.asset(
                        weather.iconAsset,
                        width: 128.0,
                        height: 128.0,
                      ),
                      const SizedBox(height: 8.0),
                      // 気温
                      Text(
                        '${weather.temp.toStringAsFixed(1)}℃',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: Colors.white,
                            ),
                      ),
                      // 天気
                      Text(
                        weather.description,
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: Colors.white,
                            ),
                      ),
                      const SizedBox(height: 24.0),
                      // 最終更新時間
                      Text(
                        '最終更新時間 ${DateFormat.Hm().format(weather.lastUpdate)}',
                        style: Theme.of(context).textTheme.labelLarge!.copyWith(
                              color: Colors.white,
                            ),
                      ),
                      const SizedBox(height: 24.0),
                      GridView(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 16.0,
                          mainAxisSpacing: 16.0,
                          childAspectRatio: 2 / 1,
                        ),
                        children: [
                          // 湿度
                          WeatherInfo(
                            value: '${weather.humidity} %',
                            title: '湿度',
                            iconAsset: 'assets/icons/humidity.svg',
                          ),
                          // 気圧
                          WeatherInfo(
                            value: '${weather.pressure} hPa',
                            title: '気圧',
                            iconAsset: 'assets/icons/pressure.svg',
                          ),
                          // 風速
                          WeatherInfo(
                            value: '${weather.windSpeed} m/s',
                            title: '風速',
                            iconAsset: 'assets/icons/wind.svg',
                          ),
                          // 視界
                          WeatherInfo(
                            value: '${weather.visibility / 1000} km',
                            title: '視界',
                            iconAsset: 'assets/icons/visibility.svg',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        }

        if (snapshot.hasError) {
          return Scaffold(
            body: Center(
              child: Text(
                snapshot.error.toString(),
              ),
            ),
          );
        }

        return const Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
