part of '../widget.dart';

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

  final List<Navbar> _navbarItem = [
    Navbar(icon: Icon(Iconsax.home), text: 'Home'),
    Navbar(icon: Icon(Iconsax.shopping_bag), text: 'My Cart'),
    Navbar(icon: Icon(Iconsax.wallet), text: 'Deals'),
    Navbar(icon: Icon(Iconsax.shop), text: 'My Shop'),
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
        physics: ClampingScrollPhysics(),
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
        items: _navbarItem
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

class Navbar {
  Icon icon;
  String text;

  Navbar({required this.icon, required this.text});
}
