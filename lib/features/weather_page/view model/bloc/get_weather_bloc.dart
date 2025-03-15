import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_task/features/weather_page/data/model/weather_model.dart';
import 'package:weather_app_task/features/weather_page/data/repo/weather_repository.dart';

part 'get_weather_event.dart';
part 'get_weather_state.dart';

class GetWeatherBloc extends Bloc<GetWeatherEvent, GetWeatherState> {
  /// Instance of WeatherRepository.
  final WeatherRepository weatherRepository = WeatherRepository();

  GetWeatherBloc() : super(GetWeatherInitial()) {
    on<FetchWeather>((event, emit) async {
      emit(GetWeatherLoading());

      /// result that fetch weather data.
      final result = await weatherRepository.getWeatherData(
        country: event.country,
      );
      result.fold(
        /// Error state
        (failure) => emit(GetWeatherError()),

        /// Success state
        (data) {
          final weatherModel = WeatherModel.fromJson(
            data as Map<String, dynamic>,
          );
          emit(GetWeatherSuccess(weatherModel: weatherModel));
        },
      );
    });
  }
}
