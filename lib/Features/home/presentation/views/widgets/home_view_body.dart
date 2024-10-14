import 'package:flutter/material.dart';
import 'package:flutter_application_11/core/assets.dart';

import 'custom_app_bar.dart';
import 'custom_listView_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        customAppBar(),
        featuredBooksListView(),
      ],
    );
  }
}

class featuredBooksListView extends StatelessWidget {
  const featuredBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .3,
        child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.only(right: 15.0, top: 15),
              child: featuredListViewItem(),
            );
          },
        ),
      ),
    );
  }
}
