import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meow_generator/core/state/ui_state.dart';
import 'package:meow_generator/feature/domain/model/cat_image_model.dart';
import 'package:meow_generator/feature/domain/usecase/get_cat_image_usecase.dart';
import 'package:meow_generator/feature/ui/cat_image_ui_model.dart';

part 'cat_image_event.dart';
part 'cat_image_state.dart';

class CatImageBloc extends Bloc<CatImageEvent, CatImageState> {
  CatImageBloc(this._getCatImageUseCase) : super(CatImageState.initial()) {
    on<LoadCatImageEvent>(_onLoadCatImage);
  }

  final GetCatImageUseCase _getCatImageUseCase;

  _onLoadCatImage(LoadCatImageEvent event, Emitter<CatImageState> emit) async {
    emit(state.onLoadingUI());

    await _getCatImageUseCase
        .fetchCatImage()
        .then((catImage) => emit(state.onSuccessUI(catImage.toCatImageUi())))
        .catchError((exception) => emit(state.onFailureUI(exception.message)));
  }

  onLoadCatImageEvent() {
    add(const LoadCatImageEvent());
  }
}
