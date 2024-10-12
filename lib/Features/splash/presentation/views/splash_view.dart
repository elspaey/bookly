import 'package:flutter/material.dart';

import 'widgets/splash_view_body.dart';

class splashView extends StatelessWidget {
  const splashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: splashViewBody(),
    );
  }
}
