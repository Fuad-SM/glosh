part of '../../screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGreenColor,
      appBar: HomeAppBar(),
      body: _body(context),
    );
  }

  Widget _body(BuildContext context) {
    final controller = Get.find<ProductAdminController>();
    return SingleChildScrollView(
      child: Stack(
        children: [
          Container(
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height / 2.4),
            color: lightSeaGreenColor,
            height: 120,
            width: double.infinity,
            padding: const EdgeInsets.only(left: 20, top: 5),
            child: Text(
              'Special Price\nToday',
              style: titleTextStyle.copyWith(color: whiteColor),
            ),
          ),
          Column(
            children: [
              DeliverCard(),
              PromoCard(),
              SizedBox(height: 10),
              MenuCard(),
              SizedBox(height: 85),
              Padding(
                padding: EdgeInsets.only(left: 23, right: 23, bottom: 30),
                child: Obx(
                  () {
                    if (controller.state == ResultState.Loading) {
                      return Column(
                        children: [
                          SizedBox(height: Get.height * 0.3),
                          ResultStateAlert.loading(context),
                        ],
                      );
                    } else if (controller.state == ResultState.HasData) {
                      return ProductCardUser();
                    } else if (controller.state == ResultState.NoData) {
                      return Text(controller.message);
                    } else if (controller.state == ResultState.Error) {
                      return ResultStateAlert.error(controller.message);
                    } else {
                      return SizedBox();
                    }
                  },
                ),
              ),
              // Padding(
              //   padding: EdgeInsets.only(left: 23, right: 23, bottom: 30),
              //   child: GetBuilder<ProductAdminController>(
              //     builder: (controller) {
              //       if (controller.state == ResultState.Loading) {
              //         return Column(
              //           children: [
              //             SizedBox(height: Get.height * 0.3),
              //             ResultStateAlert.loading(context),
              //           ],
              //         );
              //       } else if (controller.state == ResultState.HasData) {
              //         return ProductCardUser();
              //       } else if (controller.state == ResultState.NoData) {
              //         return Text(controller.message);
              //       } else if (controller.state == ResultState.Error) {
              //         return ResultStateAlert.error(controller.message);
              //       } else {
              //         return SizedBox();
              //       }
              //     },
              //   ),
              // ),
            ],
          ),
        ],
      ),
    );
  }
}
