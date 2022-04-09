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
        actions: [
          PopupMenuButton(
            offset: const Offset(-10, 50),
            icon: Icon(
              Icons.menu,
              color: whiteColor,
            ),
            color: whiteColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  child: SizedBox(
                    width: Get.width * 0.2,
                    child: TextButton(
                      onPressed: () async {
                        PreferencesHelper().deleteUser();
                        Get.offAllNamed(GetXRoute.loginRouteName);
                      },
                      child: Text('Logout'),
                    ),
                  ),
                ),
              ];
            },
          ),
        ],
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
