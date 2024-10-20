import 'package:flutter/cupertino.dart';

import 'best_seller_Item.dart';

class bestSellerListViewItem extends StatelessWidget {
  const bestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: bestSellerItem(),
        );
      },
    );
  }
}
