import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app_task/features/weather_page/data/model/weather_model.dart';
import 'package:intl/intl.dart';
import 'package:weather_app_task/core/config/assets_box.dart';

part 'weather_list_item.dart';

class WeatherList extends StatelessWidget {
  final WeatherModel weatherModel;

  ///
  /// contains weather data for every hour.
  ///
  ///  parameters:
  /// - weatherModel: WeatherModel that contains weather data.
  ///
  const WeatherList({super.key, required this.weatherModel});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: SizedBox(
        height: 200.h,

        ///
        /// the list of weather items will be displayed in a horizontal scroll.
        ///
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 7.w),

              ///
              /// each item in the list will be a WeatherListItem widget.
              ///
              child: WeatherListItem(
                hour:
                    weatherModel.forecast?.forecastday?[0].hour?[index] ??
                    Hour(),
              ),
            );
          },
        ),
      ),
    );
  }
}
