import 'package:bookly_app/Featuers/home/presentaion/managers/newsest_books_cubit/newest_books_cubit.dart';
import 'package:bookly_app/Featuers/home/presentaion/views/widgets/book_list_item_view.dart';
import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_loding_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchItemListView extends StatelessWidget {
  const SearchItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksFailure) {
          return CustomErrorMessageWidget(errorMessage: state.errorMessage);
        }
        if (state is NewestBooksSuccess) {
          return ListView.builder(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: BookListViewItem(
                  bookModel: state.books[index],
                ),
              );
            },
          );
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
