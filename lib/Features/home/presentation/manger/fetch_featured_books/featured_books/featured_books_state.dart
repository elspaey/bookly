part of 'featured_books_cubit.dart';

@immutable
abstract class FeaturedBooksState {}

class FeaturedBooksInitial extends FeaturedBooksState {}

class FeaturedBooksloading extends FeaturedBooksState {}

class FeaturedBooksSuccess extends FeaturedBooksState {

    final List<BookEntity> books;

  FeaturedBooksSuccess(this.books);
}

class FeaturedBooksFailure extends FeaturedBooksState {
    final String errMessage;

  FeaturedBooksFailure(this.errMessage);
}
