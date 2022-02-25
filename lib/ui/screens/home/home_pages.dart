import 'package:flutter/material.dart';
import 'package:glosh/common/themes/theme.dart';
import 'package:glosh/ui/screens/home/widgets/deliver_card.dart';
import 'package:glosh/ui/screens/home/widgets/home_appbar.dart';
import 'package:glosh/ui/screens/home/widgets/menu_card.dart';
import 'package:glosh/ui/screens/home/widgets/promo_card.dart';
import 'package:glosh/ui/widgets/product_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: _body(context),
    );
  }

  Widget _body(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          Container(
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height / 2.5),
            color: lightSeaGreenColor,
            height: 120,
            width: double.infinity,
            padding: const EdgeInsets.only(left: 20, top: 5),
            child: Text(
              'Special Price\nToday',
              style: titleTextStyle.copyWith(color: whiteColor),
            ),
          ),
          Column(
            children: const [
              DeliverCard(),
              PromoCard(),
              SizedBox(height: 15),
              MenuCard(),
              SizedBox(height: 85),
              Padding(
                padding: EdgeInsets.only(left: 23, right: 23, bottom: 30),
                child: CardItem(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
