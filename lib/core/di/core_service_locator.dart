import 'package:get_it/get_it.dart';
import 'package:meow_generator/core/network/http_request_handler.dart';

final _locator = GetIt.instance;

void registerCoreDependencies() {
  _locator.registerLazySingleton(() => HttpRequestHandler());
}
