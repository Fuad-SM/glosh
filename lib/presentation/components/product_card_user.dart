part of 'component.dart';

class ProductCardUser extends GetView<ProductAdminController> {
  const ProductCardUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimationLimiter(
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        primary: false,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 15,
          childAspectRatio: MediaQuery.of(context).size.width /
              (MediaQuery.of(context).size.height / 1.3),
        ),
        itemCount: controller.productAdmin.products?.length,
        itemBuilder: (context, index) {
          final product = controller.productAdmin.products?[index];
          final images = product?.images?[index];
          return AnimationConfiguration.staggeredGrid(
            position: index,
            columnCount: 2,
            duration: const Duration(milliseconds: 375),
            child: FlipAnimation(
              child: FadeInAnimation(
                child: GestureDetector(
                  onTap: () {
                    // Get.toNamed(RouteName.detailRoute, arguments: book);
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: ImageView(
                                urlImage: images!.url!,
                                width: Get.width,
                                height: Get.height * 0.15),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 2,
                                ),
                                Expanded(
                                  child: SizedBox(
                                    child: Text(
                                      "book.title",
                                      style: CardStyle.titleTxtstyle,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 6,
                                    vertical: 4,
                                  ),
                                  decoration: BoxDecoration(
                                    color: darkSeaGreenColor,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Text(
                                    "book.bookCategory!.name",
                                    style: CardStyle.categoryTxtstyle,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'IDR ',
                                  style: CardStyle.priceTxtstyle,
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
              ),
            ),
          );
        },
      ),
    );
  }
}
