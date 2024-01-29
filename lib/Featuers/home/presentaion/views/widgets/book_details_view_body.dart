import 'package:flutter/material.dart';
import 'book_details_sections.dart';
import 'custom_app_bar_book_details.dart';
import 'similar_book_sections.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                CustomBookDetailsAppBar(),
                BookDetailsSection(),
                Expanded(child: SizedBox(height: 50)),
                SimlarBookSection(),
                SizedBox(height: 40),
              ],
            ),
          ),
        )
      ],
    );
  }
}
