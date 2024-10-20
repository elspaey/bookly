import 'package:flutter/material.dart';

import '../../assets.dart';

class customUsedItem extends StatelessWidget {
  const customUsedItem(
      {super.key,
      this.thAspectratioOrValue = 0,
      this.thPadding = const EdgeInsets.all(0)});
  final double thAspectratioOrValue;
  final EdgeInsetsGeometry thPadding;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: thPadding,
        child: SizedBox(
          height: thAspectratioOrValue,
          // height: MediaQuery.of(context).size.height * .3,
          child: AspectRatio(
              aspectRatio: thAspectratioOrValue,
              child: Container(
                width: thAspectratioOrValue,
                height: thAspectratioOrValue,
                // height: MediaQuery.of(context).size.height * .25,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    image: const DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(myAssets.testImage))),
              )),
        ));
  }
}
