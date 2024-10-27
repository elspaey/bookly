import 'package:flutter_application_11/Features/home/data/models/book_model/book_model.dart';
import 'package:flutter_application_11/Features/home/domain/entities/book_entity.dart';
import 'package:flutter_application_11/core/utils/helper%20widgets/api_service.dart';

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
    return books;
  }


  Future<List<BookEntity>> ftchNewestBooks() async {
    var data = await apiService.get(
        endPoint: "volumes?Filtering=free-ebooks&sorting=newest&q=programming");
    List<BookEntity> books = getBooksLIst(data);
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
