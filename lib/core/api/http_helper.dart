import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:weather_app_task/core/api/failure_model.dart';

class HttpHelper {
  /// Handles the HTTP request and returns either a [FailureModel] in case of an error
  /// or a Map containing the results of the API request if successful.
  static Future<Either<FailureModel, Map>> handleRequest(
    Future<http.Response> Function() requestFunction,
  ) async {
    try {
      /// HTTP request
      http.Response response = await requestFunction();

      /// HTTP response success
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(jsonDecode(response.body));
      } else {
        /// HTTP response error
        String message = jsonDecode(response.body)['message'];
        print('Error: $message');
        HttpResponseStatus status =
            (response.statusCode == 400 || response.statusCode == 401)
                ? HttpResponseStatus.invalidData
                : HttpResponseStatus.failure;
        return Left(FailureModel(responseStatus: status, message: message));
      }
    } catch (e) {
      print(e.toString());

      ///  HTTP request error
      return Left(FailureModel(responseStatus: HttpResponseStatus.failure));
    }
  }

  /// Fetches weather data.
  static Future<http.Response> getData({required String linkUrl}) async {
    var headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
    };
    var response = await http.get(Uri.parse(linkUrl), headers: headers);

    return response;
  }
}
