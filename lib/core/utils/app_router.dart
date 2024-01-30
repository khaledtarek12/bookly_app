import 'package:bookly_app/Featuers/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Featuers/home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/Featuers/home/presentaion/managers/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/Featuers/home/presentaion/views/book_details.dart';
import 'package:bookly_app/Featuers/home/presentaion/views/home_view.dart';
import 'package:bookly_app/Featuers/search/peresentaion/views/search_view.dart';
import 'package:bookly_app/Featuers/splash/peresentaion/views/splash_view.dart';
import 'package:bookly_app/core/utils/services_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/HomeView';
  static const kBookDatailsView = '/BookDetails';
  static const ksearchView = '/SearchView';

  static final router = GoRouter(routes: [
    GoRoute(path: '/', builder: (context, state) => const SplashView()),
    GoRoute(path: kHomeView, builder: (context, state) => const HomeView()),
    GoRoute(path: ksearchView, builder: (context, state) => const SearchView()),
    GoRoute(
        path: kBookDatailsView,
        builder: (context, state) => BlocProvider(
              create: (context) => SimilarBooksCubit(
                getIt.get<HomeRepoImplementaion>(),
              ),
              child: BookDetails(bookModel: state.extra as BookModel),
            )),
  ]);
}
