import 'package:flutter/material.dart';
import 'package:flutter_application_11/core/styles.dart';
import '../../../../../core/utils/helper widgets/helper_text_widget.dart';
import 'best_seller_listView.dart';
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
          hightValueTopSizedBox: 50,
          textValue: "Best Seller",
          textStyle: Styles.TextStyleSemiBold18,
          hightValueButtomSizedBox: 20,
        ),
        bestSellerlistView()
      ],
    );
  }
}
