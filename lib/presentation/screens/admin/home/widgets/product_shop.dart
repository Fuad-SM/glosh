part of '../../../screen.dart';

class ProductShop extends StatelessWidget {
  const ProductShop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Your Product',
              style: header2TxtStyle,
            ),
            InkWell(
              onTap: () => Get.toNamed(GetXRoute.productAdminRouteName),
              child: Text(
                'See all',
                style: regularTextStyle.copyWith(
                  color: lightSeaGreenColor,
                  fontSize: 13,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * 0.33,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Card(
                  color: darkSeaGreenColor,
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    child: SizedBox(
                      width: Get.width * 0.34,
                      height: Get.height * 0.29,
                      child: Column(
                        children: [
                          SizedBox(height: 40),
                          Text(
                            'Add Product',
                            style: header2TxtStyle.copyWith(color: whiteColor),
                          ),
                          SizedBox(height: 40),
                          SizedBox(
                            height: 55,
                            width: 74,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.all(2),
                                primary: lightGreenColor,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100),
                                ),
                              ),
                              onPressed: () {},
                              child: Icon(
                                Icons.add,
                                size: 35,
                                color: darkSeaGreenColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                GetBuilder<ProductAdminController>(
                  builder: (controller) {
                    if (controller.state == ResultState.Loading) {
                      return Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ResultStateAlert.loading(context),
                          ],
                        ),
                      );
                    } else if (controller.state == ResultState.HasData) {
                      return ListView.separated(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        primary: false,
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) => SizedBox(
                          width: 15,
                        ),
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          final product =
                              controller.productAdmin.products![index];
                          return Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: SizedBox(
                              width: Get.width * 0.4,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: ImageView(
                                          urlImage: product.thumbnail!,
                                          width: Get.width,
                                          height: Get.height * 0.16),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const SizedBox(
                                            height: 2,
                                          ),
                                          Expanded(
                                            child: SizedBox(
                                              child: Text(
                                                product.title!,
                                                style: CardStyle.titleTxtstyle,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  '\$  ${converToIndonesianCurrency(product.variants![0].prices![1].amount!)}',
                                                  style:
                                                      CardStyle.priceTxtstyle,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 38,
                                                width: 51,
                                                child: ElevatedButton(
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    padding:
                                                        const EdgeInsets.all(2),
                                                    primary: darkSeaGreenColor,
                                                    elevation: 0,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              19),
                                                    ),
                                                  ),
                                                  onPressed: () {},
                                                  child: Icon(
                                                    Icons.delete_outline,
                                                    size: 20,
                                                    color: whiteColor,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    } else if (controller.state == ResultState.NoData) {
                      return Text(controller.message);
                    } else if (controller.state == ResultState.Error) {
                      return ResultStateAlert.error(controller.message);
                    } else {
                      return SizedBox();
                    }
                  },
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
