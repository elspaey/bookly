import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../styles.dart';

class bookRating extends StatelessWidget {
  const bookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          size: 15,
          color: Color(0xffFFDD4F),
        ),
        const SizedBox(
          width: 6.5,
        ),
        const Text(
          "4.8",
          style: Styles.textStyleMedium16,
        ),
        const SizedBox(
          width: 5.5,
        ),
        Text(
          "(2954)",
          style:
              Styles.textStyleMedium14.copyWith(color: const Color(0xff707070)),
        ),
        const SizedBox(
          width: 2,
        )
      ],
    );
  }
}
