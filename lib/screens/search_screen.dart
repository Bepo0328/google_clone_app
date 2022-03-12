import 'package:flutter/material.dart';
import 'package:google_clone_app/colors.dart';
import 'package:google_clone_app/widgets/search_footer.dart';
import 'package:google_clone_app/widgets/search_header.dart';
import 'package:google_clone_app/widgets/search_tabs.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Web Header
            const SearchHeader(),
            // tabs for news images etc
            const Padding(
              padding: EdgeInsets.only(left: 150),
              child: SearchTabs(),
            ),
            const Divider(height: 0, thickness: 0.3),
            // search results
            // pagination buttons
            SizedBox(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      '< Prev',
                      style: TextStyle(
                        fontSize: 15,
                        color: blueColor,
                      ),
                    ),
                  ),
                  const SizedBox(width: 30),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Next >',
                      style: TextStyle(
                        fontSize: 15,
                        color: blueColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            const SearchFooter(),
          ],
        ),
      ),
    );
  }
}
