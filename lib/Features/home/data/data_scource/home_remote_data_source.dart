import 'package:flutter_application_11/Features/home/domain/entities/book_entity.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> ftchFeatureBooks();
  Future<List<BookEntity>> ftchNewestBooks();
}
class homeRemoteDataSourceImpl extends HomeRemoteDataSource {
  @override
  Future<List<BookEntity>> ftchFeatureBooks() {
    // TODO: implement ftchFeatureBooks
    throw UnimplementedError();
  }

  @override
  Future<List<BookEntity>> ftchNewestBooks() {
    // TODO: implement ftchNewestBooks
    throw UnimplementedError();
  }
  
}
