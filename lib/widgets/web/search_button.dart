import 'package:flutter/material.dart';
import 'package:google_clone_app/colors.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(4),
        ),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 18,
      ),
      color: searchColor,
      elevation: 0,
      child: Text(title),
    );
  }
}
