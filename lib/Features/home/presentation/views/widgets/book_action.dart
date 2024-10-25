import 'package:flutter/material.dart';
import 'package:flutter_application_11/core/utils/helper%20widgets/custom_button.dart';

class bookAction extends StatelessWidget {
  const bookAction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
            child: CustomButton(
          textButton: "19.99€",
          borderRedious: BorderRadius.only(
              topLeft: Radius.circular(12), bottomLeft: Radius.circular(12)),
          backGroundColor: Colors.white,
          textColor: Colors.black,
        )),
        Expanded(
            child: CustomButton(
          textButton: "Free preview",
          borderRedious: BorderRadius.only(
              topRight: Radius.circular(12), bottomRight: Radius.circular(12)),
          backGroundColor: Color(0xffEF8262),
          textColor: Colors.white,
        )),
      ],
    );
  }
}
