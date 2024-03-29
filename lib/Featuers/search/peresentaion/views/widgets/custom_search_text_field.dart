import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {},
      decoration: InputDecoration(
        enabledBorder: inputOutlinedBorder(),
        focusedBorder: inputOutlinedBorder(),
        hintText: 'Search',
        suffixIcon: IconButton(
          icon: const Opacity(
            opacity: .5,
            child: Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 22,
            ),
          ),
          onPressed: () {},
        ),
      ),
    );
  }

  OutlineInputBorder inputOutlinedBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Colors.white));
  }
}
