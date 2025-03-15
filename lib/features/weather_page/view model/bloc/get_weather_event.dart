part of 'get_weather_bloc.dart';

abstract class GetWeatherEvent extends Equatable {
  const GetWeatherEvent();

  @override
  List<Object> get props => [];
}

class FetchWeather extends GetWeatherEvent {
  final String country;

  const FetchWeather({required this.country});

  @override
  List<Object> get props => [country];
}
