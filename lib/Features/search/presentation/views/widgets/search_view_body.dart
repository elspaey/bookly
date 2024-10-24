import 'package:flutter/material.dart';
import 'package:flutter_application_11/Features/search/presentation/views/widgets/custom_search_text_field.dart';

import '../../../../home/presentation/views/widgets/best_seller_Item.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      child: Column(
        children: [
          customSearchTextField(),
          SizedBox(
            height: 15,
          ),
          Expanded(child: searchResult()),
        ],
      ),
    );
  }
}

class searchResult extends StatelessWidget {
  const searchResult({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: bestSellerItem(
            thPaddingInsideDetails: EdgeInsets.only(
              left: 30,
            ),
            thPadding: EdgeInsets.zero,
          ),
        );
      },
    );
  }
}
