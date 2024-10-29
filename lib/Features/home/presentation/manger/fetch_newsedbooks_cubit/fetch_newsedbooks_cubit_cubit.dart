import 'package:bloc/bloc.dart';
import 'package:flutter_application_11/Features/home/domain/entities/book_entity.dart';
import 'package:flutter_application_11/Features/home/domain/use_case/fetch_newset_books_use_case.dart';
import 'package:meta/meta.dart';

part 'fetch_newsedbooks_cubit_state.dart';

class FetchNewsedbooksCubitCubit extends Cubit<FetchNewsedbooksCubitState> {
  FetchNewsedbooksCubitCubit(this.fetchNewsetBooksUseCase)
      : super(FetchNewsedbooksCubitInitial());
  final FetchNewsetBooksUseCase fetchNewsetBooksUseCase;
  Future<void> fetchNewsedBooks() async {
    emit(FetchNewsedbooksCubitLoading());
    var result = await fetchNewsetBooksUseCase.call();
    result.fold((failure) {
      emit(FetchNewsedbooksCubitFailure(failure.errMessage));
    }, (books) {
      emit(FetchNewsedbooksCubitSuccess(books));
    });
  }
}
