import 'package:flutter/material.dart';
import '../../../../../core/assets.dart';
import '../../../../../core/helper widgets/helper_text_widget.dart';
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
          hightValueButtomSizedBox: 20,
        ),
        bestSellerlistView()
      ],
    );
  }
}

class bestSellerlistView extends StatelessWidget {
  const bestSellerlistView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.5 / 4,
              child: Container(
                // height: MediaQuery.of(context).size.height * .25,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.red,
                    image: const DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(myAssets.testImage))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
