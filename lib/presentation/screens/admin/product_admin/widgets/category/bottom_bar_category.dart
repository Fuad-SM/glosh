part of '../../../../screen.dart';

// class BottomBarCategory extends StatelessWidget {
//   const BottomBarCategory({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: Get.width,
//       height: Get.height * 0.09,
//       decoration: BoxDecoration(
//         color: whiteColor,
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.5),
//             spreadRadius: 2,
//             blurRadius: 1,
//             offset: Offset(0, 2),
//           )
//         ],
//       ),
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 23),
//         child: Row(
//           children: [
//             Expanded(
//               child: GetBuilder<BookCategoryController>(
//                 builder: (controller) {
//                   if (controller.state == ResultState.Loading) {
//                     return CircularProgressIndicator();
//                   } else if (controller.state == ResultState.HasData) {
//                     return _customText(
//                       text: '${controller.bookCategory.length}',
//                     );
//                   } else if (controller.state == ResultState.NoData) {
//                     return _customText(text: '- ');
//                   } else if (controller.state == ResultState.Error) {
//                     return _customText(text: '- ');
//                   } else {
//                     return SizedBox();
//                   }
//                 },
//               ),
//             ),
//             SizedBox(
//               width: MediaQuery.of(context).size.width / 2.3,
//               height: MediaQuery.of(context).size.height * 0.068,
//               child: ElevatedButton(
//                 onPressed: () {},
//                 style: ElevatedButton.styleFrom(
//                   primary: darkSeaGreenColor,
//                   elevation: 0,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                 ),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: [
//                     Text(
//                       'Add Category',
//                       style: headerTxtStyle.copyWith(
//                           fontSize: 14,
//                           color: whiteColor,
//                           fontWeight: FontWeight.w500),
//                     ),
//                     Icon(
//                       Icons.add,
//                       size: 20,
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   RichText _customText({required String text}) {
//     return RichText(
//       text: TextSpan(
//         children: [
//           TextSpan(
//             text: text,
//             style: headerTxtStyle,
//           ),
//           TextSpan(
//             text: '  Categories found',
//             style: regularTextStyle.copyWith(
//               color: greyColor,
//               fontSize: 13,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
