import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app_task/features/weather_page/data/model/weather_model.dart';

class SecondaryWeatherData extends StatelessWidget {
  final WeatherModel weatherModel;

  ///
  /// contains secondary weather data.
  ///
  ///  parameters:
  /// - weatherModel: WeatherModel that contains weather data.
  ///
  const SecondaryWeatherData({super.key, required this.weatherModel});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        spacing: 10.h,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          /// the current average temperature of the weather data.
          CustomText(
            text:
                'AvgTemp: ${weatherModel.forecast?.forecastday?[0].day?.avgtempC ?? ''}',
          ),

          /// the current maximum temperature of the weather data.
          CustomText(
            text:
                'MaxTemp: ${weatherModel.forecast?.forecastday?[0].day?.maxtempC ?? ''}',
          ),

          /// the current minimum temperature of the weather data.
          CustomText(
            text:
                'MinTemp: ${weatherModel.forecast?.forecastday?[0].day?.mintempC ?? ''}',
          ),

          /// the current average humidity of the weather data.
          CustomText(
            text:
                'Humidity: ${weatherModel.forecast?.forecastday?[0].day?.avghumidity ?? ''}',
          ),

          /// the current pressure of the weather data.
          CustomText(
            text:
                'Pressure: ${weatherModel.forecast?.forecastday?[0].hour?[0].pressureIn ?? ''}',
          ),

          /// the current wind speed of the weather data.
          CustomText(
            text:
                'Wind: ${weatherModel.forecast?.forecastday?[0].hour?[0].windMph ?? ''}',
          ),

          /// the current visibility of the weather data.
          CustomText(
            text:
                'Visible: ${weatherModel.forecast?.forecastday?[0].hour?[0].visKm ?? ''}',
          ),
        ],
      ),
    );
  }
}

class CustomText extends StatelessWidget {
  final String text;

  ///
  /// custom text.
  ///
  ///  parameters:
  /// - text: custom text that will be displayed.
  ///
  const CustomText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(color: Colors.red, fontSize: 20.sp));
  }
}
