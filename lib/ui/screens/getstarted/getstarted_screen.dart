part of '../screen.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  State<GetStartedScreen> createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  List<String> _image = [
    'assets/images/getstart1.jpg',
    'assets/images/getstart2.jpg',
    'assets/images/getstart3.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            CarouselSlider(
              carouselController: _controller,
              options: CarouselOptions(
                  height: MediaQuery.of(context).size.height,
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  },
                  autoPlay: true),
              items: _image.map((image) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      child: Stack(
                        children: [
                          Image.asset(
                            image,
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            fit: BoxFit.cover,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: blackColor.withOpacity(0.2),
                            ),
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                          ),
                        ],
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Find Your\nFavorite Book',
                    style: titleGSTextStyle.copyWith(
                      color: whiteColor,
                    ),
                  ),
                  Text(
                    'All of your favorite\nbooks are already here',
                    style: regularTextStyle.copyWith(
                      color: lightGreyColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: _image.asMap().entries.map((entry) {
                            return Container(
                              width: _current == entry.key ? 25 : 10,
                              height: 6.0,
                              margin: EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 2.0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: _current == entry.key
                                      ? Colors.white.withOpacity(0.8)
                                      : Colors.white.withOpacity(0.2)),
                            );
                          }).toList(),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        width: MediaQuery.of(context).size.width / 2,
                        child: ElevatedButton(
                          onPressed: () =>
                              Get.offAndToNamed(RouteName.loginRoute),
                          style: ElevatedButton.styleFrom(
                            primary: whiteColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text(
                            'Get Started',
                            style: elevatedButtonTextStyle.copyWith(
                                color: darkSeaGreenColor),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
