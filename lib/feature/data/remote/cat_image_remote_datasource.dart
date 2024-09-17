import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:meow_generator/core/api/api_config.dart';
import 'package:meow_generator/core/network/http_request_handler.dart';
import 'package:meow_generator/core/network/http_request_status.dart';
import 'package:meow_generator/feature/data/remote/model/cat_image_api_model.dart';
import 'package:meow_generator/feature/domain/model/cat_image_model.dart';

class CatImageRemoteDataSource {
  const CatImageRemoteDataSource(
    this._client,
    this._httpRequestHandler,
  );

  final http.Client _client;
  final HttpRequestHandler _httpRequestHandler;

  Future<CatImage> fetchCatImage() async {
    try {
      final Uri url = Uri.parse(ApiConfig.baseUrl + ApiConfig.getPictureCat);
      final response =
          await _client.get(url, headers: ApiConfig.defaultHeaders);

      final httpRequestStatus =
          _httpRequestHandler.createRequestStatus(response);
      if (httpRequestStatus.hasErrors()) {
        throw httpRequestStatus;
      }

      final jsonDecode = json.decode(response.body);
      final List<CatImageApiResponse> apiResponseCatImageList =
          List<CatImageApiResponse>.from(
              jsonDecode.map((x) => CatImageApiResponse.fromJson(x)));

      return apiResponseCatImageList.first.toCatImage();
    } on Exception catch (e) {
      throw _httpRequestHandler.createRequestStatusFrom(e);
    }
  }
}
