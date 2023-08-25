part of 'also_like_cubit.dart';

@immutable
abstract class AlsoLikeState {}

class AlsoLikeInitial extends AlsoLikeState {}
class AlsoLikeSuccess extends AlsoLikeState {
  final List<BookModel> books;

  AlsoLikeSuccess(this.books);
}
class AlsoLikeFailure extends AlsoLikeState {
  final String errMessage ;

  AlsoLikeFailure(this.errMessage);
}
class AlsoLikeLoading extends AlsoLikeState {}
