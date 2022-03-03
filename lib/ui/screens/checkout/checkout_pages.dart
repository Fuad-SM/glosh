part of '../screen.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: lightGreenColor,
      body: SafeArea(
        child: ListView(
          children: [
            _body(),
            _btnPlaceOrder(),
          ],
        ),
      ),
    );
  }

  Padding _body() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Checkout',
            style: titleTextStyle.copyWith(color: darkSeaGreenColor),
          ),
          const SizedBox(height: 20),
          CheckoutContainer.deliverLocation(),
          const SizedBox(height: 20),
          const CheckoutCard(),
          const SizedBox(height: 20),
          CheckoutContainer.priceSummary(),
          const SizedBox(height: 20),
          CheckoutContainer.paymentMethod(),
        ],
      ),
    );
  }

  Stack _btnPlaceOrder() {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 150,
          decoration: BoxDecoration(
            color: lightSeaGreenColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(100),
              topRight: Radius.circular(100),
            ),
          ),
        ),
        Positioned(
          top: 50,
          left: 30,
          child: CustomElevatedBtn(title: 'Place Order', onPressed: () {}),
        ),
      ],
    );
  }
}
