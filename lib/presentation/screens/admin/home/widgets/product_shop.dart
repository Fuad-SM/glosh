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
                ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  primary: false,
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) => SizedBox(
                    width: 15,
                  ),
                  itemCount: 2,
                  itemBuilder: (context, index) => ProductCardAdmin(),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
