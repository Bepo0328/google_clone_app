import 'package:flutter/material.dart';
import 'package:google_clone_app/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class SearchResultComponent extends StatefulWidget {
  const SearchResultComponent({
    Key? key,
    required this.link,
    required this.text,
    required this.linkToGo,
    required this.desc,
  }) : super(key: key);
  final String link;
  final String text;
  final String linkToGo;
  final String desc;

  @override
  State<SearchResultComponent> createState() => _SearchResultComponentState();
}

class _SearchResultComponentState extends State<SearchResultComponent> {
  bool _showUnderline = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.link),
        Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: InkWell(
            onTap: () async {
              if (await canLaunch(widget.linkToGo)) {
                await launch(widget.linkToGo);
              }
            },
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
            onHover: (hovering) {
              setState(() {
                _showUnderline = hovering;
              });
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.link,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Color(0xFF202124),
                  ),
                ),
                Text(
                  widget.text,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: blueColor,
                    decoration: _showUnderline
                        ? TextDecoration.underline
                        : TextDecoration.none,
                  ),
                ),
              ],
            ),
          ),
        ),
        Text(
          widget.desc,
          style: const TextStyle(
            fontSize: 14,
            color: primaryColor,
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
