import 'package:vaden/vaden.dart';

/// Represents the App error
abstract class AppError implements Exception {
  const AppError(this.message);
  final String message;

  Response toResponse();
}

/// 400 error
class BadRequestError extends AppError {
  const BadRequestError(super.message);

  @override
  Response toResponse() => Response.badRequest(body: message);
}

/// 401 error
class UnauthorizedError extends AppError {
  const UnauthorizedError(super.message);

  @override
  Response toResponse() => Response.unauthorized(message);
}

/// 403 error
class ForbiddenError extends AppError {
  const ForbiddenError(super.message);

  @override
  Response toResponse() => Response.forbidden(message);
}

/// 404 error
class NotFoundError extends AppError {
  const NotFoundError(super.message);

  @override
  Response toResponse() => Response.notFound(message);
}

/// 500 error
class InternalServerError extends AppError {
  const InternalServerError(super.message);

  @override
  Response toResponse() => Response.internalServerError(body: message);
}
