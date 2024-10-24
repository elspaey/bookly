import 'package:flutter/material.dart';
import 'package:flutter_application_11/Features/search/presentation/views/widgets/search_view_body.dart';
import 'package:flutter_application_11/core/constants.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            Image.asset(klogo,
                height: MediaQuery.of(context).size.height * .035)
          ],
          backgroundColor: kPrimaryColor,
        ),
        body: const SearchViewBody(),
      ),
    );
  }
}
