part of '../screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGreenColor,
      appBar: HomeAppBar(),
      body: _body(context),
    );
  }

  Widget _body(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          Container(
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height / 2.4),
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
              SizedBox(height: 10),
              MenuCard(),
              SizedBox(height: 85),
              // Padding(
              //   padding: EdgeInsets.only(left: 23, right: 23, bottom: 30),
              //   child: ProductCardUser(),
              // ),
            ],
          ),
        ],
      ),
    );
  }
}
