import 'package:bookly_app/Featuers/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/core/utils/functions/launch_url.dart';
import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
                onPressed: () {
                  launchCustomUrl(context, bookModel.volumeInfo.previewLink);
                },
                text: 'Free',
                fontSize: 16.5,
                backgroundColor: Colors.white,
                textColor: Colors.black,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(12),
                    bottomLeft: Radius.circular(12))),
          ),
          Expanded(
            child: CustomButton(
                onPressed: () {
                  launchCustomUrl(context, bookModel.volumeInfo.previewLink);
                },
                text: getText(bookModel),
                fontSize: 16.5,
                backgroundColor: const Color(0xffef8262),
                textColor: Colors.white,
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(12),
                    bottomRight: Radius.circular(12))),
          ),
        ],
      ),
    );
  }

  String getText(BookModel bookModel) {
    if (bookModel.volumeInfo.previewLink == null) {
      return 'Not Avaliable';
    } else {
      return 'Free Preview';
    }
  }
}
