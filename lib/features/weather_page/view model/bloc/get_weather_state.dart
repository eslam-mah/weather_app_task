part of 'get_weather_bloc.dart';

abstract class GetWeatherState extends Equatable {
  const GetWeatherState();

  @override
  List<Object> get props => [];
}

class GetWeatherInitial extends GetWeatherState {}

class GetWeatherLoading extends GetWeatherState {}

class GetWeatherSuccess extends GetWeatherState {
  final WeatherModel weatherModel;

  const GetWeatherSuccess({required this.weatherModel});

  @override
  List<Object> get props => [weatherModel];
}

class GetWeatherError extends GetWeatherState {}
