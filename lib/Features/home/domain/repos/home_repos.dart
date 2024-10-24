import 'package:dartz/dartz.dart';
import 'package:flutter_application_11/Features/home/domain/entities/book_entity.dart';
import 'package:flutter_application_11/core/errors/failure.dart';

abstract class homeRepos {
  Future<Either<Failure, List<BookEntity>>> fetchFuturedBooks();
  Future<Either<Failure, List<BookEntity>>> fetchNewstBooks();
}
