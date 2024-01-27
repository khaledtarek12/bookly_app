import 'package:bookly_app/core/utils/assets_class.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          AssetsData.logoImage,
          width: 150,
        ),
        const SizedBox(
          height: 4,
        ),
        const Text(
          'Read free Books',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18,
            wordSpacing: 4,
            letterSpacing: 4,
          ),
        ),
      ],
    );
  }
}
