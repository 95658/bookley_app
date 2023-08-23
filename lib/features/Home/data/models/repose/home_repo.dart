import 'package:bookley_app/features/Home/data/models/BookModel/Book_model.dart';

abstract class HomeRepo {
  Future<List<BookModel>> fetchBestSellerBooks();
  Future<List<BookModel>> fetchFeaturedBooks();
}