import 'package:flutter/material.dart';
import 'package:flutter_application_11/core/constants.dart';
import 'package:flutter_application_11/core/utils/helper%20widgets/app_router.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const booklyApp());
}

class booklyApp extends StatelessWidget {
  const booklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
      debugShowCheckedModeBanner: false,
    );
  }
}
