import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      const Icon(FontAwesomeIcons.solidStar, color: Color(0xffFEDB4D)),
      const SizedBox(width: 6.3),
      const Text('4.8', style: Styles.styleText16),
      const SizedBox(width: 5),
      Text('(2390)', style: Styles.styleText14.copyWith(color: ksecondryColor))
    ]);
  }
}
