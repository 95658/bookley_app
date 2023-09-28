import 'package:bookley_app/core/Widgets/custom_error_msg.dart';
import 'package:bookley_app/core/Widgets/loading_indecator.dart';
import 'package:bookley_app/features/Home/presentation/views/Widgets/best_seller_list_view_item.dart';
import 'package:bookley_app/features/Home/presentation/views/management/NewestBooks/newest_books_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return  Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: BestSellerListViewItem(
                    bookModel: state.books[index],
                  ),
                );
              }
          );
        } else if (state is NewestBooksFailure){
          return CustomErrorMsg(errMsg: state.errMessage);
        }
        else {
          return const LoadingIndecator();
        }
      },
    );
  }
}