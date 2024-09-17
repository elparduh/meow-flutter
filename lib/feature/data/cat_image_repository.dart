import 'package:meow_generator/feature/data/remote/cat_image_remote_datasource.dart';
import 'package:meow_generator/feature/domain/model/cat_image_model.dart';

class CatImageRepository {
  const CatImageRepository(this._catImageRemoteDataSource);

  final CatImageRemoteDataSource _catImageRemoteDataSource;

  Future<CatImage> fetchCatImage() => _catImageRemoteDataSource.fetchCatImage();
}
