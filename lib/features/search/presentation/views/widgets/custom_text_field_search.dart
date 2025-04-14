import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          enabledBorder: buildOutlinedInputBorder(),
          focusedBorder: buildOutlinedInputBorder(),
          filled: true,
          suffixIcon: IconButton(
            onPressed: () {},
            icon: const Opacity(
              opacity: 0.9,
              child: Icon(
                FontAwesomeIcons.magnifyingGlass,
              ),
            ),
          ),
          fillColor: Colors.grey.shade300,
          hintText: 'Search for book ',
          hintStyle: const TextStyle(
            color: Colors.black,
          )),
    );
  }

  OutlineInputBorder buildOutlinedInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: const BorderSide(
        color: Colors.white,
      ),
    );
  }
}
