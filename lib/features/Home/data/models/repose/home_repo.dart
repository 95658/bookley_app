import 'package:bookley_app/features/Home/data/models/BookModel/book_model.dart';
import 'package:dartz/dartz.dart';

import '../../../../../core/errs/failure.dart';

abstract class HomeRepo {
  Future<Either<Failure,List<BookModel>>> fetchNewestBooks();
  Future<Either<Failure,List<BookModel>>> fetchFeaturedBooks();
}