import 'package:dio/dio.dart';
import 'package:dartz/dartz.dart';
import 'package:weather_app_task/core/api/failure_model.dart';

class DioHelper {
  /// Handles the HTTP request and returns either a [FailureModel] in case of an error
  /// or a Map containing the results of the API request if successful.
  static Future<Either<FailureModel, Map>> handleRequest(
    Future<Response> Function() requestFunction,
  ) async {
    try {
      Response response = await requestFunction();

      // Check for success status codes
      if (response.statusCode == 200 || response.statusCode == 201) {
        // If response.data is not a Map, you may need to adjust based on your API.
        return Right(response.data is Map ? response.data : {});
      } else {
        // Extract error message from response data if available.
        String message =
            response.data is Map && response.data.containsKey('message')
                ? response.data['message']
                : 'Unknown error';
        print('Error: $message');
        HttpResponseStatus status =
            (response.statusCode == 400 || response.statusCode == 401)
                ? HttpResponseStatus.invalidData
                : HttpResponseStatus.failure;
        return Left(FailureModel(responseStatus: status, message: message));
      }
    } catch (e) {
      print(e.toString());
      String message = 'Unknown error';

      return Left(
        FailureModel(
          responseStatus: HttpResponseStatus.failure,
          message: message,
        ),
      );
    }
  }

  static final Dio _dio = Dio(
    BaseOptions(
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      },
    ),
  );

  /// Fetches weather data using Dio.
  static Future<Response> getData({required String linkUrl}) async {
    return await _dio.get(linkUrl);
  }
}
