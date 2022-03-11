part of '../screen.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'My Cart',
          style: regularTextStyle.copyWith(
            color: whiteColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        backgroundColor: tealColor,
      ),
      body: BodyCarts(),
    );
  }
}

class BodyCarts extends StatelessWidget {
  const BodyCarts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: lightGreenColor,
          child: StaggeredAnimation(
            verticalOffset: -20,
            children: [
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Select All',
                      style: regularTextStyle.copyWith(color: Colors.black54),
                    ),
                    CustomCheckBox(tag: 'all')
                  ],
                ),
              ),
              const Divider(indent: 25, endIndent: 25, thickness: 0.5),
            ],
          ),
        ),
        Expanded(
          child: Container(
            width: Get.width,
            color: lightGreenColor,
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: CartCard(),
            ),
          ),
        ),
        Container(
          width: Get.width,
          height: Get.height * 0.085,
          decoration: BoxDecoration(
            color: whiteColor,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 1,
                offset: Offset(0, 2),
              )
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Qty ',
                            style: regularTextStyle.copyWith(color: greyColor),
                          ),
                          TextSpan(
                            text: '${product.length}',
                            style: headerTxtStyle,
                          )
                        ],
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Total ',
                            style: regularTextStyle.copyWith(color: greyColor),
                          ),
                          TextSpan(
                            text: '\$5.99',
                            style: headerTxtStyle,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 3,
                  height: MediaQuery.of(context).size.height * 0.06,
                  child: ElevatedButton(
                    onPressed: () => Get.toNamed(RouteName.checkoutRoute),
                    style: ElevatedButton.styleFrom(
                      primary: darkSeaGreenColor,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Checkout',
                          style: regularTextStyle.copyWith(
                              color: whiteColor, fontWeight: FontWeight.w500),
                        ),
                        Icon(
                          Iconsax.arrow_right_1,
                          size: 20,
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

class BodyCart extends StatelessWidget {
  const BodyCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                Lottie.network(
                  'https://assets3.lottiefiles.com/private_files/lf30_oqpbtola.json',
                  width: MediaQuery.of(context).size.width - 40,
                  height: MediaQuery.of(context).size.height / 2.5,
                ),
                Center(
                  child: Text(
                    'Your Cart is Empty',
                    style: regularTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Center(
                  child: Text(
                    'Looks like you haven\'t added\nanything to your cart yet',
                    textAlign: TextAlign.center,
                    style: regularTextStyle.copyWith(color: greyColor),
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.5,
                  child: CustomElevatedBtn(
                    onPressed: () => Get.toNamed(RouteName.navbarRoute),
                    title: 'Add Books To Cart',
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
