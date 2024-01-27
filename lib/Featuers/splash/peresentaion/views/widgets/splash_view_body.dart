import 'package:bookly_app/Featuers/splash/peresentaion/views/widgets/sliding_text.dart';
import 'package:bookly_app/core/utils/assets_class.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slideAnimation;

  @override
  void initState() {
    super.initState();

    animationController = AnimationController(
        vsync: this,
        duration: const Duration(
          seconds: 1,
        ));
    slideAnimation = Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
        .animate(animationController);
    animationController.forward();
  }

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
        SlidingText(slideAnimation: slideAnimation),
      ],
    );
  }
}
