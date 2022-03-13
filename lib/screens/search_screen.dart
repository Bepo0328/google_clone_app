import 'package:flutter/material.dart';
import 'package:google_clone_app/colors.dart';
import 'package:google_clone_app/services/api_service.dart';
import 'package:google_clone_app/widgets/search_footer.dart';
import 'package:google_clone_app/widgets/search_header.dart';
import 'package:google_clone_app/widgets/search_result_component.dart';
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
            FutureBuilder(
              future: ApiService().fetchData(queryTerm: 'Flutter'),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 150, top: 12),
                        child: Text(
                          'About ${snapshot.data?['searchInformation']['formattedTotalResults']} results (${snapshot.data?['searchInformation']['formattedSearchTime']} seconds)',
                          style: const TextStyle(
                            fontSize: 15,
                            color: Color(0xFF70757A),
                          ),
                        ),
                      ),
                      ListView.builder(
                        itemCount: snapshot.data?['items'].length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 150, top: 10),
                            child: SearchResultComponent(
                              link: snapshot.data?['items'][index]
                                  ['formattedUrl'],
                              text: snapshot.data?['items'][index]['title'],
                              linkToGo: snapshot.data?['items'][index]['link'],
                              desc: snapshot.data?['items'][index]['snippet'],
                            ),
                          );
                        },
                      ),
                    ],
                  );
                }
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
            ),
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
