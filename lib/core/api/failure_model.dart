enum HttpResponseStatus { noInternet, success, invalidData, failure }

class FailureModel {
  ///
  /// error message from the server.
  ///
  ///  parameters:
  ///   - responseStatus: The status of the response.
  ///   - message: The error message from the server.
  ///
  String? message;
  HttpResponseStatus responseStatus;
  FailureModel({required this.responseStatus, this.message});
}
