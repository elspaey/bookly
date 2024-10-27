import '../../domain/entities/book_entity.dart';

abstract class HomeLocalDataSource {
  List<BookEntity> ftchFeatureBooks();
  List<BookEntity> ftchNewestBooks();
}

class HomeLocalDatasourceimpl extends HomeLocalDataSource {
  @override
  List<BookEntity> ftchFeatureBooks() {}

  @override
  List<BookEntity> ftchNewestBooks() {}
}
