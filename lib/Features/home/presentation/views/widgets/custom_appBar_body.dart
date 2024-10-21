import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/assets.dart';
import '../../../../../core/utils/helper widgets/custom_appbar.dart';

class customAppBarBody extends StatelessWidget {
  const customAppBarBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return customAppBar(
      theContent: [
        Image.asset(
          myAssets.logo,
          height: 18,
          // width: 0,
        ),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 25,
            ))
      ],
    );
  }
}
