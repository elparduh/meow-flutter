import 'dart:io';

import 'package:http/http.dart';
import 'package:meow_generator/core/network/http_request_status.dart';

class HttpRequestHandler {

  HttpRequestStatus createRequestStatus(Response response) =>
      switch (response.statusCode) {
        200 => const SuccessfulRequest(),
        201 => const SuccessfulNoContentRequest(),
        400 => const BadRequest(),
        401 => const UnauthorizedRequest(),
        403 => const ForbiddenRequest(),
        404 => const NotFoundError(),
        500 => const InternalServerError(),
        _ => Unknown(response.body)
      };

  HttpRequestStatus createRequestStatusFrom(Exception exception) =>
      switch (exception) {
        SocketException() => const ConnectionNetwork(),
        _ => Unknown(exception.toString())
      };
}
