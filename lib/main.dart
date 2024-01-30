import 'package:bookly_app/Featuers/home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/Featuers/home/presentaion/managers/featured_box/featured_box_cubit.dart';
import 'package:bookly_app/Featuers/home/presentaion/managers/newsest_books/newest_books_cubit.dart';
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/services_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/utils/app_router.dart';

void main() {
  setupServiceLocator();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              FeaturedBoxCubit(getIt.get<HomeRepoImplementaion>())
                ..fetchFeauturdBooks(),
        ),
        BlocProvider(
            create: (context) =>
                NewestBooksCubit(getIt.get<HomeRepoImplementaion>()))
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kprimaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
