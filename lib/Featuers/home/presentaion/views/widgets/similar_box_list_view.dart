import 'package:flutter/material.dart';

import 'custom_book_item_image.dart';

class SimblerBooksListView extends StatelessWidget {
  const SimblerBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: CustomBookImage(
              imageUrl:
                  'https://www.scusd.edu/sites/main/files/main-images/camera_lense_0.jpeg',
            ),
          );
        },
      ),
    );
  }
}
