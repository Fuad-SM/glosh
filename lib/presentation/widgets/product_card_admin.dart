part of 'component.dart';

class ProductCardAdmin extends GetView<ProductAdminController> {
  const ProductCardAdmin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 10,
        ),
        child: SizedBox(
          width: Get.width * 0.33,
          height: Get.height * 0.29,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: Get.width,
                height: Get.height * 0.15,
                child: ImageView(
                  urlImage: 'urlImage',
                  width: Get.width,
                  height: Get.height * 0.15,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                'Product Title',
                style: CardStyle.titleTxtstyle,
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                'Product Desc',
                style: CardStyle.categoryTxtstyle,
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                'stok: ?',
                style: CardStyle.categoryTxtstyle,
              ),
              const SizedBox(
                height: 2,
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      r'$xxx',
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
                          borderRadius: BorderRadius.circular(19),
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
            ],
          ),
        ),
      ),
    );
  }
}
