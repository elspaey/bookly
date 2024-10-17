import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../styles.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
    this.hightValueTopSizedBox = 0,
    required this.theTextContent,
    this.widthValueTopSizedBox = 0,
    this.hightValueButtomSizedBox = 0,
    this.widthValueButtomSizedBox = 0,
    this.textStyle = Styles.textStyleMedium18,
    this.countLine = 2,
    this.hightValueParentSizedBox = 20,
    this.widhtValueParentSizedBox = double.infinity,
    this.thePadding = const EdgeInsets.only(left: 30),
  });
  final double hightValueTopSizedBox,
      widthValueTopSizedBox,
      hightValueButtomSizedBox,
      widthValueButtomSizedBox,
      hightValueParentSizedBox,
      widhtValueParentSizedBox;
  final String theTextContent;
  final TextStyle textStyle;
  final int countLine;
  final EdgeInsetsGeometry thePadding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: thePadding,
      child: Column(
        children: [
          SizedBox(
            height: hightValueTopSizedBox,
            width: widthValueTopSizedBox,
          ),
          AutoSizeText(
            maxLines: countLine,
            theTextContent,
            style: textStyle,
          ),
          SizedBox(
            height: hightValueButtomSizedBox,
            width: widthValueButtomSizedBox,
          ),
        ],
      ),
    );
  }
}
