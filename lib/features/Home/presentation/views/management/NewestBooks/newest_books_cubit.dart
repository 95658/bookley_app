import 'package:bloc/bloc.dart';
import 'package:bookley_app/features/Home/data/models/repose/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../../../data/models/BookModel/book_model.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());

  final HomeRepo homeRepo;

  Future<void > fetchNewestBooks() async {
    emit(NewestBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold((failure) {
      emit(NewestBooksFailure(failure.errMessage));
    }, (books){
      emit(NewestBooksSuccess(books.cast<BookModel>()));
    });
  }

}
