import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String message;
  final String? error;
  const Failure(this.message, [this.error]);

  @override
  List<Object> get props => [message];
}

class SimpleFailure extends Failure {
  const SimpleFailure(String message) : super(message);
}

class ServerFailure extends Failure {
  const ServerFailure(String message) : super(message);
}

class NotExistData extends Failure {
  const NotExistData(String message) : super(message);
}

class ConnectionFailure extends Failure {
  const ConnectionFailure(String message) : super(message);
}

class DatabaseFailure extends Failure {
  const DatabaseFailure(String message) : super(message);
}

class BadRequestException extends Failure {
  BadRequestException(
    String message,
  ) : super(message);
}

class UnAuthorizedException extends Failure {
  UnAuthorizedException(
    String message,
    String error,
  ) : super(message, error);
}

class UnprocessableContent extends Failure {
  UnprocessableContent(
    String message,
  ) : super(message);
}

class PaymentRequiredException extends Failure {
  PaymentRequiredException(
    String message,
  ) : super(message);
}

class ForbiddenException extends Failure {
  ForbiddenException(
    String message,
  ) : super(message);
}

class NotFoundException extends Failure {
  NotFoundException(
    String message,
  ) : super(message);
}

class InternalServerError extends Failure {
  InternalServerError(
    String message,
  ) : super(message);
}

class ServiceUnavailableException extends Failure {
  ServiceUnavailableException(
    String message,
  ) : super(message);
}

class FetchDataException extends Failure {
  FetchDataException(
    String message,
  ) : super(message);
}

class ApiNotRespondingException extends Failure {
  ApiNotRespondingException(
    String message,
  ) : super(message);
}

class TimeoutException extends Failure {
  TimeoutException(
    String message,
  ) : super(message);
}
