import 'dart:convert';

import 'package:vaden/vaden.dart';

@ControllerAdvice()
class AppControllerAdvice {
  AppControllerAdvice(this._dson);
  final DSON _dson;

  @ExceptionHandler(ResponseException)
  Future<Response> handleResponseException(ResponseException e) async {
    return e.generateResponse(_dson);
  }

  @ExceptionHandler(Exception)
  Response handleException(Exception e) {
    return Response.internalServerError(
      body: jsonEncode({
        'message': 'Internal server error',
      }),
    );
  }
}
