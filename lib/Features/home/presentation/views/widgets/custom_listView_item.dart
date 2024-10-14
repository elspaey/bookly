import 'package:flutter/material.dart';

import '../../../../../core/assets.dart';

class featuredListViewItem extends StatelessWidget {
  const featuredListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          width: 100,
          height: MediaQuery.of(context).size.height * .25,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              color: Colors.red,
              image: const DecorationImage(
                  fit: BoxFit.fill, image: AssetImage(myAssets.testImage))),
        ),
      ),
    );
  }
}
