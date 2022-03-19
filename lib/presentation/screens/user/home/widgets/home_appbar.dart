part of '../../../screen.dart';

class HomeAppBar extends StatefulWidget implements PreferredSizeWidget {
  HomeAppBar({Key? key})
      : preferredSize = Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  final Size preferredSize;

  @override
  _HomeAppBarState createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  final controller = Get.find<NavbarController>();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      actions: [
        InkWell(
          onTap: () => controller.pageController.jumpToPage(2),
          child: Icon(Iconsax.heart),
        ),
        SizedBox(width: 15),
        InkWell(
          onTap: () => Get.toNamed(GetXRoute.checkoutRouteName),
          child: Icon(Iconsax.shopping_cart),
        ),
        SizedBox(width: 15),
      ],
      backgroundColor: tealColor,
      title: SizedBox(
        height: 40,
        child: GestureDetector(
          onTap: () async {
            var email = await PreferencesHelper().getEmail();
            var password = await PreferencesHelper().getPassword();
            print('Email = $email dan password = $password');
            // print('Password = ${pref.getPassword()}');
          },
          child: TextField(
            enabled: false,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.search),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
                  color: tealColor,
                  width: 0,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
