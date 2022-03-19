part of '../../screen.dart';

class HomeAdminScreen extends StatelessWidget {
  const HomeAdminScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGreenColor,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'My Shop',
          style: regularTextStyle.copyWith(
              color: whiteColor, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        backgroundColor: tealColor,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 30),
            child: StaggeredAnimation(
              verticalOffset: -50,
              children: [
                _custContainer(IdentityShop()),
                SizedBox(height: 20),
                _custContainer(PurchaseHistory()),
                SizedBox(height: 20),
                _custContainer(ProductShop()),
                SizedBox(height: 20),
                BuyerShop()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _custContainer(child) {
    return Container(
        width: Get.width,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: whiteColor,
        ),
        child: child);
  }
}
