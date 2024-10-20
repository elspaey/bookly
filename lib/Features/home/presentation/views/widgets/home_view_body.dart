import 'package:flutter/material.dart';
import 'package:flutter_application_11/core/styles.dart';
import '../../../../../core/utils/helper widgets/helper_text_widget.dart';
import 'best_seller_listView_Item.dart';
import 'custom_app_bar.dart';
import 'featured_listView.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(slivers: [
      SliverToBoxAdapter(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            customAppBar(),
            featuredBooksListView(),
            TextWidget(
              hightValueTopSizedBox: 50,
              theTextContent: "Best Seller",
              textStyle: Styles.textStyleSemiBold18,
              hightValueButtomSizedBox: 20,
            )
          ],
        ),
      ),
      SliverToBoxAdapter(
        child: bestSellerListViewItem(),
      )
    ]);
  }
}
