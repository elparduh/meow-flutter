import 'package:equatable/equatable.dart';

class ImageCat extends Equatable {
  const ImageCat({
    required this.id,
    required this.url,
  });

  final String id;
  final String url;

  @override
  List<Object?> get props => [url];
}
