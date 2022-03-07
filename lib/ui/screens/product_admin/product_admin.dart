part of '../screen.dart';

class ProductAdmin extends GetView<ProductAdminController> {
  const ProductAdmin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Your Product',
          style: regularTextStyle.copyWith(
              color: whiteColor, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        backgroundColor: tealColor,
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(20, 15, 20, 5),
            alignment: Alignment.center,
            width: Get.width,
            height: Get.height * 0.13,
            child: Column(
              children: [
                TextField(
                  enabled: false,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    hintText: 'Search',
                    hintStyle: GoogleFonts.poppins(
                      fontSize: 13,
                      color: const Color(0xffA6A1A1),
                    ),
                    filled: true,
                    fillColor: whiteColor,
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: BorderSide(
                        color: darkSeaGreenColor,
                        width: 1,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Obx(
                  () => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: controller.pageWidget.asMap().entries.map(
                      (index) {
                        return InkWell(
                          onTap: () => controller.onChoiceTapped(index.key),
                          child: Container(
                            width: 100,
                            height: 30,
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                    color:
                                        controller.selectedChoice == index.key
                                            ? darkSeaGreenColor
                                            : Colors.transparent,
                                    width: 2),
                              ),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              index.key == 0 ? 'Product' : 'Category',
                              style: controller.selectedChoice == index.key
                                  ? regularTextStyle.copyWith(
                                      color: darkSeaGreenColor,
                                      fontWeight: FontWeight.w600)
                                  : regularTextStyle.copyWith(color: greyColor),
                            ),
                          ),
                        );
                      },
                    ).toList(),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SizedBox(
              width: Get.width,
              child: PageView(
                physics: ClampingScrollPhysics(),
                onPageChanged: (int page) {
                  controller.selectedChoice = page;
                },
                scrollDirection: Axis.horizontal,
                controller: controller.pageController,
                children: controller.pageWidget,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
