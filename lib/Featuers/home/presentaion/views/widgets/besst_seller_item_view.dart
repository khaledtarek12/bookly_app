import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/assets_class.dart';
import '../../../../../core/utils/styles.dart';

class BesstSellerListViewItem extends StatelessWidget {
  const BesstSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        child: Row(
          children: [
            AspectRatio(
                aspectRatio: 2.55 / 4,
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.red,
                        image: const DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(AssetsData.testImage))))),
            const SizedBox(
              width: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: Text(
                    'Harry Potter and the Goblet of Fire',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style:
                        Styles.styleText20.copyWith(fontFamily: kgtSectraFine),
                  ),
                ),
                const SizedBox(height: 3),
                Text('J.K. Rowling',
                    style: Styles.styleText14
                        .copyWith(color: const Color(0xffB1B0BC))),
                const SizedBox(height: 3),
                Row(
                  children: [
                    Text('19.99 €',
                        style: Styles.styleText20
                            .copyWith(fontWeight: FontWeight.bold)),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
