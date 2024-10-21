import 'package:flutter/material.dart';

class customAppBar extends StatelessWidget {
  const customAppBar({super.key, this.theContent = const <Widget>[]});
  final List<Widget> theContent;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 30, left: 30, top: 30, bottom: 30),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: theContent),
    );
  }
}
// class customAppBar extends StatelessWidget {
//   const customAppBar({super.key, this.theContent = const <Widget>[]});
//   final List<Widget> theContent;
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(right: 30, left: 30, top: 30, bottom: 30),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Image.asset(
//             myAssets.logo,
//             height: 18,
//             // width: 0,
//           ),
//           IconButton(
//               onPressed: () {},
//               icon: const Icon(
//                 FontAwesomeIcons.magnifyingGlass,
//                 size: 25,
//               ))
//         ],
//       ),
//     );
//   }
// }
