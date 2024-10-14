import 'package:flutter/material.dart';

import 'styles.dart';

class helperTextWidget extends StatelessWidget {
  const helperTextWidget({
    super.key,
    this.hightValueSizedBox = 0,
    required this.textValue,
    this.widthValueSizedBox = 0,
  });
  final double hightValueSizedBox, widthValueSizedBox;
  final String textValue;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Column(
        children: [
          SizedBox(
            height: hightValueSizedBox,
            width: widthValueSizedBox,
          ),
          Text(textValue, style: Styles.titleMedium),
        ],
      ),
    );
  }
}
