part of '../../../screen.dart';

// class CheckoutContainer extends StatelessWidget {
//   final List<Widget> listWidget;

//   const CheckoutContainer({required this.listWidget, Key? key})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: MediaQuery.of(context).size.width,
//       decoration: BoxDecoration(
//         color: whiteColor,
//         borderRadius: BorderRadius.circular(24),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: listWidget,
//         ),
//       ),
//     );
//   }

//   static Widget deliverLocation() {
//     return Container(
//       width: double.infinity,
//       height: 170,
//       decoration: BoxDecoration(
//         color: whiteColor,
//         borderRadius: BorderRadius.circular(24),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text('Delivery Location', style: regularTextStyle),
//                 const SizedBox(
//                   height: 30,
//                   width: 160,
//                   child: CustomOutlinedBtn(title: 'Change Location'),
//                 )
//               ],
//             ),
//             const SizedBox(height: 10),
//             Text('Alamat kantor', style: header2TxtStyle),
//             const SizedBox(height: 5),
//             Text(
//               'Jl. Sukajadi no 64 kelurahan cicendo, Bandung',
//               style: regularTextStyle,
//             ),
//             const SizedBox(height: 10),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: const [
//                 SizedBox(
//                   height: 30,
//                   width: 138,
//                   child: CustomOutlinedBtn(title: 'Edit address'),
//                 ),
//                 SizedBox(
//                   height: 30,
//                   width: 125,
//                   child: CustomOutlinedBtn(title: 'Add notes'),
//                 )
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }

//   static Widget priceSummary() {
//     return CheckoutContainer(
//       listWidget: [
//         Text('Price Summary', style: regularTextStyle),
//         const SizedBox(height: 17),
//         ListView.builder(
//           physics: const NeverScrollableScrollPhysics(),
//           shrinkWrap: true,
//           primary: false,
//           itemCount: product.length - 4,
//           itemBuilder: (context, index) {
//             Product itemProduct = product[index];
//             return Column(
//               children: [
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.end,
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(itemProduct.title, style: header2TxtStyle),
//                         const SizedBox(height: 5),
//                         Text(itemProduct.cart, style: regularTextStyle),
//                       ],
//                     ),
//                     Text(r'$xxx ', style: header2TxtStyle),
//                   ],
//                 ),
//                 const SizedBox(height: 7),
//                 const Divider(thickness: 1),
//                 const SizedBox(height: 5),
//               ],
//             );
//           },
//         ),
//         const SizedBox(height: 7),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Text('Delivery', style: header2TxtStyle),
//             Text(r'$xxx ', style: header2TxtStyle),
//           ],
//         ),
//         const SizedBox(height: 10),
//         const Divider(thickness: 1),
//         const SizedBox(height: 10),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Text(
//               'Total',
//               style: header2TxtStyle.copyWith(color: darkSeaGreenColor),
//             ),
//             Text(
//               r'$xxx ',
//               style: header2TxtStyle.copyWith(color: darkSeaGreenColor),
//             ),
//           ],
//         ),
//       ],
//     );
//   }

//   static Widget paymentMethod() {
//     return CheckoutContainer(
//       listWidget: [
//         Text('Payment', style: regularTextStyle),
//         const SizedBox(height: 17),
//         ListView.separated(
//           physics: const NeverScrollableScrollPhysics(),
//           shrinkWrap: true,
//           primary: false,
//           itemCount: payment.length,
//           itemBuilder: (context, index) {
//             var paymentMethod = payment[index];
//             return Column(
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(paymentMethod, style: header2TxtStyle),
//                     index == 3
//                         ? IconButton(
//                             onPressed: () {},
//                             icon: const Icon(Icons.circle_outlined),
//                           )
//                         : IconButton(
//                             onPressed: () {},
//                             icon: const Icon(Icons.chevron_right),
//                           )
//                   ],
//                 ),
//               ],
//             );
//           },
//           separatorBuilder: (context, index) => const Divider(thickness: 1),
//         )
//       ],
//     );
//   }
// }
