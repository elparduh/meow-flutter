import 'package:equatable/equatable.dart';

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
