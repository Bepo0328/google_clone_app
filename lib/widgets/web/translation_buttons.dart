import 'package:flutter/material.dart';
import 'package:google_clone_app/widgets/launguage_text.dart';

class TranslationButtons extends StatelessWidget {
  const TranslationButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      children: const [
        Text('Google Offered in:'),
        SizedBox(width: 5),
        LanguageText(title: '한국어'),
        SizedBox(width: 5),
        LanguageText(title: 'English'),
      ],
    );
  }
}
