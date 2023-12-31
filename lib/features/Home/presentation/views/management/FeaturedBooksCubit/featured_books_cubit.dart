import 'package:bloc/bloc.dart';
import 'package:bookley_app/features/Home/data/model/BookModel/book_model.dart';
import 'package:bookley_app/features/Home/data/model/repose/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());

  final HomeRepo homeRepo;

  Future<void > fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold((failure) {
      emit(FeaturedBooksFailure(failure.errMessage));
    }, (books){
      emit(FeaturedBooksSuccess(books));
    });
  }
}
