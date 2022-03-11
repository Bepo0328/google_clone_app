import 'package:flutter/material.dart';
import 'package:google_clone_app/colors.dart';

class LanguageText extends StatelessWidget {
  const LanguageText({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Text(
        title,
        style: const TextStyle(
          color: blueColor,
        ),
      ),
    );
  }
}
