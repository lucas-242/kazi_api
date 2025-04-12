import 'dart:async';

import 'package:kazi_api/src/domain/errors/app_error.dart';
import 'package:vaden/vaden.dart';

@Component()
class ErrorHandlerMiddleware extends VadenMiddleware {
  //TODO: Error Middleware isn't working yet.
  @override
  FutureOr<Response> handler(Request request, Handler handler) {
    try {
      print('completed');
      return handler(request);
    } on AppError catch (error) {
      print('App error: ${error.toString()}');
      return error.toResponse();
    } catch (error) {
      print('Unhandle error: ${error.toString()}');
      return Response.internalServerError(body: 'An unexpected error occurred');
    }
  }
}
