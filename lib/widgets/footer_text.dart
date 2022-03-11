import 'package:flutter/material.dart';

class FooterText extends StatelessWidget {
  const FooterText({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        title,
        style: const TextStyle(
          color: Color(0xFF70757A),
        ),
      ),
    );
  }
}
