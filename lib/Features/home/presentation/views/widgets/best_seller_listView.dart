import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/assets.dart';

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
