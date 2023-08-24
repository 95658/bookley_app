import 'package:bookley_app/core/utils/api_services/api_services.dart';
import 'package:bookley_app/features/Home/data/models/repose/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupservicelocator() {
  getIt.registerSingleton<ApiServices>(ApiServices(Dio()),);
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(getIt.get<ApiServices>()),
  );
}
