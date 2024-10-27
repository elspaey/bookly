import 'package:flutter_application_11/core/constants.dart';
import 'package:hive/hive.dart';

import '../../domain/entities/book_entity.dart';

abstract class HomeLocalDataSource {
  List<BookEntity> ftchFeatureBooks();
  List<BookEntity> ftchNewestBooks();
}

class HomeLocalDatasourceimpl extends HomeLocalDataSource {
  @override
  List<BookEntity> ftchFeatureBooks() {
    return Hive.box<BookEntity>(kFeaturedBox).values.toList();
  }

  @override
  List<BookEntity> ftchNewestBooks() {
    return Hive.box<BookEntity>(kNewestBox).values.toList();
  }
}
