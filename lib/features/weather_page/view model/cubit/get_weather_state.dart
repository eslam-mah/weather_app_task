part of 'get_weather_cubit.dart';

sealed class GetWeatherState extends Equatable {
  const GetWeatherState();

  @override
  List<Object> get props => [];
}

final class GetWeatherInitial extends GetWeatherState {}

final class GetWeatherLoading extends GetWeatherState {}

final class GetWeatherSuccess extends GetWeatherState {
  final WeatherModel weatherModel;

  const GetWeatherSuccess({required this.weatherModel});
}

final class GetWeatherError extends GetWeatherState {}
