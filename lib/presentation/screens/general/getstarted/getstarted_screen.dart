part of '../../screen.dart';

class GetStartedScreen extends GetView<GetStartController> {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Obx(
          () => Stack(
            children: [
              CarouselSlider(
                carouselController: controller.carouselController,
                options: CarouselOptions(
                    height: MediaQuery.of(context).size.height,
                    viewportFraction: 1,
                    onPageChanged: (index, reason) {
                      controller.current = index;
                    },
                    autoPlay: true),
                items: controller.image.map((image) {
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
                child: StaggeredAnimation(
                  verticalOffset: -50,
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
                            children:
                                controller.image.asMap().entries.map((entry) {
                              return Container(
                                width:
                                    controller.current == entry.key ? 25 : 10,
                                height: 6.0,
                                margin: EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 2.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: controller.current == entry.key
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
                            onPressed: () => controller.saveStart(),
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
      ),
    );
  }
}
