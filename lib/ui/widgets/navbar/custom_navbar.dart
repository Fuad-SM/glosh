import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:glosh/common/themes/theme.dart';
import 'package:glosh/ui/screens/cart/cart_screen.dart';
import 'package:glosh/ui/screens/home/home_pages.dart';
import 'package:glosh/ui/screens/invalid_pages.dart';
import 'package:glosh/ui/screens/myshop/myshop_screen.dart';
import 'package:glosh/ui/widgets/navbar/model/model_navbar.dart';

class HomeBottomNavbar extends StatefulWidget {
  const HomeBottomNavbar({Key? key}) : super(key: key);

  @override
  _HomeBottomNavbarState createState() => _HomeBottomNavbarState();
}

class _HomeBottomNavbarState extends State<HomeBottomNavbar> {
  late PageController _pageController;
  int _selectedPage = 0;

  final List<Widget> _page = const [
    HomeScreen(),
    CartScreen(),
    InvalidScreen(),
    MyShopScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedPage = index;
      _pageController.jumpToPage(index);
    });
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        onPageChanged: (index) {
          setState(() {
            _selectedPage = index;
          });
        },
        controller: _pageController,
        children: _page,
      ),
      bottomNavigationBar: FlashyTabBar(
        selectedIndex: _selectedPage,
        showElevation: true,
        onItemSelected: (index) => _onItemTapped(index),
        items: navbar
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
    );
  }
}
