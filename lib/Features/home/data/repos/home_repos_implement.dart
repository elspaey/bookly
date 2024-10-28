import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
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
    List<BookEntity> bookList;
    try {
      bookList = homeLocalDataSource.ftchFeatureBooks();
      if (bookList.isNotEmpty) {
        return right(bookList);
      }
      bookList = await homeRemoteDataSource.ftchFeatureBooks();
      return right(bookList);
    } catch (e) {
      if (e is DioException) {
        return left(serverFailure.fromDioError(e));
      }
      return left(serverFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> fetchNewestBooks() async {
    try {
      List<BookEntity> books;
      books = homeLocalDataSource.ftchNewestBooks();
      if (books.isNotEmpty) {
        return right(books);
      }
      books = await homeRemoteDataSource.ftchNewestBooks();
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(serverFailure.fromDioError(e));
      }
      return left(serverFailure(e.toString()));
    }
  }
}
