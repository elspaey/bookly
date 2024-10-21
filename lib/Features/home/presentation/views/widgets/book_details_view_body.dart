import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_11/core/utils/helper%20widgets/custom_appbar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return customAppBar(
      theContent: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.close)),
        IconButton(
            onPressed: () {}, icon: const Icon(Icons.shopping_cart_outlined)),
      ],
    );
  }
}
