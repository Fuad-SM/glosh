part of '../widget.dart';

class HomeBottomNavbar extends GetView<NavbarController> {
  const HomeBottomNavbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: PageView(
          physics: ClampingScrollPhysics(),
          onPageChanged: (index) {
            controller.selectedPage = index;
          },
          controller: controller.pageController,
          children: controller.page,
        ),
        bottomNavigationBar: FlashyTabBar(
          selectedIndex: controller.selectedPage,
          showElevation: true,
          onItemSelected: (index) => controller.onItemTapped(index),
          items: controller.navbarItem
              .map(
                (data) => FlashyTabBarItem(
                  activeColor: lightSeaGreenColor,
                  inactiveColor: greyColor,
                  icon: data.icon,
                  title: Text(data.text),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
