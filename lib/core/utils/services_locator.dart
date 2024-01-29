import 'package:bookly_app/Featuers/home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/core/utils/api_services.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setup() {
  getIt.registerSingleton<ApiServices>(ApiServices());
  getIt.registerSingleton<HomeRepoImplementaion>(HomeRepoImplementaion(
    apiServices: getIt.get<ApiServices>(),
  ));
}
