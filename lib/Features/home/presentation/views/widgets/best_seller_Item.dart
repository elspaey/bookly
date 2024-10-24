import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_11/core/styles.dart';
import 'package:flutter_application_11/core/utils/helper%20widgets/app_router.dart';
import 'package:flutter_application_11/core/utils/helper%20widgets/helper_text_widget.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/assets.dart';
import '../../../../../core/utils/helper widgets/book_Rating.dart';

class bestSellerItem extends StatelessWidget {
  const bestSellerItem({
    super.key,
    this.thPadding = const EdgeInsets.only(left: 30),
    this.thPaddingInsideDetails = const EdgeInsets.only(right: 47, left: 30),
  });
  final EdgeInsetsGeometry thPadding;
  final EdgeInsetsGeometry thPaddingInsideDetails;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: thPadding,
      child: GestureDetector(
        onTap: () {
          GoRouter.of(context).push(AppRouter.kbookDetailsView);
        },
        child: SizedBox(
          height: 125,
          child: Row(
            children: [
              AspectRatio(
                aspectRatio: 2.5 / 4,
                child: Container(
                  height: MediaQuery.of(context).size.height * .25,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: const DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(myAssets.testImage))),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: thPaddingInsideDetails,
                  child: const SizedBox(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextWidget(
                          thePadding: EdgeInsets.zero,
                          theTextContent: "Harry Potterand the Goblet of Fire ",
                          countLine: 2,
                          textStyle: Styles.textStyleRegular20,
                        ),
                        TextWidget(
                          thePadding: EdgeInsets.zero,
                          theTextContent: "J.K. Rowling",
                          textStyle: Styles.textStyleMedium14,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextWidget(
                                textStyle: Styles.textStyleBold20,
                                thePadding: EdgeInsets.zero,
                                theTextContent: "19.99 €"),
                            bookRating(),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
