import 'package:flutter/material.dart';

import '../../../../../core/utils/helper widgets/custom_used_item.dart';

class featuredBooksListView extends StatelessWidget {
  const featuredBooksListView({
    super.key,
    this.thAspectratioOrValue = 0,
    this.hightItem = 10,
  });
  final double thAspectratioOrValue;
  final double hightItem;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: SizedBox(
        height: hightItem,
        // height: MediaQuery.of(context).size.height * .3,
        child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 15.1, top: 15),
              child: customUsedItem(
                thAspectratioOrValue: thAspectratioOrValue,
                // thAspectratioOrValue: 2.7 / 4,
              ),
            );
          },
        ),
      ),
    );
  }
}
