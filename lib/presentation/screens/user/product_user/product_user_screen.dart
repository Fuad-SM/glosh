part of '../../screen.dart';

class ProductUserScreen extends StatelessWidget {
  const ProductUserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: tealColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Fresh Produce',
          style: regularTextStyle.copyWith(
              color: whiteColor, fontWeight: FontWeight.w600),
        ),
      ),
      backgroundColor: lightGreenColor,
      body: _body(context),
    );
  }

  Widget _body(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
        child: Column(
          children: [
            GetBuilder<ProductAdminController>(
              builder: (controller) {
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
          ],
        ),
      ),
    );
  }
}
