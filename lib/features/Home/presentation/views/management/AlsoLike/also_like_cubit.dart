import 'package:bloc/bloc.dart';
import 'package:bookley_app/features/Home/data/model/BookModel/book_model.dart';
import 'package:bookley_app/features/Home/data/model/repose/home_repo.dart';
import 'package:meta/meta.dart';

part 'also_like_state.dart';

class AlsoLikeCubit extends Cubit<AlsoLikeState> {
  AlsoLikeCubit(this.homeRepo) : super(AlsoLikeInitial());

  final HomeRepo homeRepo;

  Future<void > fetchAlsoLikeBooks({required String category}) async {
    emit(AlsoLikeLoading());
    var result = await homeRepo.fetchAlsoLikeBooks(category : category);
    result.fold((failure) {
      emit(AlsoLikeFailure(failure.errMessage));
    }, (books){
      emit(AlsoLikeSuccess(books.cast<BookModel>()));
    });
  }

}
