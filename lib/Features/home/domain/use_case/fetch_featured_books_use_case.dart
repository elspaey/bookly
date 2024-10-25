import 'package:dartz/dartz.dart';
import 'package:flutter_application_11/Features/home/domain/entities/book_entity.dart';
import 'package:flutter_application_11/Features/home/domain/repos/home_repos.dart';
import 'package:flutter_application_11/core/errors/failure.dart';

class FetchFeaturedBooksUseCase extends useCase<List<BookEntity>, void> {
  final homeRepos homeRepo;

  FetchFeaturedBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> call([void param]) async {
    // TODO: implement call
    return await homeRepo.fetchFuturedBooks();
  }
}

abstract class useCase<Type, param> {
  Future<Either<Failure, Type>> call([param param]);
}
