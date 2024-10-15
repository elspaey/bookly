import 'package:flutter/material.dart';

import '../styles.dart';

class helperTextWidget extends StatelessWidget {
  const helperTextWidget({
    super.key,
    this.hightValueTopSizedBox = 0,
    required this.textValue,
    this.widthValueTopSizedBox = 0,
    this.hightValueButtomSizedBox = 0,
    this.widthValueButtomSizedBox = 0,
  });
  final double hightValueTopSizedBox,
      widthValueTopSizedBox,
      hightValueButtomSizedBox,
      widthValueButtomSizedBox;
  final String textValue;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Column(
        children: [
          SizedBox(
            height: hightValueTopSizedBox,
            width: widthValueTopSizedBox,
          ),
          Text(textValue, style: Styles.titleMedium),
          SizedBox(
            height: hightValueButtomSizedBox,
            width: widthValueButtomSizedBox,
          ),
        ],
      ),
    );
  }
}
