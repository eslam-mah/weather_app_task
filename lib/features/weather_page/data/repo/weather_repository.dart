import 'package:dartz/dartz.dart';
import 'package:weather_app_task/core/api/constants.dart';
import 'package:weather_app_task/core/api/failure_model.dart';
import 'package:weather_app_task/core/api/dio_helper.dart';

class WeatherRepository {
  /// Fetches weather data.
  ///
  /// Parameters:
  ///   - country: The country for which weather data is to be fetched.
  ///
  /// Returns either a [FailureModel] in case of an error or a Map containing the results of the API request if successful.
  Future<Either<FailureModel, Map>> getWeatherData({
    required String country,
  }) async {
    return await DioHelper.handleRequest(() async {
      return await DioHelper.getData(
        linkUrl:
            '${Constants.baseUrl}forecast.json?key=${Constants.apiKey}&q=$country&days=1&aqi=no&alerts=no',
      );
    });
  }
}
