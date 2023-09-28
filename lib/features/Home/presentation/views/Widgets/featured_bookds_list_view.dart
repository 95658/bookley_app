import 'dart:developer';

import 'package:bookley_app/core/Widgets/custom_error_msg.dart';
import 'package:bookley_app/core/utils/app_router.dart';
import 'package:bookley_app/features/Home/presentation/views/Widgets/custom_book_item.dart';
import 'package:bookley_app/core/Widgets/loading_indecator.dart';
import 'package:bookley_app/features/Home/presentation/views/management/FeaturedBooksCubit/featured_books_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class FeaturedBookdsListView extends StatelessWidget {
  const FeaturedBookdsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 30),
              separatorBuilder: (context, index) => const SizedBox(
                width: 15,
              ),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return  Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: GestureDetector(
                    onTap: (){
                      GoRouter.of(context).push(AppRouter.KBookDetailsView,
                        extra: state.books[index],
                      );
                    },
                    child: CustomBookImage(
                      imageUrl: state.books[index].volumeInfo.imageLinks?.thumbnail ?? '',
                    ),
                  ),
                );
              },
              itemCount: state.books.length,
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          log(state.errMessage);
          return CustomErrorMsg(errMsg: state.errMessage);
        } else {
          return const LoadingIndecator();
        }

      },
    );
  }
}
