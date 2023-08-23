import 'package:bloc/bloc.dart';
import 'package:bookley_app/features/Home/data/models/BookModel/book_model.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit() : super(FeaturedBooksInitial());
}
