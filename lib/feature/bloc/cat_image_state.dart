part of 'cat_image_bloc.dart';

class CatImageState extends Equatable {
  const CatImageState({required this.catImageUiState});

  final UIState catImageUiState;

  static initial() => CatImageState(catImageUiState: InitialUiState());

  CatImageState copyWith({UIState? catImageUiState}) =>
      CatImageState(catImageUiState: catImageUiState ?? this.catImageUiState);

  @override
  List<Object?> get props => [catImageUiState];
}

extension CatImageStateX on CatImageState {
  CatImageState onLoadingUI() => copyWith(catImageUiState: LoadingUIState());

  CatImageState onSuccessUI(CatImageUi catImageUi) =>
      copyWith(catImageUiState: SuccessUIState(catImageUi));

  CatImageState onFailureUI(String message) =>
      copyWith(catImageUiState: FailureUIState(message));
}
