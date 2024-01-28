import 'package:bookly_app/Featuers/home/presentaion/views/home_view.dart';
import 'package:bookly_app/Featuers/splash/peresentaion/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const khomeView = '/HomeView';

  static final router = GoRouter(routes: [
    GoRoute(path: '/', builder: (context, state) => const SplashView()),
    GoRoute(path: khomeView, builder: (context, state) => const HomeView()),
  ]);
}
