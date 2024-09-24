sealed class UIState<T extends Object> {}

class InitialUiState extends UIState {}

class LoadingUIState extends UIState {}

class SuccessUIState<T extends Object> extends UIState<T> {
  SuccessUIState(this.data);
  T data;
}

class FailureUIState<T extends String> extends UIState<T> {
  FailureUIState(this.error);
  String error;
}
