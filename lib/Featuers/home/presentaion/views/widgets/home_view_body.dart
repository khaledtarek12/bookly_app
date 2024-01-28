import 'package:bookly_app/Featuers/home/presentaion/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/Featuers/home/presentaion/views/widgets/feautred_list_view_builder.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'best_seller_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              FeaturedBooksListView(),
              SizedBox(height: 20),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                  child: Text('Besst Seller', style: Styles.styleText18)),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: BesetSellerListViewBuilder(),
        )
      ],
    );
  }
}
