import 'package:flutter_application_11/Features/home/data/models/book_model/book_model.dart';
import 'package:flutter_application_11/Features/home/domain/entities/book_entity.dart';
import 'package:flutter_application_11/core/constants.dart';
import 'package:flutter_application_11/core/utils/helper%20widgets/api_service.dart';

import '../../../../core/utils/functions/save_books.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> ftchFeatureBooks();
  Future<List<BookEntity>> ftchNewestBooks();
}

class homeRemoteDataSourceImpl extends HomeRemoteDataSource {
  final ApiService apiService;

  homeRemoteDataSourceImpl(this.apiService);
  @override
  Future<List<BookEntity>> ftchFeatureBooks() async {
    var data = await apiService.get(
        endPoint: "volumes?Filtering=free-ebooks&q=programming");
    List<BookEntity> books = getBooksLIst(data);
    saveBooksData(books, kFeaturedBox);

    return books;
  }

  @override
  Future<List<BookEntity>> ftchNewestBooks() async {
    var data = await apiService.get(
        endPoint: "volumes?Filtering=free-ebooks&sorting=newest&q=programming");
    List<BookEntity> books = getBooksLIst(data);
    saveBooksData(books, kNewestBox);
    return books;
  }

  List<BookEntity> getBooksLIst(Map<String, dynamic> data) {
    List<BookEntity> books = [];
    for (var bookMap in data["items"]) {
      books.add(BookModel.fromJson(bookMap));
    }
    return books;
  }
}
