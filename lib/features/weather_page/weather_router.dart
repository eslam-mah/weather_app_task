import 'package:go_router/go_router.dart';
import 'package:weather_app_task/features/weather_page/view%20model/bloc/get_weather_bloc.dart';
import 'package:weather_app_task/features/weather_page/views/view/weather_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class WeatherRouter {
  /// list of routes for the weather router.
  static final List<GoRoute> goRoutes = [
    /// weather page
    GoRoute(
      path: WeatherPage.routeName,
      builder: (context, state) {
        /// fetches weather data when the page is initialized.
        return BlocProvider(
          create: (context) => GetWeatherBloc(),
          child: WeatherPage(country: state.extra as String),
        );
      },
    ),
  ];
}
