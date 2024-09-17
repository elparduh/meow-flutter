import 'package:equatable/equatable.dart';

class PictureCat extends Equatable {

  const PictureCat({
    required this.url,
  });
  final String url;

  @override
  List<Object?> get props => [url];
}