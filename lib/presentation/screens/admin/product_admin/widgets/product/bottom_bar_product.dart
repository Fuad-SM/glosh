part of '../../../../screen.dart';

class BottomBarProduct extends StatelessWidget {
  const BottomBarProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ProductViewController>();
    return Container(
      width: Get.width,
      height: Get.height * 0.09,
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
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 23),
        child: Row(
          children: [
            Expanded(
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '8',
                      style: headerTxtStyle,
                    ),
                    TextSpan(
                      text: ' Products found',
                      style: regularTextStyle.copyWith(
                        color: greyColor,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 2.3,
              height: MediaQuery.of(context).size.height * 0.068,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: darkSeaGreenColor,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Obx(
                  () => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        controller.select == true ? 'Remove' : 'Add Product',
                        style: headerTxtStyle.copyWith(
                            fontSize: 14,
                            color: whiteColor,
                            fontWeight: FontWeight.w500),
                      ),
                      Icon(
                        controller.select == true ? Icons.remove : Icons.add,
                        size: 20,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
