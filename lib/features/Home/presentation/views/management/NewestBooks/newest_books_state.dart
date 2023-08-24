part of 'newest_books_cubit.dart';

@immutable
abstract class NewestBooksState extends Equatable {
  const NewestBooksState();

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class NewestBooksInitial extends NewestBooksState {}
class NewestBooksLoading extends NewestBooksState {}
class NewestBooksFailure extends NewestBooksState {
  final String errMessage;

  const NewestBooksFailure(this.errMessage);
}
class NewestBooksSuccess extends NewestBooksState {
  final List<BookModel>books;

   const NewestBooksSuccess(this.books);
}
