import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app_task/features/weather_page/data/model/weather_model.dart';

class MainWeatherData extends StatelessWidget {
  final WeatherModel weatherModel;

  ///
  /// contains main weather data.
  ///
  ///  parameters:
  /// - weatherModel: WeatherModel that contains weather data.
  ///
  const MainWeatherData({super.key, required this.weatherModel});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        spacing: 10.h,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          /// the name of the location.
          Text(
            weatherModel.location?.name ?? '',
            style: TextStyle(color: Colors.green, fontSize: 20.sp),
          ),

          /// the condition of the current weather.
          Text(
            weatherModel.current?.condition?.text ?? '',
            style: TextStyle(color: Colors.green, fontSize: 20.sp),
          ),

          /// the temperature of the current weather.
          Text(
            weatherModel.current?.tempC.toString() ?? '',
            style: TextStyle(color: Colors.green, fontSize: 20.sp),
          ),
        ],
      ),
    );
  }
}
