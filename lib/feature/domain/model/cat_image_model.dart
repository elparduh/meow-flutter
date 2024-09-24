import 'package:equatable/equatable.dart';
import 'package:meow_generator/feature/ui/cat_image_ui_model.dart';

class CatImage extends Equatable {
  const CatImage({
    required this.id,
    required this.url,
  });

  final String id;
  final String url;

  static CatImage empty() => const CatImage(
    id: '',
    url: '',
  );

  @override
  List<Object?> get props => [id, url];
}

extension CatImagex on CatImage {
  toCatImageUi() => CatImageUi( url: url);
}
