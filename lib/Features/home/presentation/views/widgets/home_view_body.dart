import 'package:flutter/material.dart';
import '../../../../../core/helper_text_widget.dart';
import 'custom_app_bar.dart';
import 'featured_listView.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        customAppBar(),
        featuredBooksListView(),
        helperTextWidget(
          hightValueSizedBox: 50,
          textValue: "Best Seller",
        )
      ],
    );
  }
}
