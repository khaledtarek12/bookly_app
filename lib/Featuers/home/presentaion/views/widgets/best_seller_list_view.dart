import 'package:flutter/material.dart';

import 'besst_seller_item_view.dart';

class BesetSellerListViewBuilder extends StatelessWidget {
  const BesetSellerListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(bottom: 20, right: 10),
          child: BookListViewItem(),
        );
      },
    );
  }
}
