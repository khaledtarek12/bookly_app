import 'package:bookly_app/Featuers/home/presentaion/views/widgets/custom_book_item_image.dart';
import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_loding_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../managers/featured_box_cubit/featured_box_cubit.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBoxCubit, FeaturedBoxState>(
      builder: (context, state) {
        if (state is FeaturedBoxSuccess) {
          return Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * .3,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: state.books.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: CustomBookImage(
                      imageUrl:
                          state.books[index].volumeInfo.imageLinks?.thumbnail ?? '',
                    ),
                  );
                },
              ),
            ),
          );
        } else if (state is FeaturedBoxFailure) {
          return CustomErrorMessageWidget(errorMessage: state.errorMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
