import 'package:meow_generator/feature/domain/model/image_cat_model.dart';

class ImageCatApiResponse {
  const ImageCatApiResponse({
    this.id,
    this.url,
    this.width,
    this.height,
  });

  final String? id;
  final String? url;
  final int? width;
  final int? height;

  factory ImageCatApiResponse.fromJson(Map<String, dynamic> json) =>
      ImageCatApiResponse(
        id: json['id'],
        url: json['url'],
        width: json['width'],
        height: json['height'],
      );
}

extension ImageCatApiResponseX on ImageCatApiResponse {
  toImageCat() => ImageCat(
        id: id ?? '',
        url: url ?? '',
      );
}
