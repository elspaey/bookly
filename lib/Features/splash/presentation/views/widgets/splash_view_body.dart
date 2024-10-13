import 'package:flutter/material.dart';
import 'package:flutter_application_11/Features/home/presentation/views/home_view.dart';
import 'package:flutter_application_11/core/assets.dart';
import 'package:flutter_application_11/core/constants.dart';
import 'package:get/get.dart';

import 'sliding_text.dart';

class splashViewBody extends StatefulWidget {
  const splashViewBody({super.key});

  @override
  State<splashViewBody> createState() => _splashViewBodyState();
}

class _splashViewBodyState extends State<splashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _animation;
  @override
  void initState() {
    super.initState(); 
    initSlidingAnimation();
    navigateToHome();
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(myAssets.logo),
        const SizedBox(
          height: 4,
        ),
        slidingText(animation: _animation),
      ],
    );
  }

////////////////////

  void initSlidingAnimation() {
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    _animation = Tween<Offset>(begin: const Offset(0, 10), end: Offset.zero)
        .animate(_animationController);
    _animationController.forward();
  }

//////////////////
  void navigateToHome() {
    Future.delayed(const Duration(seconds: 2), () {
      Get.to(() => const HomeView(),
          transition: Transition.fade, duration: kTransetantionDuration);
    });
  }
}
