part of '../../../screen.dart';

// class CheckoutCard extends StatelessWidget {
//   const CheckoutCard({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ListView.separated(
//       physics: const NeverScrollableScrollPhysics(),
//       shrinkWrap: true,
//       primary: false,
//       itemCount: product.length - 4,
//       itemBuilder: (context, index) {
//         Product itemProduct = product[index];
//         return Container(
//           width: MediaQuery.of(context).size.width,
//           height: 140,
//           decoration: BoxDecoration(
//             color: whiteColor,
//             borderRadius: BorderRadius.circular(24),
//           ),
//           child: Padding(
//             padding:
//                 const EdgeInsets.only(left: 15, right: 35, top: 15, bottom: 15),
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 SizedBox(
//                     height: 105,
//                     width: 105,
//                     child: ImageView(
//                         urlImage: 'urlimage', width: 105, height: 105)),
//                 const SizedBox(width: 15),
//                 Expanded(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         itemProduct.title,
//                         style: header2TxtStyle,
//                       ),
//                       const SizedBox(height: 4),
//                       Text(
//                         itemProduct.cart,
//                         style: regularTextStyle,
//                       ),
//                       const SizedBox(height: 10),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Text(
//                             'Price',
//                             style: header2TxtStyle,
//                           ),
//                           Text(
//                             r'$xxx',
//                             style: header2TxtStyle,
//                           )
//                         ],
//                       )
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//       separatorBuilder: (context, index) => const SizedBox(height: 20),
//     );
//   }
// }
