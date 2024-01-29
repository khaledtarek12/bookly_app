import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';
import 'book_rating.dart';
import 'books_action.dart';
import 'custom_book_item_image.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
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
    );
  }
}
