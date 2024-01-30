import 'package:bookly_app/Featuers/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          const Expanded(
            child: CustomButton(
                text: 'Free',
                fontSize: 16.5,
                backgroundColor: Colors.white,
                textColor: Colors.black,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    bottomLeft: Radius.circular(12))),
          ),
          Expanded(
            child: CustomButton(
                onPressed: () async {
                  Uri url = Uri.parse(bookModel.volumeInfo.previewLink!);
                  if (!await launchUrl(url,
                      mode: LaunchMode.externalApplication)) {
                    throw Exception('Could not launch $url');
                  }
                },
                text: 'Preview',
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
}
