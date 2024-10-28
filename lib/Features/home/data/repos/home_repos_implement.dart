import 'package:dartz/dartz.dart';
import 'package:flutter_application_11/Features/home/data/data_scource/home_local_dataSource.dart';
import 'package:flutter_application_11/Features/home/data/data_scource/home_remote_data_source.dart';
import 'package:flutter_application_11/Features/home/domain/entities/book_entity.dart';
import 'package:flutter_application_11/Features/home/domain/repos/home_repos.dart';
import 'package:flutter_application_11/core/errors/failure.dart';

class HomeReposImplement extends homeRepos {
  final HomeRemoteDataSource homeRemoteDataSource;
  final HomeLocalDataSource homeLocalDataSource;

  HomeReposImplement(
      {required this.homeRemoteDataSource, required this.homeLocalDataSource});
  @override
  Future<Either<Failure, List<BookEntity>>> fetchFuturedBooks() async {
    try {
      var booksList = homeLocalDataSource.ftchFeatureBooks();
      if (booksList.isNotEmpty) {
        return right(booksList);
      }
      var books = await homeRemoteDataSource.ftchFeatureBooks();
      return right(books);
    } catch (e) {
      return left(Failure());
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> fetchNewestBooks() async {
    try {
      var booksList = homeLocalDataSource.ftchNewestBooks();
      if (booksList.isNotEmpty) {
        return right(booksList);
      }
      var books = await homeRemoteDataSource.ftchNewestBooks();
      return right(books);
    } catch (e) {
      return left(Failure());
    }
  }
}
