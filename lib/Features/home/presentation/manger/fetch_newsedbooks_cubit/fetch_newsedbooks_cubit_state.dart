part of 'fetch_newsedbooks_cubit_cubit.dart';

@immutable
abstract class FetchNewsedbooksCubitState {}

class FetchNewsedbooksCubitInitial extends FetchNewsedbooksCubitState {}

class FetchNewsedbooksCubitLoading extends FetchNewsedbooksCubitState {}

class FetchNewsedbooksCubitSuccess extends FetchNewsedbooksCubitState {
  final List<BookEntity> books;

  FetchNewsedbooksCubitSuccess(this.books);
}

class FetchNewsedbooksCubitFailure extends FetchNewsedbooksCubitState {
  final String errMessage;

  FetchNewsedbooksCubitFailure(this.errMessage);
}
