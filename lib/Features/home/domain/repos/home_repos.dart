import 'package:flutter_application_11/Features/home/domain/entities/book_entity.dart';

abstract class homeRepos {
  Future<List<BookEntity>> fetchFuturedBooks();
  Future<List<BookEntity>> fetchNewstBooks();
}
                              