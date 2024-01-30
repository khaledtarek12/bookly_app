import 'package:bookly_app/Featuers/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';
import 'book_rating.dart';
import 'books_action.dart';
import 'custom_book_item_image.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .19),
            child: CustomBookImage(
              imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? '',
            )),
        const SizedBox(height: 30),
        Text(bookModel.volumeInfo.title!,
            textAlign: TextAlign.center,
            style: Styles.styleText30.copyWith(fontFamily: kgtSectraFine)),
        const SizedBox(height: 6),
        Opacity(
            opacity: .7,
            child: Text(bookModel.volumeInfo.authors![0],
                style: Styles.styleText18)),
        const SizedBox(height: 18),
        const BookRating(mainAxisAlignment: MainAxisAlignment.center),
        const SizedBox(height: 25),
        BooksAction(bookModel: bookModel),
      ],
    );
  }
}
