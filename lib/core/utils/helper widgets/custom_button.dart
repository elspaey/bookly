import 'package:flutter/material.dart';
import 'package:flutter_application_11/core/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.backGroundColor,
      required this.textColor,
      this.borderRedious,
      required this.textButton});
  final Color backGroundColor, textColor;
  final BorderRadius? borderRedious;
  final String textButton;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: borderRedious ?? BorderRadius.circular(12)),
            backgroundColor: backGroundColor),
        onPressed: () {},
        child: Text(
          textButton,
          style: Styles.textStyleSemiBold16.copyWith(color: textColor),
        ),
      ),
    );
  }
}
