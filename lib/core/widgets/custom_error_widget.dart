import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomErrorMessageWidget extends StatelessWidget {
  const CustomErrorMessageWidget({super.key, required this.errorMessage});

  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        textAlign: TextAlign.center,
        errorMessage,
        style: Styles.styleText18,
      ),
    );
  }
}
