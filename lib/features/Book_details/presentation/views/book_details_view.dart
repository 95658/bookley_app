import 'package:bookley_app/core/Widgets/no_app_bar.dart';
import 'package:bookley_app/features/Book_details/presentation/views/widgets/book_details_view_body.dart';
import 'package:bookley_app/features/Home/data/model/BookModel/book_model.dart';
import 'package:bookley_app/features/Home/presentation/views/management/AlsoLike/also_like_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key, required this.bookModel});


  final BookModel bookModel ;
  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();


}



class _BookDetailsViewState extends State<BookDetailsView> {

  @override
  void initState() {
    BlocProvider.of<AlsoLikeCubit>(context).fetchAlsoLikeBooks(category: widget.bookModel.volumeInfo.categories[0] );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return const Scaffold(
      appBar: NoAppBar(),
      body: BookDetailsViewBody(),
    );
  }
}
