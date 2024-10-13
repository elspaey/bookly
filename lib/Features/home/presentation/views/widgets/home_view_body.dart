import 'package:flutter/material.dart';
import 'package:flutter_application_11/core/assets.dart';

import 'custom_app_bar.dart';
import 'custom_listView_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        customAppBar(),
        customListViewItem(),
      ],
    );
  }
}
