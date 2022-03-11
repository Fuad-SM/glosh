part of '../../screen.dart';

class CartCard extends StatelessWidget {
  const CartCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimationLimiter(
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        primary: false,
        itemCount: product.length,
        itemBuilder: (context, index) {
          final CountCartController controller =
              Get.put(CountCartController(), tag: '$index');
          final Product itemProduct = product[index];
          return AnimationConfiguration.staggeredList(
            position: index,
            duration: const Duration(milliseconds: 375),
            child: SlideAnimation(
              verticalOffset: -30,
              child: FadeInAnimation(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Card(
                    color: whiteColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        children: [
                          SizedBox(
                            height: 100,
                            width: 100,
                            child: ImageView(
                              urlImage: 'urlImage',
                              width: 100,
                              height: 100,
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(itemProduct.title,
                                              style: headerTxtStyle),
                                          Text(
                                            itemProduct.cart,
                                            style: regularTextStyle.copyWith(
                                                color: greyColor, fontSize: 14),
                                          ),
                                          Text(
                                            r'$xxx',
                                            style: regularTextStyle.copyWith(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              color: darkSeaGreenColor,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    CustomCheckBox(tag: '$index'),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        border: Border.all(
                                          color: lightGreyColor,
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          IconButton(
                                            visualDensity:
                                                VisualDensity.compact,
                                            splashRadius: 20,
                                            onPressed: () =>
                                                controller.decrement(),
                                            icon: Icon(
                                              Icons.remove,
                                              size: 20,
                                              color: blackColor,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Obx(
                                            () => Text(
                                              '${controller.count}',
                                              style: regularTextStyle,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          IconButton(
                                            visualDensity:
                                                VisualDensity.compact,
                                            splashRadius: 20,
                                            onPressed: () =>
                                                controller.increment(),
                                            icon: Icon(
                                              Icons.add,
                                              size: 20,
                                              color: blackColor,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
