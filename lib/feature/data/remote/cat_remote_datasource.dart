import 'package:http/http.dart' as http;
import 'package:meow_generator/core/network/http_request_handler.dart';

class CatRemoteDataSource {

  const CatRemoteDataSource(
      this._client,
      this._httpRequestHandler,
      );

  final http.Client _client;
  final HttpRequestHandler _httpRequestHandler;

}
