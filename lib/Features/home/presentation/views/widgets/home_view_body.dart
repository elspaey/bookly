import 'package:flutter/material.dart';
import 'package:flutter_application_11/core/styles.dart';
import '../../../../../core/utils/helper widgets/helper_text_widget.dart';
import 'best_seller_listView_Item.dart';
import 'custom_appBar_body.dart';
import 'featured_listView.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      SliverToBoxAdapter(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const customAppBarBody(),
            featuredBooksListView(
              thAspectratioOrValue: 2.7 / 4,
              hightItem: MediaQuery.of(context).size.height * 0.3,
            ),
            const TextWidget(
              hightValueTopSizedBox: 50,
              theTextContent: "Best Seller",
              textStyle: Styles.textStyleSemiBold18,
              hightValueButtomSizedBox: 20,
            )
          ],
        ),
      ),
      const SliverToBoxAdapter(
        child: bestSellerListViewItem(),
      )
    ]);
  }
}
