import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:meow_generator/core/api/api_config.dart';
import 'package:meow_generator/core/network/http_request_handler.dart';
import 'package:meow_generator/core/network/http_request_status.dart';
import 'package:meow_generator/feature/data/remote/model/image_cat_api_model.dart';
import 'package:meow_generator/feature/domain/model/image_cat_model.dart';

class ImageCatRemoteDataSource {
  const ImageCatRemoteDataSource(
      this._client,
      this._httpRequestHandler,
      );

  final http.Client _client;
  final HttpRequestHandler _httpRequestHandler;

  Future<ImageCat> fetchPictureCat() async {
    try {
      final Uri url = Uri.parse(ApiConfig.baseUrl + ApiConfig.getPictureCat);
      final response = await _client.get(url, headers: ApiConfig.defaultHeaders);

      final httpRequestStatus = _httpRequestHandler.createRequestStatus(response);
      if (httpRequestStatus.hasErrors()) {
        throw httpRequestStatus;
      }

      final json = jsonDecode(response.body);

      return ImageCatApiResponse.fromJson(json).toImageCat();
    }
    on Exception catch (e)  {
      throw _httpRequestHandler.createRequestStatusFrom(e);
    }
  }
}
