import 'package:bookley_app/core/errs/failure.dart';
import 'package:bookley_app/core/utils/api_services/api_services.dart';
import 'package:bookley_app/features/Home/data/models/BookModel/Book_model.dart';
import 'package:bookley_app/features/Home/data/models/repose/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo{
final ApiServices apiServices;


  HomeRepoImpl(this.apiServices);

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data =  await apiServices.get(endPoint: 'volumes?Filtering=free-ebooks&Sorting=newest &q=subject:programming');

      List<BookModel> books = [] ;
      for(var item in data['items']){
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    }  catch (e) {
      return left(ServerFailure());
    }

  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}