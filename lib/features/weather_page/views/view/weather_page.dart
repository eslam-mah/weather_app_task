import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app_task/core/config/assets_box.dart';
import 'package:weather_app_task/features/weather_page/view%20model/cubit/get_weather_cubit.dart';
import 'package:weather_app_task/features/weather_page/views/widgets/main_weather_data.dart';
import 'package:weather_app_task/features/weather_page/views/widgets/secondary_weather_data.dart';
import 'package:weather_app_task/features/weather_page/views/widgets/weather_list.dart';

class WeatherPage extends StatefulWidget {
  static const String routeName = '/weather_page';
  final String country;

  /// this page will show the weather data of the country
  ///
  /// Parameters:
  ///   - country: The country for which weather data is to be fetched.
  ///
  const WeatherPage({super.key, required this.country});

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  @override
  void initState() {
    super.initState();

    /// fetches weather data when the page is initialized.
    BlocProvider.of<GetWeatherCubit>(
      context,
    ).getWeatherData(country: widget.country);
  }

  ///
  /// returns the weather image based on the condition.
  ///
  String weatherImage(String condition) {
    switch (condition) {
      case 'Partly cloudy':
        return AssetsBox.cloudy;
      case 'Patchy rain nearby':
        return AssetsBox.rainy;
      case 'Light rain shower':
        return AssetsBox.rainy;
      case 'Sunny':
        return AssetsBox.clear;
      case 'Cloudy':
        return AssetsBox.cloudy;
      case 'Moderate rain at times':
        return AssetsBox.rainy;
      case 'Clear':
        return AssetsBox.clear;
      case 'Mist':
        return AssetsBox.snow;
      case 'Overcast':
        return AssetsBox.cloudy;
      default:
        return AssetsBox.cloudy;
    }
  }

  ///
  /// returns the weather background color based on the condition.
  ///
  Color weatherBackgroundColor(String condition) {
    switch (condition) {
      case 'Partly cloudy':
        return Colors.grey.shade800;
      case 'Sunny':
        return Colors.orange.shade300;
      case 'Patchy rain nearby':
        return Colors.blue;
      case 'Light rain shower':
        return Colors.blue;
      case 'Cloudy':
        return Colors.grey.shade800;
      case 'Moderate rain at times':
        return Colors.blue;
      case 'Clear':
        return Colors.orange.shade300;
      case 'Mist':
        return Colors.blue;
      case 'Overcast':
        return Colors.grey.shade800;
      default:
        return Colors.grey.shade800;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetWeatherCubit, GetWeatherState>(
      builder: (context, state) {
        /// if the state is loading, show a loading indicator
        if (state is GetWeatherLoading) {
          return Scaffold(
            backgroundColor: Colors.white,
            body: const Center(
              child: CircularProgressIndicator(color: Colors.green),
            ),
          );

          /// if the state is success, show the weather data
        } else if (state is GetWeatherSuccess) {
          /// condition of the current weather.
          final condition = state.weatherModel.current?.condition?.text ?? '';
          return Scaffold(
            backgroundColor: weatherBackgroundColor(condition),
            appBar: AppBar(
              backgroundColor: Colors.transparent,

              /// the title of the app bar
              title: Text(
                'Weather App',
                style: TextStyle(color: Colors.green, fontSize: 25.sp),
              ),
              centerTitle: true,
            ),
            body: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.05,
              ),
              child: Column(
                spacing: 20.h,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  /// the main weather data.
                  MainWeatherData(weatherModel: state.weatherModel),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// the weather image.
                      Image.asset(
                        weatherImage(condition),
                        height: 80.w,
                        width: 80.w,
                      ),

                      /// the secondary weather data.
                      SecondaryWeatherData(weatherModel: state.weatherModel),
                    ],
                  ),

                  /// the weather list.
                  WeatherList(weatherModel: state.weatherModel),
                ],
              ),
            ),
          );

          /// if the state is error, show an error message
        } else {
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.transparent,

              /// the title of the app bar
              title: Text(
                'Weather App',
                style: TextStyle(color: Colors.green, fontSize: 25.sp),
              ),
              centerTitle: true,
            ),

            /// the error message
            body: Center(
              child: Text(
                'There is no weather data.',
                style: TextStyle(color: Colors.red, fontSize: 25.sp),
                textAlign: TextAlign.center,
              ),
            ),
          );
        }
      },
    );
  }
}
