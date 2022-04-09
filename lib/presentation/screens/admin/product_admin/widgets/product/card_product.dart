part of '../../../../screen.dart';

class CardProduct extends StatelessWidget {
  const CardProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GetBuilder<ProductAdminController>(
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
            return SingleChildScrollView(
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                primary: false,
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 15,
                  childAspectRatio: MediaQuery.of(context).size.width /
                      (MediaQuery.of(context).size.height / 1.3),
                ),
                itemCount: controller.productAdmin.products?.length,
                itemBuilder: (context, index) {
                  final select = Get.find<ProductViewController>();
                  final product = controller.productAdmin.products![index];

                  return InkWell(
                    onLongPress: () {
                      select.select = !select.select;
                    },
                    onTap: () {},
                    child: Card(
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
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                            style: CardStyle.priceTxtstyle,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 38,
                                          width: 51,
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              padding: const EdgeInsets.all(2),
                                              primary: darkSeaGreenColor,
                                              elevation: 0,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(19),
                                              ),
                                            ),
                                            onPressed: () {},
                                            child: Obx(
                                              () => Icon(
                                                select.select == true
                                                    ? Icons.done
                                                    : Icons.delete_outline,
                                                size: 20,
                                                color: whiteColor,
                                              ),
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
                    ),
                  );
                },
              ),
            );
          } else if (controller.state == ResultState.NoData) {
            return Text(controller.message);
          } else if (controller.state == ResultState.Error) {
            return ResultStateAlert.error(controller.message);
          } else {
            return SizedBox();
          }
        },
      ),
    );
  }
}
