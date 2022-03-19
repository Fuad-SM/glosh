part of '../../../screen.dart';

class BottomBarDetail extends StatelessWidget {
  const BottomBarDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<NavbarController>();

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
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.068,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  primary: darkSeaGreenColor,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () async {
                  Get.back();
                  Get.back();
                  controller.pageController.jumpToPage(1);
                },
                child: Icon(Iconsax.shopping_bag),
              ),
            ),
            SizedBox(
              width: 24,
            ),
            Expanded(
              child: SizedBox(
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add,
                        size: 20,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Add To Cart',
                        style: headerTxtStyle.copyWith(
                            fontSize: 14,
                            color: whiteColor,
                            fontWeight: FontWeight.w500),
                      ),
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
