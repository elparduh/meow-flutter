import 'package:get_it/get_it.dart';
import 'package:meow_generator/core/network/http_request_handler.dart';
import 'package:meow_generator/feature/bloc/cat_image_bloc.dart';
import 'package:meow_generator/feature/data/cat_image_repository.dart';
import 'package:meow_generator/feature/data/remote/cat_image_remote_datasource.dart';
import 'package:http/http.dart' as http;
import 'package:meow_generator/feature/domain/usecase/get_cat_image_usecase.dart';

final _locator = GetIt.instance;

void registerCatImageDependencies() {
  _locator.registerLazySingleton<CatImageRemoteDataSource>(() =>
      CatImageRemoteDataSource(http.Client(), _locator<HttpRequestHandler>()));

  _locator.registerLazySingleton<CatImageRepository>(
      () => CatImageRepository(_locator<CatImageRemoteDataSource>()));

  _locator.registerFactory<GetCatImageUseCase>(
      () => GetCatImageUseCase(_locator<CatImageRepository>()));

  _locator.registerFactory<CatImageBloc>(
      () => CatImageBloc(_locator<GetCatImageUseCase>()));
}
