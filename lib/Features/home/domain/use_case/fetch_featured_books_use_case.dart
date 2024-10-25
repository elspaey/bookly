import 'package:dartz/dartz.dart';
import 'package:flutter_application_11/Features/home/domain/repos/home_repos.dart';

import '../../../../core/errors/failure.dart';
import '../entities/book_entity.dart';

class FetchFeaturedBooksUseCase {
  final homeRepos homeRepo;

  FetchFeaturedBooksUseCase(this.homeRepo);
  Future<Either<Failure, List<BookEntity>>> fetchFuturedBooks() {
    return homeRepo.fetchFuturedBooks();
  }
}
