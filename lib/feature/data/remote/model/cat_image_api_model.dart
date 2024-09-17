import 'package:meow_generator/feature/domain/model/cat_image_model.dart';

class CatImageApiResponse {
  const CatImageApiResponse({
    this.id,
    this.url,
    this.width,
    this.height,
  });

  final String? id;
  final String? url;
  final int? width;
  final int? height;

  factory CatImageApiResponse.fromJson(Map<String, dynamic> json) =>
      CatImageApiResponse(
        id: json['id'],
        url: json['url'],
        width: json['width'],
        height: json['height'],
      );
}

extension CatImageApiResponseX on CatImageApiResponse {
  toCatImage() => CatImage(
        id: id ?? '',
        url: url ?? '',
      );
}
