import 'package:get_it/get_it.dart';
import 'package:meow_generator/core/di/core_service_locator.dart';
import 'package:meow_generator/feature/di/cat_image_service_locator.dart';

final locator = GetIt.instance;

void initializeLocator() {
  registerCoreDependencies();
  registerCatImageDependencies();
}
