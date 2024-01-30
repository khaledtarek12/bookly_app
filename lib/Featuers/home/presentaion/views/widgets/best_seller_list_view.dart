import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_loding_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../managers/newsest_books_cubit/newest_books_cubit.dart';
import 'book_list_item_view.dart';

class NewestBooksListViewBuilder extends StatelessWidget {
  const NewestBooksListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding:const EdgeInsets.only(bottom: 20, right: 10),
                child: BookListViewItem(bookModel: state.books[index]),
              );
            },
          );
        } else if (state is NewestBooksFailure) {
          return CustomErrorMessageWidget(errorMessage: state.errorMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
