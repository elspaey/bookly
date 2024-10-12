import 'package:flutter/material.dart';
import 'package:flutter_application_11/core/assets.dart';

class splashViewBody extends StatelessWidget {
  const splashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [Image.asset(myAssets.logo)],
    );
  }
}
