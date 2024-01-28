import 'package:bookly_app/Featuers/home/presentaion/views/book_details.dart';
import 'package:bookly_app/Featuers/home/presentaion/views/home_view.dart';
import 'package:bookly_app/Featuers/splash/peresentaion/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/HomeView';
  static const kBookDatailsView = '/BookDetails';

  static final router = GoRouter(routes: [
    GoRoute(path: '/', builder: (context, state) => const SplashView()),
    GoRoute(path: kHomeView, builder: (context, state) => const HomeView()),
    GoRoute(
        path: kBookDatailsView,
        builder: (context, state) => const BookDetails()),
  ]);
}