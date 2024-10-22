import 'package:flutter/material.dart';
import 'package:flutter_application_11/core/assets.dart';
import 'package:flutter_application_11/core/utils/helper%20widgets/custom_appbar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        customAppBar(
          theContent: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.close)),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.shopping_cart_outlined)),
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * .25),
          child: const Image(
            image: AssetImage(
              myAssets.testImage,
            ),
          ),
        ),
      ],
    );
  }
}
