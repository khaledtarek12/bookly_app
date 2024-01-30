import 'package:bookly_app/Featuers/home/presentaion/managers/featured_box/featured_box_cubit.dart';
import 'package:bookly_app/Featuers/home/presentaion/views/widgets/custom_book_item_image.dart';
import 'package:bookly_app/core/widgets/custom_Loading_indicator.dart';
import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: CustomBookImage(),
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
