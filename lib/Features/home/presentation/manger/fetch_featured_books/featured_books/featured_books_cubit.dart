import 'package:bloc/bloc.dart';
import 'package:flutter_application_11/Features/home/domain/entities/book_entity.dart';
import 'package:flutter_application_11/Features/home/domain/use_case/fetch_featured_books_use_case.dart';
import 'package:meta/meta.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.featuredBooksUseCase) : super(FeaturedBooksInitial());
  FetchFeaturedBooksUseCase featuredBooksUseCase;
  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksloading());
    var result = await featuredBooksUseCase.call();
    result.fold((Failure) {
      emit(FeaturedBooksFailure(Failure.errMessage));
    }, (books) {
      emit(FeaturedBooksSuccess(books));
    });
  }
}
