import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_task/features/weather_page/data/model/weather_model.dart';
import 'package:weather_app_task/features/weather_page/data/repo/weather_repository.dart';

part 'get_weather_state.dart';

class GetWeatherCubit extends Cubit<GetWeatherState> {
  GetWeatherCubit() : super(GetWeatherInitial());

  /// instance of weather repository
  final WeatherRepository weatherRepository = WeatherRepository();

  /// fetches weather data
  Future<void> getWeatherData({required String country}) async {
    /// loading state
    emit(GetWeatherLoading());

    /// result
    final result = await weatherRepository.getWeatherData(country: country);
    result.fold(
      /// error state
      (l) {
        emit(GetWeatherError());
      },

      /// success state
      (r) {
        final weatherModel = WeatherModel.fromJson(r as Map<String, dynamic>);
        emit(GetWeatherSuccess(weatherModel: weatherModel));
      },
    );
  }
}
