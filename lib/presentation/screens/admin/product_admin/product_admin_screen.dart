part of '../../screen.dart';

class ProductAdminScreen extends GetView<ProductAdminUIController> {
  const ProductAdminScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> pageWidget = [
      Column(
        children: [
          CardProduct(),
          BottomBarProduct(),
        ],
      ),
      Obx(
        () {
          if (controller.collection.state == ResultState.Loading) {
            return ResultStateAlert.loading(context);
          } else if (controller.collection.state == ResultState.HasData) {
            return Column(
              children: [
                CardCategory(controller: controller.collection),
                BottomBarCategory(controller: controller.collection),
              ],
            );
          } else if (controller.collection.state == ResultState.NoData) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  Lottie.network(
                    'https://assets4.lottiefiles.com/packages/lf20_oga1x3jk.json',
                    width: Get.width - 40,
                    height: Get.height / 2.5,
                  ),
                  Center(
                    child: Text(
                      'Your Collection is Empty',
                      style: regularTextStyle.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  SizedBox(
                    width: Get.width / 1.5,
                    child: CustomElevatedBtn(
                      onPressed: () {
                        showModalBottomSheet(
                          isScrollControlled: true,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              topRight: Radius.circular(12),
                            ),
                          ),
                          context: context,
                          builder: (context) {
                            return SingleChildScrollView(
                              child: Padding(
                                padding: EdgeInsets.only(
                                  bottom:
                                      MediaQuery.of(context).viewInsets.bottom,
                                  right: 35,
                                  left: 35,
                                ),
                                child: CategoryAddModal(),
                              ),
                            );
                          },
                        );
                      },
                      title: 'Add Collection',
                    ),
                  )
                ],
              ),
            );
          } else if (controller.collection.state == ResultState.Error) {
            return Text(controller.collection.message);
          } else {
            return SizedBox();
          }
        },
      ),
    ];

    return Scaffold(
      backgroundColor: lightGreenColor,
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
            child: StaggeredAnimation(
              verticalOffset: -20,
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
                    children: pageWidget.asMap().entries.map(
                      (index) {
                        return GestureDetector(
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
                              index.key == 0 ? 'Product' : 'Collection',
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
                children: pageWidget,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
