import 'package:bookly_app/Featuers/home/presentaion/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/Featuers/home/presentaion/views/widgets/feautred_list_view_builder.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBar(),
        FeaturedBooksListView(),
        SizedBox(
          height: 50,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Text('Besst Seller', style: Styles.title),
        ),
      ],
    );
  }
}
