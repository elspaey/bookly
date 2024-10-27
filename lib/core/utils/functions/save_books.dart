import 'package:hive_flutter/hive_flutter.dart';

import '../../../Features/home/domain/entities/book_entity.dart';

void saveBooksData(List<BookEntity> books, String booksName) {
  var box = Hive.box(booksName);
  box.addAll(books);
}
