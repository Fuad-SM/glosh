part of '../../screen.dart';

// class DetailBookScreen extends StatelessWidget {
//   const DetailBookScreen({required this.detailBook, Key? key})
//       : super(key: key);
//   final BookModel? detailBook;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Expanded(
//             child: Stack(
//               children: [
//                 ImageView(
//                   urlImage: detailBook!.imageUrl,
//                   width: Get.width,
//                   height: Get.height / 2,
//                 ),
//                 AnimationLimiter(
//                   child: ListView(
//                     physics: ClampingScrollPhysics(),
//                     children: AnimationConfiguration.toStaggeredList(
//                       duration: const Duration(milliseconds: 375),
//                       childAnimationBuilder: (widget) => SlideAnimation(
//                         verticalOffset: 50.0,
//                         child: FadeInAnimation(
//                           child: widget,
//                         ),
//                       ),
//                       children: [
//                         SizedBox(
//                           height: Get.height / 2.5,
//                         ),
//                         Container(
//                           width: Get.width,
//                           decoration: BoxDecoration(
//                             color: whiteColor,
//                             borderRadius: BorderRadius.vertical(
//                               top: Radius.circular(24),
//                             ),
//                           ),
//                           child: Padding(
//                             padding: const EdgeInsets.symmetric(
//                                 horizontal: 24, vertical: 30),
//                             child: Column(
//                               children: [
//                                 Row(
//                                   children: [
//                                     Expanded(
//                                       child: Column(
//                                         crossAxisAlignment:
//                                             CrossAxisAlignment.start,
//                                         children: [
//                                           Text(
//                                             detailBook!.title,
//                                             style: header2TxtStyle.copyWith(
//                                               fontWeight: FontWeight.w600,
//                                             ),
//                                           ),
//                                           SizedBox(
//                                             height: 4,
//                                           ),
//                                           Text(
//                                             'IDR ${formatNumber(detailBook!.price)}',
//                                             style: headerTxtStyle,
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                                 SizedBox(height: 20),
//                                 _customTitle(
//                                   text: 'Book Information',
//                                   color: lightSeaGreenColor,
//                                 ),
//                                 Row(
//                                   children: [
//                                     Expanded(
//                                       child: Column(
//                                         crossAxisAlignment:
//                                             CrossAxisAlignment.start,
//                                         children: [
//                                           Text(
//                                             'Author',
//                                             style: detailTxtstyle,
//                                           ),
//                                           Text(
//                                             detailBook!.authorName,
//                                             style: regularTextStyle.copyWith(
//                                                 fontSize: 13),
//                                           ),
//                                           SizedBox(
//                                             height: 5,
//                                           ),
//                                           Text(
//                                             'Category',
//                                             style: detailTxtstyle,
//                                           ),
//                                           Text(
//                                             detailBook!.bookCategory!.name,
//                                             style: regularTextStyle.copyWith(
//                                                 fontSize: 13),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                     Expanded(
//                                       child: Column(
//                                         crossAxisAlignment:
//                                             CrossAxisAlignment.start,
//                                         children: [
//                                           Text(
//                                             'ISBN',
//                                             style: detailTxtstyle,
//                                           ),
//                                           Text(
//                                             detailBook!.isbn,
//                                             style: regularTextStyle.copyWith(
//                                                 fontSize: 13),
//                                           ),
//                                           SizedBox(
//                                             height: 4,
//                                           ),
//                                           Text(
//                                             'Publication Date',
//                                             style: detailTxtstyle,
//                                           ),
//                                           Text(
//                                             detailBook!.publicationDate,
//                                             style: regularTextStyle.copyWith(
//                                                 fontSize: 13),
//                                           ),
//                                         ],
//                                       ),
//                                     )
//                                   ],
//                                 ),
//                                 SizedBox(
//                                   height: 15,
//                                 ),
//                                 _customTitle(
//                                   text: 'Description',
//                                   color: orangeColor,
//                                 ),
//                                 Text(
//                                   detailBook!.synopsis,
//                                   style: detailTxtstyle.copyWith(
//                                       color: blackColor),
//                                   textAlign: TextAlign.justify,
//                                 ),
//                                 SizedBox(
//                                   height: 15,
//                                 ),
//                               ],
//                             ),
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//                 DetailAppBar(),
//               ],
//             ),
//           ),
//           BottomBarDetail(),
//         ],
//       ),
//     );
//   }

//   _customTitle({text, color}) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Container(
//           padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.only(
//               topLeft: Radius.circular(5),
//               topRight: Radius.circular(5),
//             ),
//             color: color,
//           ),
//           child: Text(
//             text,
//             style: regularTextStyle.copyWith(color: whiteColor),
//           ),
//         ),
//         Divider(
//           height: 0,
//           indent: 10,
//           color: color,
//         ),
//         SizedBox(
//           height: 8,
//         ),
//       ],
//     );
//   }
// }
