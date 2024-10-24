import 'package:flutter/material.dart';
import 'package:flutter_application_11/core/utils/helper%20widgets/app_router.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

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
            onPressed: () {
              GoRouter.of(context).push(AppRouter.ksearchView);
            },
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 25,
            ))
      ],
    );
  }
}
