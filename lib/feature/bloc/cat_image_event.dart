part of 'cat_image_bloc.dart';

sealed class CatImageEvent extends Equatable {
  const CatImageEvent();

  @override
  List<Object> get props => [];
}

final class LoadCatImageEvent extends CatImageEvent {
  const LoadCatImageEvent();
}
