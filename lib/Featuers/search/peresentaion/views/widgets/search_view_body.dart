import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'custom_search_text_field.dart';
import 'search_item_list_view.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 16),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: CustomSearchTextField()),
          SizedBox(height: 16),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text('Search Result', style: Styles.styleText18),
          ),
          SizedBox(height: 15),
          Expanded(child: SearchItemListView()),
        ],
      ),
    );
  }
}
