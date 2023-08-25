import 'package:bookley_app/core/utils/service_locator.dart';
import 'package:bookley_app/features/Book_details/presentation/views/book_details_view.dart';
import 'package:bookley_app/features/Home/data/model/BookModel/book_model.dart';
import 'package:bookley_app/features/Home/data/model/repose/home_repo_impl.dart';
import 'package:bookley_app/features/Home/presentation/views/home_view.dart';
import 'package:bookley_app/features/Home/presentation/views/management/AlsoLike/also_like_cubit.dart';
import 'package:bookley_app/features/Search/presentions/views/search_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/Splash/presentation/views/splash_view.dart';

abstract class AppRouter{
  static const KHomeView = '/homeView';
  static const KSearchView = '/searchView';
  static const KBookDetailsView = '/bookDetailsView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: KSearchView,
        builder: (context, state) => const SearchView(),
      ),
      GoRoute(
        path: KHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: KBookDetailsView,
        builder: (context, state) => BlocProvider(
            create: (context) => AlsoLikeCubit(getIt.get<HomeRepoImpl>()),
            child:  BookDetailsView(
              bookModel: state.extra as BookModel,
            )),
      ),
    ],
  );
}