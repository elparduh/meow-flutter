import 'package:meow_generator/feature/data/cat_image_repository.dart';
import 'package:meow_generator/feature/domain/model/cat_image_model.dart';

class GetCatImageUseCase {
  const GetCatImageUseCase(this._catImageRepository);

  final CatImageRepository _catImageRepository;

  Future<CatImage> fetchCatImage() => _catImageRepository.fetchCatImage();
}
