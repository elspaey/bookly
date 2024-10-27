class BookEntity {
  final String  bookId;
  final String ?image;
  final String title;
  final String  ?authorName;
  final dynamic price, rating;

  BookEntity(
      {required this.image,
      required this.title,
      required this.authorName,
      required this.bookId,
      required this.price,
      required this.rating});
}
