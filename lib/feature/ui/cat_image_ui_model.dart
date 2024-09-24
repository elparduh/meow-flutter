import 'package:equatable/equatable.dart';

class CatImageUi extends Equatable {
  const CatImageUi({required this.url});

  final String url;

  @override
  List<Object?> get props => [url];
}
