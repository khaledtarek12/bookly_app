import 'package:bookly_app/Featuers/home/presentaion/views/widgets/book_rating.dart';
import 'package:bookly_app/Featuers/home/presentaion/views/widgets/custom_book_item_image.dart';
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import 'books_action.dart';
import 'custom_app_bar_book_details.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          const SizedBox(height: 30),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: width * .19),
              child: const CustomBookImage()),
          const SizedBox(height: 43),
          Text('The Jungle Book',
              style: Styles.styleText30.copyWith(fontFamily: kgtSectraFine)),
          const SizedBox(height: 6),
          const Opacity(
              opacity: .7,
              child: Text('Rudyard Kipling', style: Styles.styleText18)),
          const SizedBox(height: 18),
          const BookRating(mainAxisAlignment: MainAxisAlignment.center),
          const SizedBox(height: 37),
          const BooksAction(),
        ],
      ),
    );
  }
}
