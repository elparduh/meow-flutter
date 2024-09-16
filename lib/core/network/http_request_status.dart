sealed class HttpRequestStatus {
  const HttpRequestStatus(this.message);

  final String message;
}

class SuccessfulRequest extends HttpRequestStatus {
  const SuccessfulRequest() : super('Success');
}

class SuccessfulNoContentRequest extends HttpRequestStatus {
  const SuccessfulNoContentRequest() : super('Success with not content');
}

class BadRequest extends HttpRequestStatus {
  const BadRequest() : super('Bad request');
}

class UnauthorizedRequest extends HttpRequestStatus {
  const UnauthorizedRequest() : super('User unauthorized');
}

class ForbiddenRequest extends HttpRequestStatus {
  const ForbiddenRequest() : super('Forbidden request');
}

class InternalServerError extends HttpRequestStatus {
  const InternalServerError() : super('Some thing went wrong');
}

class NotFoundError extends HttpRequestStatus {
  const NotFoundError() : super('Url not found');
}

class ConnectionNetwork extends HttpRequestStatus {
  const ConnectionNetwork() : super('No internet connection');
}

class Unknown extends HttpRequestStatus {
  const Unknown(this.errorMessage) : super(errorMessage);
  final String errorMessage;
}


extension HttpRequestStatusX on HttpRequestStatus {
  hasErrors() => this is! SuccessfulRequest || this is! SuccessfulNoContentRequest;
}
