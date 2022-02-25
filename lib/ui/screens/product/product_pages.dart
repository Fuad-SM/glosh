import 'package:flutter/material.dart';
import 'package:glosh/common/themes/theme.dart';
import 'package:glosh/ui/widgets/product_card.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: tealColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Fresh Produce',
          style: regularTextStyle.copyWith(
              color: whiteColor, fontWeight: FontWeight.w600),
        ),
      ),
      body: _body(context),
    );
  }

  Widget _body(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
        child: CardItem(),
      ),

      // Stack(
      //   children: [
      //     // Container(
      //     //   color: lightSeaGreenColor,
      //     //   height: 120,
      //     //   width: MediaQuery.of(context).size.width,
      //     //   padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      //     //   child: Text(
      //     //     'Fresh Produce',
      //     //     style: titleTextStyle.copyWith(color: whiteColor),
      //     //   ),
      //     // ),
      //     const Padding(
      //       padding: EdgeInsets.fromLTRB(23, 71, 23, 30),
      //       child: CardItem(),
      //     ),
      //   ],
      // ),
    );
  }
}
