import 'package:bookley_app/core/Widgets/custom_error_msg.dart';
import 'package:bookley_app/core/Widgets/loading_indecator.dart';
import 'package:bookley_app/features/Home/presentation/views/Widgets/custom_book_item.dart';
import 'package:bookley_app/features/Home/presentation/views/management/AlsoLike/also_like_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MayAlsoLikeList extends StatelessWidget {
  const MayAlsoLikeList({Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AlsoLikeCubit, AlsoLikeState>(
  builder: (context, state) {
    if (state is AlsoLikeSuccess) {
      return SizedBox(
        height: MediaQuery.of(context).size.height * .15,
        child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          separatorBuilder: (context, index) => const SizedBox(width: 10,),
          scrollDirection : Axis.horizontal,
          itemBuilder: (context , index){
            return  Padding(
              padding: const EdgeInsets.only(top: 8.0 ),
              child: CustomBookImage(imageUrl: state.books[index].volumeInfo.imageLinks?.thumbnail??'' ,),
            );
          }, itemCount: state.books.length,),
      );
    } else if (state is AlsoLikeFailure){
      return CustomErrorMsg(errMsg: state.errMessage);
    }else {
      return const LoadingIndecator();
    }
  },
);
  }
}
