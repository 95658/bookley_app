import 'dart:developer';

import 'package:bookley_app/core/errs/failure.dart';
import 'package:bookley_app/core/utils/api_services/api_services.dart';
import 'package:bookley_app/features/Home/data/model/BookModel/book_model.dart';
import 'package:bookley_app/features/Home/data/model/repose/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiServices apiServices;

  HomeRepoImpl(this.apiServices);

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiServices.get(
          endPoint: 'volumes?Filtering=free-ebooks&Sorting=newest &q=subject:technology');

      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e, s) {
      log(e.toString(), stackTrace: s);
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await apiServices.get(
          endPoint: 'volumes?Filtering=free-ebooks&q=subject:programming');

      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e, s) {
      log(e.toString(), stackTrace: s);
      if (e is DioException) {
        return left(ServerFailure?.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchAlsoLikeBooks({required String category}) async {
    try {
      var data = await apiServices.get(
          endPoint: 'volumes?Filtering=free-ebooks&Sorting=relevance&q=subject:engineering');

      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e, s) {
      log(e.toString(), stackTrace: s);
      if (e is DioException) {
        return left(ServerFailure?.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}