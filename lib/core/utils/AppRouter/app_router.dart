import 'package:bookley_app/features/Home/presentation/views/home_view.dart';
import 'package:go_router/go_router.dart';

import '../../../features/Splash/presentation/views/splash_view.dart';

abstract class AppRouter{
  static const KHomeView = '/homeView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: KHomeView,
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}