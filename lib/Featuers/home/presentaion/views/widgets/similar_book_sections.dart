import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'similar_box_list_view.dart';

class SimlarBookSection extends StatelessWidget {
  const SimlarBookSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('You can also like', style: Styles.styleText18),
        SizedBox(height: 16),
        SimblerBooksListView(),
      ],
    );
  }
}
