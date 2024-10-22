import 'package:flutter/material.dart';
import 'package:flutter_application_11/core/utils/helper%20widgets/book_Rating.dart';
import 'package:flutter_application_11/core/assets.dart';
import 'package:flutter_application_11/core/styles.dart';
import 'package:flutter_application_11/core/utils/helper%20widgets/custom_appbar.dart';
import 'package:flutter_application_11/core/utils/helper%20widgets/helper_text_widget.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        customAppBar(
          theContent: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.close)),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.shopping_cart_outlined)),
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * .26),
          child: const Image(
            image: AssetImage(
              myAssets.testImage,
            ),
          ),
        ),
        TextWidget(
          thePadding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * .24),
          hightValueTopSizedBox: 43,
          theTextContent: "The Jungle Book",
          textStyle: Styles.textStyleRegular30,
        ),
        TextWidget(
          hightValueTopSizedBox: 5,
          thePadding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * .31),
          theTextContent: "Rudyard Kipling",
          textStyle: Styles.textStyleMedium14,
        ),
        const SizedBox(
          height: 16,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [bookRating()],
        )
      ],
    );
  }
}
