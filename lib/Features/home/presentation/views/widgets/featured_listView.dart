import 'package:flutter/material.dart';

import '../../../../../core/utils/helper widgets/custom_used_item.dart';

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
              padding: EdgeInsets.only(right: 15.1, top: 15),
              child: customUsedItem(
                thAspectratioOrValue: 2.7 / 4,
              ),
            );
          },
        ),
      ),
    );
  }
}
